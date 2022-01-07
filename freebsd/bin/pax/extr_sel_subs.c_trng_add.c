
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flgs; scalar_t__ low_time; scalar_t__ high_time; struct TYPE_5__* fow; } ;
typedef TYPE_1__ TIME_RNG ;


 int CMPCTME ;
 int CMPMTME ;
 int HASHIGH ;
 int HASLOW ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*,...) ;
 scalar_t__ str_sec (char*,scalar_t__*) ;
 char* strrchr (char*,char) ;
 scalar_t__ time (int *) ;
 TYPE_1__* trhead ;
 TYPE_1__* trtail ;

int
trng_add(char *str)
{
 TIME_RNG *pt;
 char *up_pt = ((void*)0);
 char *stpt;
 char *flgpt;
 int dot = 0;




 if ((str == ((void*)0)) || (*str == '\0')) {
  paxwarn(1, "Empty time range string");
  return(-1);
 }




 if ((flgpt = strrchr(str, '/')) != ((void*)0))
  *flgpt++ = '\0';

 for (stpt = str; *stpt != '\0'; ++stpt) {
  if ((*stpt >= '0') && (*stpt <= '9'))
   continue;
  if ((*stpt == ',') && (up_pt == ((void*)0))) {
   *stpt = '\0';
   up_pt = stpt + 1;
   dot = 0;
   continue;
  }




  if ((*stpt == '.') && (!dot)) {
   ++dot;
   continue;
  }
  paxwarn(1, "Improperly specified time range: %s", str);
  goto out;
 }




 if ((pt = (TIME_RNG *)malloc(sizeof(TIME_RNG))) == ((void*)0)) {
  paxwarn(1, "Unable to allocate memory for time range");
  return(-1);
 }





 if ((flgpt == ((void*)0)) || (*flgpt == '\0'))
  pt->flgs = CMPMTME;
 else {
  pt->flgs = 0;
  while (*flgpt != '\0') {
   switch(*flgpt) {
   case 'M':
   case 'm':
    pt->flgs |= CMPMTME;
    break;
   case 'C':
   case 'c':
    pt->flgs |= CMPCTME;
    break;
   default:
    paxwarn(1, "Bad option %c with time range %s",
        *flgpt, str);
    free(pt);
    goto out;
   }
   ++flgpt;
  }
 }




 pt->low_time = pt->high_time = time(((void*)0));
 if (*str != '\0') {



  if (str_sec(str, &(pt->low_time)) < 0) {
   paxwarn(1, "Illegal lower time range %s", str);
   free(pt);
   goto out;
  }
  pt->flgs |= HASLOW;
 }

 if ((up_pt != ((void*)0)) && (*up_pt != '\0')) {



  if (str_sec(up_pt, &(pt->high_time)) < 0) {
   paxwarn(1, "Illegal upper time range %s", up_pt);
   free(pt);
   goto out;
  }
  pt->flgs |= HASHIGH;




  if (pt->flgs & HASLOW) {
   if (pt->low_time > pt->high_time) {
    paxwarn(1, "Upper %s and lower %s time overlap",
     up_pt, str);
    free(pt);
    return(-1);
   }
  }
 }

 pt->fow = ((void*)0);
 if (trhead == ((void*)0)) {
  trtail = trhead = pt;
  return(0);
 }
 trtail->fow = pt;
 trtail = pt;
 return(0);

    out:
 paxwarn(1, "Time range format is: [yy[mm[dd[hh]]]]mm[.ss][/[c][m]]");
 return(-1);
}
