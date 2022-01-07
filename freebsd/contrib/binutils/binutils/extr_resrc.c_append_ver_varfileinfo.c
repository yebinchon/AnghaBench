
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int unichar ;
typedef int rc_ver_varinfo ;
struct TYPE_6__ {int * var; int key; } ;
struct TYPE_7__ {TYPE_1__ var; } ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_ver_info ;


 int VERINFO_VAR ;
 scalar_t__ res_alloc (int) ;
 int unichar_dup (int const*) ;

rc_ver_info *
append_ver_varfileinfo (rc_ver_info *verinfo, const unichar *key,
   rc_ver_varinfo *var)
{
  rc_ver_info *vi, **pp;

  vi = (rc_ver_info *) res_alloc (sizeof *vi);
  vi->next = ((void*)0);
  vi->type = VERINFO_VAR;
  vi->u.var.key = unichar_dup (key);
  vi->u.var.var = var;

  for (pp = &verinfo; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = vi;

  return verinfo;
}
