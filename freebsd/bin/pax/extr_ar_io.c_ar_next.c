
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int buf ;


 scalar_t__ APPND ;
 scalar_t__ ARCHIVE ;
 scalar_t__ ISPIPE ;
 scalar_t__ ISREG ;
 scalar_t__ ISTAPE ;
 char* NM_TAR ;
 scalar_t__ Oflag ;
 int PAXPATHLEN ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 scalar_t__ act ;
 int ar_close () ;
 scalar_t__ ar_open (char*) ;
 char* arcname ;
 char* argv0 ;
 scalar_t__ artyp ;
 char* arvol ;
 int done ;
 int errno ;
 int free (char*) ;
 int lstrval ;
 int paxwarn (int ,char*) ;
 int s_mask ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 char* stdn ;
 char* stdo ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int syswarn (int ,int ,char*) ;
 int tty_prnt (char*,...) ;
 scalar_t__ tty_read (char*,int) ;
 scalar_t__ vfpart ;
 int wr_trail ;

int
ar_next(void)
{
 static char *arcbuf;
 char buf[PAXPATHLEN+2];
 sigset_t o_mask;






 if (sigprocmask(SIG_BLOCK, &s_mask, &o_mask) < 0)
  syswarn(0, errno, "Unable to set signal mask");
 ar_close();
 if (sigprocmask(SIG_SETMASK, &o_mask, ((void*)0)) < 0)
  syswarn(0, errno, "Unable to restore signal mask");

 if (done || !wr_trail || Oflag || strcmp(NM_TAR, argv0) == 0)
  return(-1);

 tty_prnt("\nATTENTION! %s archive volume change required.\n", argv0);





 if (strcmp(arcname, stdo) && strcmp(arcname, stdn) && (artyp != ISREG)
     && (artyp != ISPIPE)) {
  if (artyp == ISTAPE) {
   tty_prnt("%s ready for archive tape volume: %d\n",
    arcname, arvol);
   tty_prnt("Load the NEXT TAPE on the tape drive");
  } else {
   tty_prnt("%s ready for archive volume: %d\n",
    arcname, arvol);
   tty_prnt("Load the NEXT STORAGE MEDIA (if required)");
  }

  if ((act == ARCHIVE) || (act == APPND))
   tty_prnt(" and make sure it is WRITE ENABLED.\n");
  else
   tty_prnt("\n");

  for(;;) {
   tty_prnt("Type \"y\" to continue, \".\" to quit %s,",
    argv0);
   tty_prnt(" or \"s\" to switch to new device.\nIf you");
   tty_prnt(" cannot change storage media, type \"s\"\n");
   tty_prnt("Is the device ready and online? > ");

   if ((tty_read(buf,sizeof(buf))<0) || !strcmp(buf,".")){
    done = 1;
    lstrval = -1;
    tty_prnt("Quitting %s!\n", argv0);
    vfpart = 0;
    return(-1);
   }

   if ((buf[0] == '\0') || (buf[1] != '\0')) {
    tty_prnt("%s unknown command, try again\n",buf);
    continue;
   }

   switch (buf[0]) {
   case 'y':
   case 'Y':



    if (ar_open(arcname) >= 0)
     return(0);
    tty_prnt("Cannot re-open %s, try again\n",
     arcname);
    continue;
   case 's':
   case 'S':



    tty_prnt("Switching to a different archive\n");
    break;
   default:
    tty_prnt("%s unknown command, try again\n",buf);
    continue;
   }
   break;
  }
 } else
  tty_prnt("Ready for archive volume: %d\n", arvol);




 for (;;) {
  tty_prnt("Input archive name or \".\" to quit %s.\n", argv0);
  tty_prnt("Archive name > ");

  if ((tty_read(buf, sizeof(buf)) < 0) || !strcmp(buf, ".")) {
   done = 1;
   lstrval = -1;
   tty_prnt("Quitting %s!\n", argv0);
   vfpart = 0;
   return(-1);
  }
  if (buf[0] == '\0') {
   tty_prnt("Empty file name, try again\n");
   continue;
  }
  if (!strcmp(buf, "..")) {
   tty_prnt("Illegal file name: .. try again\n");
   continue;
  }
  if (strlen(buf) > PAXPATHLEN) {
   tty_prnt("File name too long, try again\n");
   continue;
  }




  if (ar_open(buf) >= 0) {
   free(arcbuf);
   if ((arcbuf = strdup(buf)) == ((void*)0)) {
    done = 1;
    lstrval = -1;
    paxwarn(0, "Cannot save archive name.");
    return(-1);
   }
   arcname = arcbuf;
   break;
  }
  tty_prnt("Cannot open %s, try again\n", buf);
  continue;
 }
 return(0);
}
