
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jb_pc_offset; } ;
typedef scalar_t__ CORE_ADDR ;


 int SP_REGNUM ;
 int TYPE_LENGTH (int ) ;
 int builtin_type_void_data_ptr ;
 int builtin_type_void_func_ptr ;
 int current_gdbarch ;
 int current_regcache ;
 scalar_t__ extract_typed_address (char*,int ) ;
 TYPE_1__* gdbarch_tdep (int ) ;
 int regcache_cooked_read (int ,int ,char*) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;

__attribute__((used)) static int
i386_get_longjmp_target (CORE_ADDR *pc)
{
  char buf[8];
  CORE_ADDR sp, jb_addr;
  int jb_pc_offset = gdbarch_tdep (current_gdbarch)->jb_pc_offset;
  int len = TYPE_LENGTH (builtin_type_void_func_ptr);



  if (jb_pc_offset == -1)
    return 0;



  regcache_cooked_read (current_regcache, SP_REGNUM, buf);
  sp = extract_typed_address (buf, builtin_type_void_data_ptr);
  if (target_read_memory (sp + len, buf, len))
    return 0;

  jb_addr = extract_typed_address (buf, builtin_type_void_data_ptr);
  if (target_read_memory (jb_addr + jb_pc_offset, buf, len))
    return 0;

  *pc = extract_typed_address (buf, builtin_type_void_func_ptr);
  return 1;
}
