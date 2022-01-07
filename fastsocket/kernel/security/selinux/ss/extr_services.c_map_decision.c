
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct av_decision {int allowed; int auditallow; int auditdeny; } ;
struct TYPE_2__ {unsigned int num_perms; int* perms; } ;


 TYPE_1__* current_mapping ;
 size_t current_mapping_size ;

__attribute__((used)) static void map_decision(u16 tclass, struct av_decision *avd,
    int allow_unknown)
{
 if (tclass < current_mapping_size) {
  unsigned i, n = current_mapping[tclass].num_perms;
  u32 result;

  for (i = 0, result = 0; i < n; i++) {
   if (avd->allowed & current_mapping[tclass].perms[i])
    result |= 1<<i;
   if (allow_unknown && !current_mapping[tclass].perms[i])
    result |= 1<<i;
  }
  avd->allowed = result;

  for (i = 0, result = 0; i < n; i++)
   if (avd->auditallow & current_mapping[tclass].perms[i])
    result |= 1<<i;
  avd->auditallow = result;

  for (i = 0, result = 0; i < n; i++) {
   if (avd->auditdeny & current_mapping[tclass].perms[i])
    result |= 1<<i;
   if (!allow_unknown && !current_mapping[tclass].perms[i])
    result |= 1<<i;
  }





  for (; i < (sizeof(u32)*8); i++)
   result |= 1<<i;
  avd->auditdeny = result;
 }
}
