
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_context {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int security_filter_rule_match(u32 secid, u32 field, u32 op,
          void *lsmrule,
          struct audit_context *actx)
{
 return -EINVAL;
}
