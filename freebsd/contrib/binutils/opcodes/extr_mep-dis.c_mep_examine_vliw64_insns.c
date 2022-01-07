
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* read_memory_func ) (int ,char*,int,TYPE_1__*) ;scalar_t__ endian; int (* memory_error_func ) (int,int ,TYPE_1__*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;
typedef char bfd_byte ;
typedef int CGEN_CPU_DESC ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int CGEN_MAX_INSN_SIZE ;
 int mep_print_vliw_insns (int ,int ,TYPE_1__*,char*,int,int,int) ;
 int stub1 (int ,char*,int,TYPE_1__*) ;
 int stub2 (int,int ,TYPE_1__*) ;

__attribute__((used)) static int
mep_examine_vliw64_insns (CGEN_CPU_DESC cd, bfd_vma pc, disassemble_info *info)
{
  int status;
  int buflength;
  int corebuflength;
  int cop1buflength;
  int cop2buflength;
  bfd_byte buf[CGEN_MAX_INSN_SIZE];
  char indicator16[1];
  char indicator64[4];



  cop2buflength = 0;


  buflength = 8;
  status = (*info->read_memory_func) (pc, buf, buflength, info);

  if (status != 0)
    {
      (*info->memory_error_func) (status, pc, info);
      return -1;
    }
  if (info->endian == BFD_ENDIAN_BIG)
    {
      indicator16[0] = buf[0];
      indicator64[0] = buf[0];
      indicator64[1] = buf[1];
      indicator64[2] = buf[2];
      indicator64[3] = buf[3];
    }
  else
    {
      indicator16[0] = buf[1];
      indicator64[0] = buf[1];
      indicator64[1] = buf[0];
      indicator64[2] = buf[3];
      indicator64[3] = buf[2];
    }




  if ((indicator16[0] & 0x80) && (indicator16[0] & 0x40))
    {
      if ((indicator64[0] & 0xf0) == 0xf0 && (indicator64[1] & 0x07) == 0x07
   && ((indicator64[2] & 0xfe) != 0xf0 || (indicator64[3] & 0xf4) != 0))
 {

          corebuflength = 0;

          cop1buflength = 8;
 }
      else
 {

          corebuflength = 4;
          cop1buflength = 4;
 }
    }
  else
    {

      corebuflength = 2;
      cop1buflength = 6;
    }


  status = mep_print_vliw_insns (cd, pc, info, buf, corebuflength,
     cop1buflength, cop2buflength);

  return status;
}
