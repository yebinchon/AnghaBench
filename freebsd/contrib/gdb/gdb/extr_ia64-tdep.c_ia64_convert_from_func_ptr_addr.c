
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct obj_section {TYPE_1__* the_bfd_section; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {int name; } ;
typedef int CORE_ADDR ;


 struct obj_section* find_pc_section (int ) ;
 int read_memory_unsigned_integer (int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static CORE_ADDR
ia64_convert_from_func_ptr_addr (struct gdbarch *gdbarch, CORE_ADDR addr,
     struct target_ops *targ)
{
  struct obj_section *s;

  s = find_pc_section (addr);


  if (s && strcmp (s->the_bfd_section->name, ".opd") == 0)
    return read_memory_unsigned_integer (addr, 8);

  return addr;
}
