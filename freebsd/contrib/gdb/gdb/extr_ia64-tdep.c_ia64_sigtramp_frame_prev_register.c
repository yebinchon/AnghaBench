
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_frame_cache {scalar_t__* saved_regs; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int IA64_GR127_REGNUM ;
 int IA64_GR32_REGNUM ;
 int IA64_IP_REGNUM ;
 unsigned int IA64_NAT127_REGNUM ;
 size_t IA64_VRAP_REGNUM ;
 int MAX_REGISTER_SIZE ;
 int V127_REGNUM ;
 int V32_REGNUM ;
 int current_gdbarch ;
 int error (char*) ;
 scalar_t__ extract_unsigned_integer (void*,int) ;
 int fprintf_unfiltered (int ,char*,char*,int ) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int ia64_read_reg (scalar_t__,void*,int ) ;
 char** ia64_register_names ;
 struct ia64_frame_cache* ia64_sigtramp_frame_cache (struct frame_info*,void**) ;
 int lval_memory ;
 int memset (void*,int ,int ) ;
 int not_lval ;
 int paddr_nz (scalar_t__) ;
 int register_size (int ,int) ;
 int store_unsigned_integer (void*,int,scalar_t__) ;
 int target_has_registers ;

__attribute__((used)) static void
ia64_sigtramp_frame_prev_register (struct frame_info *next_frame,
       void **this_cache,
       int regnum, int *optimizedp,
       enum lval_type *lvalp, CORE_ADDR *addrp,
       int *realnump, void *valuep)
{
  char dummy_valp[MAX_REGISTER_SIZE];
  char buf[MAX_REGISTER_SIZE];

  struct ia64_frame_cache *cache =
    ia64_sigtramp_frame_cache (next_frame, this_cache);

  gdb_assert (regnum >= 0);

  if (!target_has_registers)
    error ("No registers.");

  *optimizedp = 0;
  *addrp = 0;
  *lvalp = not_lval;
  *realnump = -1;



  if (!valuep)
    valuep = dummy_valp;

  memset (valuep, 0, register_size (current_gdbarch, regnum));

  if (regnum == IA64_IP_REGNUM)
    {
      CORE_ADDR pc = 0;
      CORE_ADDR addr = cache->saved_regs[IA64_VRAP_REGNUM];

      if (addr != 0)
 {
   *lvalp = lval_memory;
   *addrp = addr;
   ia64_read_reg (addr, buf, register_size (current_gdbarch, IA64_IP_REGNUM));
   pc = extract_unsigned_integer (buf, 8);
 }
      pc &= ~0xf;
      store_unsigned_integer (valuep, 8, pc);
    }
 else if ((regnum >= IA64_GR32_REGNUM && regnum <= IA64_GR127_REGNUM) ||
    (regnum >= V32_REGNUM && regnum <= V127_REGNUM))
    {
      CORE_ADDR addr = 0;
      if (regnum >= V32_REGNUM)
 regnum = IA64_GR32_REGNUM + (regnum - V32_REGNUM);
      addr = cache->saved_regs[regnum];
      if (addr != 0)
 {
   *lvalp = lval_memory;
   *addrp = addr;
   ia64_read_reg (addr, valuep, register_size (current_gdbarch, regnum));
 }
    }
  else
    {

      CORE_ADDR addr = cache->saved_regs[regnum];
      if (addr != 0)
 {
   *lvalp = lval_memory;
   *addrp = addr;
   ia64_read_reg (addr, valuep, register_size (current_gdbarch, regnum));
 }
    }

  if (gdbarch_debug >= 1)
    fprintf_unfiltered (gdb_stdlog,
   "sigtramp prev register <%s> is 0x%s\n",
   (((unsigned) regnum <= IA64_NAT127_REGNUM)
    ? ia64_register_names[regnum] : "r??"),
   paddr_nz (extract_unsigned_integer (valuep, 8)));
}
