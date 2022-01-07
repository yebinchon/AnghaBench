
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; scalar_t__ st_size; } ;
struct stackmark {int dummy; } ;


 scalar_t__* mailtime ;
 int mailval () ;
 scalar_t__ mpathset () ;
 int mpathval () ;
 int nmboxes ;
 int out2c (char) ;
 int out2str (char*) ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 char* strchrnul (char*,char) ;
 char* stsavestr (int ) ;

void
chkmail(int silent)
{
 int i;
 char *mpath;
 char *p;
 char *msg;
 struct stackmark smark;
 struct stat statb;

 if (silent)
  nmboxes = 10;
 if (nmboxes == 0)
  return;
 setstackmark(&smark);
 mpath = stsavestr(mpathset()? mpathval() : mailval());
 for (i = 0 ; i < nmboxes ; i++) {
  p = mpath;
  if (*p == '\0')
   break;
  mpath = strchrnul(mpath, ':');
  if (*mpath != '\0') {
   *mpath++ = '\0';
   if (p == mpath - 1)
    continue;
  }
  msg = strchr(p, '%');
  if (msg != ((void*)0))
   *msg++ = '\0';
  if (stat(p, &statb) < 0)
   statb.st_size = 0;
  if (statb.st_size > mailtime[i] && ! silent) {
   out2str(msg? msg : "you have mail");
   out2c('\n');
  }
  mailtime[i] = statb.st_size;

 }
 nmboxes = i;
 popstackmark(&smark);
}
