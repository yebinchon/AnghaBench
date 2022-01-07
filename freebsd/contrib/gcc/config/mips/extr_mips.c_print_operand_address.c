
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_address_info {int type; int reg; int offset; } ;
typedef int rtx ;
typedef int FILE ;






 size_t REGNO (int ) ;
 int fprintf (int *,char*,char*) ;
 int gcc_unreachable () ;
 scalar_t__ mips_classify_address (struct mips_address_info*,int ,int ,int) ;
 int output_addr_const (int *,int ) ;
 int print_operand (int *,int ,char) ;
 char** reg_names ;
 int word_mode ;

void
print_operand_address (FILE *file, rtx x)
{
  struct mips_address_info addr;

  if (mips_classify_address (&addr, x, word_mode, 1))
    switch (addr.type)
      {
      case 129:
 print_operand (file, addr.offset, 0);
 fprintf (file, "(%s)", reg_names[REGNO (addr.reg)]);
 return;

      case 130:
 print_operand (file, addr.offset, 'R');
 fprintf (file, "(%s)", reg_names[REGNO (addr.reg)]);
 return;

      case 131:
 output_addr_const (file, x);
 fprintf (file, "(%s)", reg_names[0]);
 return;

      case 128:
 output_addr_const (file, x);
 return;
      }
  gcc_unreachable ();
}
