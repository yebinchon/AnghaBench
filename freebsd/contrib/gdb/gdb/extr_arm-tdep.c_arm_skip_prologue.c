
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; scalar_t__ end; } ;
struct symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (scalar_t__,int ,int ) ;
 scalar_t__ SYMBOL_LANGUAGE (struct symbol*) ;
 int VAR_DOMAIN ;
 scalar_t__ arm_pc_is_thumb (scalar_t__) ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 scalar_t__ find_pc_partial_function (scalar_t__,char**,scalar_t__*,scalar_t__*) ;
 scalar_t__ language_asm ;
 struct symbol* lookup_symbol (char*,int *,int ,int *,int *) ;
 unsigned long read_memory_integer (scalar_t__,int) ;
 scalar_t__ thumb_skip_prologue (scalar_t__,scalar_t__) ;

__attribute__((used)) static CORE_ADDR
arm_skip_prologue (CORE_ADDR pc)
{
  unsigned long inst;
  CORE_ADDR skip_pc;
  CORE_ADDR func_addr, func_end = 0;
  char *func_name;
  struct symtab_and_line sal;


  if (DEPRECATED_PC_IN_CALL_DUMMY (pc, 0, 0))
    return pc;



  if (find_pc_partial_function (pc, &func_name, &func_addr, &func_end))
    {
      struct symbol *sym;


      sym = lookup_symbol (func_name, ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));
      if (sym && SYMBOL_LANGUAGE (sym) != language_asm)
        {

   sal = find_pc_line (func_addr, 0);
   if ((sal.line != 0) && (sal.end < func_end))
     return sal.end;
        }
    }


  if (arm_pc_is_thumb (pc))
    return thumb_skip_prologue (pc, func_end);





  if (func_end == 0 || func_end > pc + 64)
    func_end = pc + 64;

  for (skip_pc = pc; skip_pc < func_end; skip_pc += 4)
    {
      inst = read_memory_integer (skip_pc, 4);


      if (inst == 0xe1a0c00d)
 continue;

      if ((inst & 0xfffff000) == 0xe28dc000)
 continue;

      if ((inst & 0xfffff000) == 0xe24dc000)
 continue;


      if (inst == 0xe52de004)
 continue;

      if ((inst & 0xfffffff0) == 0xe92d0000)
 continue;

      if ((inst & 0xfffff800) == 0xe92dd800)
 continue;
      if ((inst & 0xffbf0fff) == 0xec2d0200)
 continue;

      if ((inst & 0xffff8fff) == 0xed6d0103)
 continue;

      if ((inst & 0xfffff000) == 0xe24cb000)
 continue;

      if ((inst & 0xfffff000) == 0xe24dd000)
 continue;

      if ((inst & 0xffffc000) == 0xe54b0000 ||
   (inst & 0xffffc0f0) == 0xe14b00b0 ||
   (inst & 0xffffc000) == 0xe50b0000)
 continue;

      if ((inst & 0xffffc000) == 0xe5cd0000 ||
   (inst & 0xffffc0f0) == 0xe1cd00b0 ||
   (inst & 0xffffc000) == 0xe58d0000)
 continue;


      break;
    }

  return skip_pc;
}
