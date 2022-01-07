
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {int flags; size_t name_len; int * text; } ;
struct localvar {int flags; struct localvar* next; struct var* vp; int * text; } ;


 int INTOFF ;
 int INTON ;
 int VNOLOCAL ;
 int VSTRFIXED ;
 int VTEXTFIXED ;
 int VUNSET ;
 void* ckmalloc (int) ;
 struct var* find_var (char*,struct var***,int *) ;
 struct localvar* localvars ;
 int memcpy (int *,int ,int) ;
 int optval ;
 int savestr (char*) ;
 int setvar (char*,int *,int) ;
 int setvareq (int ,int) ;
 scalar_t__ strchr (char*,char) ;

void
mklocal(char *name)
{
 struct localvar *lvp;
 struct var **vpp;
 struct var *vp;

 INTOFF;
 lvp = ckmalloc(sizeof (struct localvar));
 if (name[0] == '-' && name[1] == '\0') {
  lvp->text = ckmalloc(sizeof optval);
  memcpy(lvp->text, optval, sizeof optval);
  vp = ((void*)0);
 } else {
  vp = find_var(name, &vpp, ((void*)0));
  if (vp == ((void*)0)) {
   if (strchr(name, '='))
    setvareq(savestr(name), VSTRFIXED | VNOLOCAL);
   else
    setvar(name, ((void*)0), VSTRFIXED | VNOLOCAL);
   vp = *vpp;
   lvp->text = ((void*)0);
   lvp->flags = VUNSET;
  } else {
   lvp->text = vp->text;
   lvp->flags = vp->flags;
   vp->flags |= VSTRFIXED|VTEXTFIXED;
   if (name[vp->name_len] == '=')
    setvareq(savestr(name), VNOLOCAL);
  }
 }
 lvp->vp = vp;
 lvp->next = localvars;
 localvars = lvp;
 INTON;
}
