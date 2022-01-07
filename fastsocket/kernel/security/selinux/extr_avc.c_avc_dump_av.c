
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct audit_buffer {int dummy; } ;
typedef int av ;
struct TYPE_2__ {char** perms; } ;


 int audit_log_format (struct audit_buffer*,char*,...) ;
 TYPE_1__* secclass_map ;

__attribute__((used)) static void avc_dump_av(struct audit_buffer *ab, u16 tclass, u32 av)
{
 const char **perms;
 int i, perm;

 if (av == 0) {
  audit_log_format(ab, " null");
  return;
 }

 perms = secclass_map[tclass-1].perms;

 audit_log_format(ab, " {");
 i = 0;
 perm = 1;
 while (i < (sizeof(av) * 8)) {
  if ((perm & av) && perms[i]) {
   audit_log_format(ab, " %s", perms[i]);
   av &= ~perm;
  }
  i++;
  perm <<= 1;
 }

 if (av)
  audit_log_format(ab, " 0x%x", av);

 audit_log_format(ab, " }");
}
