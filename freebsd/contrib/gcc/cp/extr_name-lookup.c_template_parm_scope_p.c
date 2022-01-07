
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ innermost_scope_kind () ;
 scalar_t__ sk_template_parms ;

bool
template_parm_scope_p (void)
{
  return innermost_scope_kind () == sk_template_parms;
}
