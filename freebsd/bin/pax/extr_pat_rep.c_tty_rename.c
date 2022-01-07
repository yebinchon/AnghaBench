
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmpname ;
struct TYPE_4__ {char* name; size_t nlen; } ;
typedef TYPE_1__ ARCHD ;


 int PAXPATHLEN ;
 int add_name (char*,size_t,char*) ;
 char* argv0 ;
 size_t l_strncpy (char*,char*,int) ;
 int ls_tty (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int tty_prnt (char*,...) ;
 scalar_t__ tty_read (char*,int) ;

__attribute__((used)) static int
tty_rename(ARCHD *arcn)
{
 char tmpname[PAXPATHLEN+2];
 int res;







 tty_prnt("\nATTENTION: %s interactive file rename operation.\n", argv0);

 for (;;) {
  ls_tty(arcn);
  tty_prnt("Input new name, or a \".\" to keep the old name, ");
  tty_prnt("or a \"return\" to skip this file.\n");
  tty_prnt("Input > ");
  if (tty_read(tmpname, sizeof(tmpname)) < 0)
   return(-1);
  if (strcmp(tmpname, "..") == 0) {
   tty_prnt("Try again, illegal file name: ..\n");
   continue;
  }
  if (strlen(tmpname) > PAXPATHLEN) {
   tty_prnt("Try again, file name too long\n");
   continue;
  }
  break;
 }




 if (tmpname[0] == '\0') {
  tty_prnt("Skipping file.\n");
  return(1);
 }
 if ((tmpname[0] == '.') && (tmpname[1] == '\0')) {
  tty_prnt("Processing continues, name unchanged.\n");
  return(0);
 }






 tty_prnt("Processing continues, name changed to: %s\n", tmpname);
 res = add_name(arcn->name, arcn->nlen, tmpname);
 arcn->nlen = l_strncpy(arcn->name, tmpname, sizeof(arcn->name) - 1);
 arcn->name[arcn->nlen] = '\0';
 if (res < 0)
  return(-1);
 return(0);
}
