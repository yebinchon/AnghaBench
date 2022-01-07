
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {int flags; int text; struct var* next; } ;


 int VEXPORT ;
 int VTABSIZE ;
 int VUNSET ;
 char** stalloc (int) ;
 struct var** vartab ;

char **
environment(void)
{
 int nenv;
 struct var **vpp;
 struct var *vp;
 char **env, **ep;

 nenv = 0;
 for (vpp = vartab ; vpp < vartab + VTABSIZE ; vpp++) {
  for (vp = *vpp ; vp ; vp = vp->next)
   if ((vp->flags & (VEXPORT|VUNSET)) == VEXPORT)
    nenv++;
 }
 ep = env = stalloc((nenv + 1) * sizeof *env);
 for (vpp = vartab ; vpp < vartab + VTABSIZE ; vpp++) {
  for (vp = *vpp ; vp ; vp = vp->next)
   if ((vp->flags & (VEXPORT|VUNSET)) == VEXPORT)
    *ep++ = vp->text;
 }
 *ep = ((void*)0);
 return env;
}
