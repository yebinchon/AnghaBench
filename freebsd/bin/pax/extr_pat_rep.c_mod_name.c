
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; char* ln_name; scalar_t__ type; int ln_nlen; int nlen; } ;
typedef TYPE_1__ ARCHD ;


 scalar_t__ PAX_HLK ;
 scalar_t__ PAX_HRG ;
 scalar_t__ PAX_SLK ;
 scalar_t__ iflag ;
 int memmove (char*,char*,int ) ;
 int paxwarn (int ,char*) ;
 int rep_name (char*,int *,int) ;
 int * rephead ;
 int rmleadslash ;
 int strlen (char*) ;
 int sub_name (char*,int *,int) ;
 int tty_rename (TYPE_1__*) ;

int
mod_name(ARCHD *arcn)
{
 int res = 0;





 if (rmleadslash && arcn->name[0] == '/') {
  if (arcn->name[1] == '\0') {
   arcn->name[0] = '.';
  } else {
   (void)memmove(arcn->name, &arcn->name[1],
       strlen(arcn->name));
   arcn->nlen--;
  }
  if (rmleadslash < 2) {
   rmleadslash = 2;
   paxwarn(0, "Removing leading / from absolute path names in the archive");
  }
 }
 if (rmleadslash && arcn->ln_name[0] == '/' &&
     (arcn->type == PAX_HLK || arcn->type == PAX_HRG)) {
  if (arcn->ln_name[1] == '\0') {
   arcn->ln_name[0] = '.';
  } else {
   (void)memmove(arcn->ln_name, &arcn->ln_name[1],
       strlen(arcn->ln_name));
   arcn->ln_nlen--;
  }
  if (rmleadslash < 2) {
   rmleadslash = 2;
   paxwarn(0, "Removing leading / from absolute path names in the archive");
  }
 }
 if (rephead != ((void*)0)) {




  if ((res = rep_name(arcn->name, &(arcn->nlen), 1)) != 0)
   return(res);

  if (((arcn->type == PAX_SLK) || (arcn->type == PAX_HLK) ||
      (arcn->type == PAX_HRG)) &&
      ((res = rep_name(arcn->ln_name, &(arcn->ln_nlen), 0)) != 0))
   return(res);
 }

 if (iflag) {



  if ((res = tty_rename(arcn)) != 0)
   return(res);
  if ((arcn->type == PAX_SLK) || (arcn->type == PAX_HLK) ||
      (arcn->type == PAX_HRG))
   sub_name(arcn->ln_name, &(arcn->ln_nlen), sizeof(arcn->ln_name));
 }
 return(res);
}
