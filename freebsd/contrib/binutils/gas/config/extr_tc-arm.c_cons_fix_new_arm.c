
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fragS ;
struct TYPE_4__ {scalar_t__ X_op; } ;
typedef TYPE_1__ expressionS ;
typedef int bfd_reloc_code_real_type ;


 int BFD_RELOC_16 ;
 int BFD_RELOC_32 ;
 int BFD_RELOC_32_SECREL ;
 int BFD_RELOC_64 ;
 int BFD_RELOC_8 ;
 scalar_t__ O_secrel ;
 scalar_t__ O_symbol ;
 int fix_new_exp (int *,int,int,TYPE_1__*,int,int ) ;

void
cons_fix_new_arm (fragS * frag,
    int where,
    int size,
    expressionS * exp)
{
  bfd_reloc_code_real_type type;
  int pcrel = 0;



  switch (size)
    {
    case 1:
      type = BFD_RELOC_8;
      break;
    case 2:
      type = BFD_RELOC_16;
      break;
    case 4:
    default:
      type = BFD_RELOC_32;
      break;
    case 8:
      type = BFD_RELOC_64;
      break;
    }
  fix_new_exp (frag, where, (int) size, exp, pcrel, type);
}
