
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* name; struct bfd* the_bfd; } ;
struct coff_symbol_struct {TYPE_3__ symbol; TYPE_5__* native; } ;
struct bfd {TYPE_6__* xvec; } ;
struct TYPE_13__ {int ** symbols; } ;
typedef TYPE_4__ disassemble_info ;
struct TYPE_10__ {int n_sclass; } ;
struct TYPE_11__ {TYPE_1__ syment; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef TYPE_5__ combined_entry_type ;
typedef int bfd_vma ;
struct TYPE_15__ {int flavour; } ;
typedef TYPE_6__ bfd_target ;
typedef int asymbol ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int C_THUMBEXTFUNC ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int UNMAKE_THUMB_ADDR (int ) ;
 scalar_t__ arm_pc_is_thumb (int ) ;
 int bfd_target_coff_flavour ;
 int print_insn_big_arm (int ,TYPE_4__*) ;
 int print_insn_little_arm (int ,TYPE_4__*) ;

__attribute__((used)) static int
gdb_print_insn_arm (bfd_vma memaddr, disassemble_info *info)
{
  if (arm_pc_is_thumb (memaddr))
    {
      static asymbol *asym;
      static combined_entry_type ce;
      static struct coff_symbol_struct csym;
      static struct bfd fake_bfd;
      static bfd_target fake_target;

      if (csym.native == ((void*)0))
 {






   fake_target.flavour = bfd_target_coff_flavour;
   fake_bfd.xvec = &fake_target;
   ce.u.syment.n_sclass = C_THUMBEXTFUNC;
   csym.native = &ce;
   csym.symbol.the_bfd = &fake_bfd;
   csym.symbol.name = "fake";
   asym = (asymbol *) & csym;
 }

      memaddr = UNMAKE_THUMB_ADDR (memaddr);
      info->symbols = &asym;
    }
  else
    info->symbols = ((void*)0);

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return print_insn_big_arm (memaddr, info);
  else
    return print_insn_little_arm (memaddr, info);
}
