
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bfd_arm_vfp11_pipe { ____Placeholder_bfd_arm_vfp11_pipe } bfd_arm_vfp11_pipe ;
typedef int bfd_boolean ;


 int VFP11_BAD ;
 int VFP11_DS ;
 int VFP11_FMAC ;
 int VFP11_LS ;
 int abort () ;
 void* bfd_arm_vfp11_regno (unsigned int,int,int,int) ;
 int bfd_arm_vfp11_write_mask (unsigned int*,unsigned int) ;

__attribute__((used)) static enum bfd_arm_vfp11_pipe
bfd_arm_vfp11_insn_decode (unsigned int insn, unsigned int *destmask, int *regs,
                           int *numregs)
{
  enum bfd_arm_vfp11_pipe pipe = VFP11_BAD;
  bfd_boolean is_double = ((insn & 0xf00) == 0xb00) ? 1 : 0;

  if ((insn & 0x0f000e10) == 0x0e000a00)
    {
      unsigned int pqrs;
      unsigned int fd = bfd_arm_vfp11_regno (insn, is_double, 12, 22);
      unsigned int fm = bfd_arm_vfp11_regno (insn, is_double, 0, 5);

      pqrs = ((insn & 0x00800000) >> 20)
           | ((insn & 0x00300000) >> 19)
           | ((insn & 0x00000040) >> 6);

      switch (pqrs)
        {
        case 0:
        case 1:
        case 2:
        case 3:
          pipe = VFP11_FMAC;
          bfd_arm_vfp11_write_mask (destmask, fd);
          regs[0] = fd;
          regs[1] = bfd_arm_vfp11_regno (insn, is_double, 16, 7);
          regs[2] = fm;
          *numregs = 3;
          break;

        case 4:
        case 5:
        case 6:
        case 7:
          pipe = VFP11_FMAC;
          goto vfp_binop;

        case 8:
          pipe = VFP11_DS;
          vfp_binop:
          bfd_arm_vfp11_write_mask (destmask, fd);
          regs[0] = bfd_arm_vfp11_regno (insn, is_double, 16, 7);
          regs[1] = fm;
          *numregs = 2;
          break;

        case 15:
          {
            unsigned int extn = ((insn >> 15) & 0x1e)
                              | ((insn >> 7) & 1);

            switch (extn)
              {
              case 0:
              case 1:
              case 2:
              case 8:
              case 9:
              case 10:
              case 11:
              case 16:
              case 17:
              case 24:
              case 25:
              case 26:
              case 27:

                *numregs = 0;
                pipe = VFP11_FMAC;
                break;

              case 3:


                bfd_arm_vfp11_write_mask (destmask, fd);
                pipe = VFP11_DS;
                break;

              case 15:
                {
                  int rnum = 0;

                  bfd_arm_vfp11_write_mask (destmask, fd);


                  if ((insn & 0x100) != 0)
                    regs[rnum++] = fm;

                  *numregs = rnum;

                  pipe = VFP11_FMAC;
                }
                break;

              default:
                return VFP11_BAD;
              }
          }
          break;

        default:
          return VFP11_BAD;
        }
    }

  else if ((insn & 0x0fe00ed0) == 0x0c400a10)
    {
      unsigned int fm = bfd_arm_vfp11_regno (insn, is_double, 0, 5);

      if ((insn & 0x100000) == 0)
 {
          if (is_double)
            bfd_arm_vfp11_write_mask (destmask, fm);
          else
            {
              bfd_arm_vfp11_write_mask (destmask, fm);
              bfd_arm_vfp11_write_mask (destmask, fm + 1);
            }
 }

      pipe = VFP11_LS;
    }
  else if ((insn & 0x0e100e00) == 0x0c100a00)
    {
      int fd = bfd_arm_vfp11_regno (insn, is_double, 12, 22);
      unsigned int puw = ((insn >> 21) & 0x1) | (((insn >> 23) & 3) << 1);

      switch (puw)
        {
        case 0:
          abort ();

        case 2:
        case 3:
        case 5:
          {
            unsigned int i, offset = insn & 0xff;

            if (is_double)
              offset >>= 1;

            for (i = fd; i < fd + offset; i++)
              bfd_arm_vfp11_write_mask (destmask, i);
          }
          break;

        case 4:
        case 6:
          bfd_arm_vfp11_write_mask (destmask, fd);
          break;

        default:
          return VFP11_BAD;
        }

      pipe = VFP11_LS;
    }

  else if ((insn & 0x0f100e10) == 0x0e000a10)
    {
      unsigned int opcode = (insn >> 21) & 7;
      unsigned int fn = bfd_arm_vfp11_regno (insn, is_double, 16, 7);

      switch (opcode)
        {
        case 0:
        case 1:



          bfd_arm_vfp11_write_mask (destmask, fn);
          break;

        case 7:
          break;
        }

      pipe = VFP11_LS;
    }

  return pipe;
}
