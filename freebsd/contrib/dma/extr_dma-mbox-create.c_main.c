
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
typedef int cap_rights_t ;


 int CAP_CREATE ;
 int CAP_FCHMOD ;
 int CAP_FCHOWN ;
 int CAP_LOOKUP ;
 int CAP_READ ;
 char const* DMA_GROUP ;
 scalar_t__ ENOSYS ;
 int EX_CONFIG ;
 int EX_DATAERR ;
 int EX_NOINPUT ;
 int EX_NOPERM ;
 int EX_NOUSER ;
 int EX_OSERR ;
 int EX_USAGE ;
 int LOG_MAIL ;
 int LOG_NDELAY ;
 int LOG_NOTICE ;
 int O_CREAT ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 char const* _PATH_MAILDIR ;
 int cap_rights_init (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ cap_rights_limit (int,int *) ;
 int caph_cache_catpages () ;
 int caph_cache_tzdata () ;
 scalar_t__ caph_enter () ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fchmod (int,int) ;
 scalar_t__ fchown (int,int ,scalar_t__) ;
 scalar_t__ getegid () ;
 struct group* getgrnam (char const*) ;
 struct passwd* getpwnam (char const*) ;
 int logfail (int ,char*,...) ;
 int open (char const*,int) ;
 int openat (int,char const*,int,int) ;
 int openlog (char*,int ,int ) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ strchr (char const*,char) ;
 int syslog (int ,char*,char const*) ;

int
main(int argc, char **argv)
{



 const char *user;
 struct passwd *pw;
 struct group *gr;
 uid_t user_uid;
 gid_t mail_gid;
 int f, maildirfd;




 openlog("dma-mbox-create", LOG_NDELAY, LOG_MAIL);

 errno = 0;
 gr = getgrnam(DMA_GROUP);
 if (!gr)
  logfail(EX_CONFIG, "cannot find dma group `%s'", DMA_GROUP);

 mail_gid = gr->gr_gid;

 if (setgid(mail_gid) != 0)
  logfail(EX_NOPERM, "cannot set gid to %d (%s)", mail_gid, DMA_GROUP);
 if (getegid() != mail_gid)
  logfail(EX_NOPERM, "cannot set gid to %d (%s), still at %d", mail_gid, DMA_GROUP, getegid());




 if (argc != 2) {
  errno = 0;
  logfail(EX_USAGE, "no arguments");
 }
 user = argv[1];

 syslog(LOG_NOTICE, "creating mbox for `%s'", user);


 if (strchr(user, '/')) {
  errno = 0;
  logfail(EX_DATAERR, "path separator in username `%s'", user);
  exit(1);
 }


 errno = 0;
 pw = getpwnam(user);
 if (!pw)
  logfail(EX_NOUSER, "cannot find user `%s'", user);

 maildirfd = open(_PATH_MAILDIR, O_RDONLY);
 if (maildirfd < 0)
  logfail(EX_NOINPUT, "cannot open maildir %s", _PATH_MAILDIR);





 caph_cache_catpages();




 caph_cache_tzdata();
 user_uid = pw->pw_uid;

 f = openat(maildirfd, user, O_RDONLY|O_CREAT|O_NOFOLLOW, 0600);
 if (f < 0)
  logfail(EX_NOINPUT, "cannot open mbox `%s'", user);

 if (fchown(f, user_uid, mail_gid))
  logfail(EX_OSERR, "cannot change owner of mbox `%s'", user);

 if (fchmod(f, 0620))
  logfail(EX_OSERR, "cannot change permissions of mbox `%s'",
      user);



 syslog(LOG_NOTICE, "successfully created mbox for `%s'", user);

 return (0);
}
