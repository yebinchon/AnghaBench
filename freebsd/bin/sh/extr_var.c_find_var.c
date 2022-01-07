
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {int name_len; int text; struct var* next; } ;


 unsigned int VTABSIZE ;
 scalar_t__ memcmp (int ,char const*,int) ;
 struct var** vartab ;

__attribute__((used)) static struct var *
find_var(const char *name, struct var ***vppp, int *lenp)
{
 unsigned int hashval;
 int len;
 struct var *vp, **vpp;
 const char *p = name;

 hashval = 0;
 while (*p && *p != '=')
  hashval = 2 * hashval + (unsigned char)*p++;
 len = p - name;

 if (lenp)
  *lenp = len;
 vpp = &vartab[hashval % VTABSIZE];
 if (vppp)
  *vppp = vpp;

 for (vp = *vpp ; vp ; vpp = &vp->next, vp = *vpp) {
  if (vp->name_len != len)
   continue;
  if (memcmp(vp->text, name, len) != 0)
   continue;
  if (vppp)
   *vppp = vpp;
  return vp;
 }
 return ((void*)0);
}
