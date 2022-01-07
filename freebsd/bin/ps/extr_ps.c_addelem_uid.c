
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
typedef scalar_t__ u_long ;
struct passwd {int pw_uid; } ;
struct TYPE_2__ {int * uids; } ;
struct listinfo {scalar_t__ count; scalar_t__ maxcount; TYPE_1__ l; int lname; } ;


 scalar_t__ MAXLOGNAME ;
 scalar_t__ UID_MAX ;
 scalar_t__ errno ;
 int expand_list (struct listinfo*) ;
 struct passwd* getpwnam (char const*) ;
 struct passwd* getpwuid (int ) ;
 int optfatal ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strtoul (char const*,char**,int) ;
 int xo_warnx (char*,int ,...) ;

__attribute__((used)) static int
addelem_uid(struct listinfo *inf, const char *elem)
{
 struct passwd *pwd;
 char *endp;
 u_long bigtemp;

 if (*elem == '\0' || strlen(elem) >= MAXLOGNAME) {
  if (*elem == '\0')
   xo_warnx("Invalid (zero-length) %s name", inf->lname);
  else
   xo_warnx("%s name too long: %s", inf->lname, elem);
  optfatal = 1;
  return (0);
 }

 pwd = getpwnam(elem);
 if (pwd == ((void*)0)) {
  errno = 0;
  bigtemp = strtoul(elem, &endp, 10);
  if (errno != 0 || *endp != '\0' || bigtemp > UID_MAX)
   xo_warnx("No %s named '%s'", inf->lname, elem);
  else {

   pwd = getpwuid((uid_t)bigtemp);
   if (pwd == ((void*)0))
    xo_warnx("No %s name or ID matches '%s'",
        inf->lname, elem);
  }
 }
 if (pwd == ((void*)0)) {





  optfatal = 1;
  return (0);
 }
 if (inf->count >= inf->maxcount)
  expand_list(inf);
 inf->l.uids[(inf->count)++] = pwd->pw_uid;
 return (1);
}
