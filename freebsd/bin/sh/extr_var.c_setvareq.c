
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {int flags; int name_len; char* text; int (* func ) (char*) ;struct var* next; } ;


 int INTOFF ;
 int INTON ;
 int LC_ALL ;
 int VEXPORT ;
 int VNOFUNC ;
 int VNOLOCAL ;
 int VNOSET ;
 int VREADONLY ;
 int VSTACK ;
 int VTEXTFIXED ;
 int VUNSET ;
 scalar_t__ aflag ;
 int change_env (char*,int) ;
 int chkmail (int) ;
 int ckfree (char*) ;
 struct var* ckmalloc (int) ;
 int error (char*,int,char*) ;
 struct var* find_var (char*,struct var***,int*) ;
 scalar_t__ forcelocal ;
 int iflag ;
 scalar_t__ localevar (char*) ;
 int mklocal (char*) ;
 int mpathset () ;
 int setlocale (int ,char*) ;
 int stub1 (char*) ;
 int updatecharset () ;
 struct var vmail ;
 struct var vmpath ;

void
setvareq(char *s, int flags)
{
 struct var *vp, **vpp;
 int nlen;

 if (aflag)
  flags |= VEXPORT;
 if (forcelocal && !(flags & (VNOSET | VNOLOCAL)))
  mklocal(s);
 vp = find_var(s, &vpp, &nlen);
 if (vp != ((void*)0)) {
  if (vp->flags & VREADONLY) {
   if ((flags & (VTEXTFIXED|VSTACK)) == 0)
    ckfree(s);
   error("%.*s: is read only", vp->name_len, vp->text);
  }
  if (flags & VNOSET) {
   if ((flags & (VTEXTFIXED|VSTACK)) == 0)
    ckfree(s);
   return;
  }
  INTOFF;

  if (vp->func && (flags & VNOFUNC) == 0)
   (*vp->func)(s + vp->name_len + 1);

  if ((vp->flags & (VTEXTFIXED|VSTACK)) == 0)
   ckfree(vp->text);

  vp->flags &= ~(VTEXTFIXED|VSTACK|VUNSET);
  vp->flags |= flags;
  vp->text = s;
  if ((vp == &vmpath || (vp == &vmail && ! mpathset())) &&
      iflag == 1)
   chkmail(1);
  if ((vp->flags & VEXPORT) && localevar(s)) {
   change_env(s, 1);
   (void) setlocale(LC_ALL, "");
   updatecharset();
  }
  INTON;
  return;
 }

 if (flags & VNOSET) {
  if ((flags & (VTEXTFIXED|VSTACK)) == 0)
   ckfree(s);
  return;
 }
 INTOFF;
 vp = ckmalloc(sizeof (*vp));
 vp->flags = flags;
 vp->text = s;
 vp->name_len = nlen;
 vp->next = *vpp;
 vp->func = ((void*)0);
 *vpp = vp;
 if ((vp->flags & VEXPORT) && localevar(s)) {
  change_env(s, 1);
  (void) setlocale(LC_ALL, "");
  updatecharset();
 }
 INTON;
}
