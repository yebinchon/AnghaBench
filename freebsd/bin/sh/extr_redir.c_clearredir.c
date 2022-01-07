
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirtab {scalar_t__* renamed; struct redirtab* next; } ;


 scalar_t__ EMPTY ;
 int close (scalar_t__) ;
 struct redirtab* redirlist ;

void
clearredir(void)
{
 struct redirtab *rp;
 int i;

 for (rp = redirlist ; rp ; rp = rp->next) {
  for (i = 0 ; i < 10 ; i++) {
   if (rp->renamed[i] >= 0) {
    close(rp->renamed[i]);
   }
   rp->renamed[i] = EMPTY;
  }
 }
}
