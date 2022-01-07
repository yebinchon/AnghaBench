
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct section_table {TYPE_1__* the_bfd_section; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {int name; } ;
typedef int CORE_ADDR ;


 int get_target_memory_unsigned (struct target_ops*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 struct section_table* target_section_by_addr (struct target_ops*,int ) ;

__attribute__((used)) static CORE_ADDR
ppc64_fbsd_convert_from_func_ptr_addr (struct gdbarch *gdbarch,
           CORE_ADDR addr,
           struct target_ops *targ)
{
  struct section_table *s = target_section_by_addr (targ, addr);


  if (s && strcmp (s->the_bfd_section->name, ".opd") == 0)
    return get_target_memory_unsigned (targ, addr, 8);

  return addr;
}
