
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirtab {scalar_t__* renamed; scalar_t__ empty_redirs; struct redirtab* next; int fd0_redirected; } ;


 scalar_t__ EMPTY ;
 int INTOFF ;
 int INTON ;
 int ckfree (struct redirtab*) ;
 int close (int) ;
 int dup2 (scalar_t__,int) ;
 scalar_t__ empty_redirs ;
 int fd0_redirected ;
 struct redirtab* redirlist ;

void
popredir(void)
{
 struct redirtab *rp = redirlist;
 int i;

 INTOFF;
 if (empty_redirs > 0) {
  empty_redirs--;
  INTON;
  return;
 }
 for (i = 0 ; i < 10 ; i++) {
  if (rp->renamed[i] != EMPTY) {
   if (rp->renamed[i] >= 0) {
    dup2(rp->renamed[i], i);
    close(rp->renamed[i]);
   } else {
    close(i);
   }
  }
 }
 fd0_redirected = rp->fd0_redirected;
 empty_redirs = rp->empty_redirs;
 redirlist = rp->next;
 ckfree(rp);
 INTON;
}
