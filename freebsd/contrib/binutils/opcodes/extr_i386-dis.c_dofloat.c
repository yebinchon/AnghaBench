
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dis386 {TYPE_1__* op; int * name; } ;
struct TYPE_4__ {int mod; unsigned char reg; size_t rm; } ;
struct TYPE_3__ {size_t bytemode; int (* rtn ) (size_t,int) ;} ;


 int MODRM_CHECK ;
 int OP_E (int ,int) ;
 int* codep ;
 int *** fgrps ;
 int ** float_mem ;
 int * float_mem_mode ;
 struct dis386** float_reg ;
 TYPE_2__ modrm ;
 int * names16 ;
 int obufp ;
 int op_ad ;
 int * op_out ;
 int putop (int *,int) ;
 int strcpy (int ,int ) ;
 int stub1 (size_t,int) ;
 int stub2 (size_t,int) ;

__attribute__((used)) static void
dofloat (int sizeflag)
{
  const struct dis386 *dp;
  unsigned char floatop;

  floatop = codep[-1];

  if (modrm.mod != 3)
    {
      int fp_indx = (floatop - 0xd8) * 8 + modrm.reg;

      putop (float_mem[fp_indx], sizeflag);
      obufp = op_out[0];
      op_ad = 2;
      OP_E (float_mem_mode[fp_indx], sizeflag);
      return;
    }

  MODRM_CHECK;
  codep++;

  dp = &float_reg[floatop - 0xd8][modrm.reg];
  if (dp->name == ((void*)0))
    {
      putop (fgrps[dp->op[0].bytemode][modrm.rm], sizeflag);


      if (floatop == 0xdf && codep[-1] == 0xe0)
 strcpy (op_out[0], names16[0]);
    }
  else
    {
      putop (dp->name, sizeflag);

      obufp = op_out[0];
      op_ad = 2;
      if (dp->op[0].rtn)
 (*dp->op[0].rtn) (dp->op[0].bytemode, sizeflag);

      obufp = op_out[1];
      op_ad = 1;
      if (dp->op[1].rtn)
 (*dp->op[1].rtn) (dp->op[1].bytemode, sizeflag);
    }
}
