
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_flags {int is_write; int is_sibcall; } ;
typedef int rtx ;
struct TYPE_2__ {int write_count; } ;
typedef int HOST_WIDE_INT ;




 size_t AR_EC_REGNUM ;
 size_t AR_PFS_REGNUM ;
 int AR_UNAT_BIT_0 ;
 int AR_UNAT_REGNUM ;




 int ASM_OPERANDS_INPUT (int ,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (int ) ;




 int COND_EXEC_CODE (int ) ;
 int COND_EXEC_TEST (int ) ;
 int const GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int const) ;
 int GET_RTX_LENGTH (int const) ;



 int INTVAL (int ) ;
 int MEM_VOLATILE_P (int ) ;
 int PR_REGS ;

 int REGNO (int ) ;
 int REGNO_REG_CLASS (int) ;
 size_t REG_AR_CFM ;
 size_t REG_RP ;
 size_t REG_VOLATILE ;




 int SET_DEST (int ) ;
 int SET_SRC (int ) ;





 int SUBREG_REG (int ) ;

 int TARGET_VOL_ASM_STOP ;
 int XEXP (int ,int) ;
 int const XINT (int ,int) ;

 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int rws_access_reg (int ,struct reg_flags,int) ;
 int rws_access_regno (size_t,struct reg_flags,int) ;
 TYPE_1__* rws_insn ;
 int set_src_needs_barrier (int ,struct reg_flags,int) ;
 int update_set_flags (int ,struct reg_flags*) ;

__attribute__((used)) static int
rtx_needs_barrier (rtx x, struct reg_flags flags, int pred)
{
  int i, j;
  int is_complemented = 0;
  int need_barrier = 0;
  const char *format_ptr;
  struct reg_flags new_flags;
  rtx cond;

  if (! x)
    return 0;

  new_flags = flags;

  switch (GET_CODE (x))
    {
    case 183:
      update_set_flags (x, &new_flags);
      need_barrier = set_src_needs_barrier (x, new_flags, pred);
      if (GET_CODE (SET_SRC (x)) != 226)
 {
   new_flags.is_write = 1;
   need_barrier |= rtx_needs_barrier (SET_DEST (x), new_flags, pred);
 }
      break;

    case 226:
      new_flags.is_write = 0;
      need_barrier |= rws_access_regno (AR_EC_REGNUM, new_flags, pred);



      if (! flags.is_sibcall && ! rws_insn[REG_AR_CFM].write_count)
 {
   new_flags.is_write = 1;
   need_barrier |= rws_access_regno (REG_RP, new_flags, pred);
   need_barrier |= rws_access_regno (AR_PFS_REGNUM, new_flags, pred);
   need_barrier |= rws_access_regno (REG_AR_CFM, new_flags, pred);
 }
      break;

    case 223:


      cond = COND_EXEC_TEST (x);
      gcc_assert (!pred);
      need_barrier = rtx_needs_barrier (cond, flags, 0);

      if (GET_CODE (cond) == 217)
 is_complemented = 1;
      cond = XEXP (cond, 0);
      gcc_assert (GET_CODE (cond) == 187
    && REGNO_REG_CLASS (REGNO (cond)) == PR_REGS);
      pred = REGNO (cond);
      if (is_complemented)
 ++pred;

      need_barrier |= rtx_needs_barrier (COND_EXEC_CODE (x), flags, pred);
      return need_barrier;

    case 225:
    case 131:

      break;

    case 227:
    case 228:


      if (GET_CODE (x) != 227
   || (MEM_VOLATILE_P (x) && TARGET_VOL_ASM_STOP))
 {


   if (! rws_insn[REG_VOLATILE].write_count)
     {
       new_flags.is_write = 1;
       rws_access_regno (REG_VOLATILE, new_flags, pred);
     }
   return 1;
 }






      for (i = ASM_OPERANDS_INPUT_LENGTH (x) - 1; i >= 0; --i)
 if (rtx_needs_barrier (ASM_OPERANDS_INPUT (x, i), flags, pred))
   need_barrier = 1;
      break;

    case 193:
      for (i = XVECLEN (x, 0) - 1; i >= 0; --i)
 {
   rtx pat = XVECEXP (x, 0, i);
   switch (GET_CODE (pat))
     {
     case 183:
       update_set_flags (pat, &new_flags);
       need_barrier |= set_src_needs_barrier (pat, new_flags, pred);
       break;

     case 131:
     case 226:
     case 227:
       need_barrier |= rtx_needs_barrier (pat, flags, pred);
       break;

     case 225:
     case 186:
       break;

     default:
       gcc_unreachable ();
     }
 }
      for (i = XVECLEN (x, 0) - 1; i >= 0; --i)
 {
   rtx pat = XVECEXP (x, 0, i);
   if (GET_CODE (pat) == 183)
     {
       if (GET_CODE (SET_SRC (pat)) != 226)
  {
    new_flags.is_write = 1;
    need_barrier |= rtx_needs_barrier (SET_DEST (pat), new_flags,
           pred);
  }
     }
   else if (GET_CODE (pat) == 225 || GET_CODE (pat) == 186)
     need_barrier |= rtx_needs_barrier (pat, flags, pred);
 }
      break;

    case 178:
      need_barrier |= rtx_needs_barrier (SUBREG_REG (x), flags, pred);
      break;
    case 187:
      if (REGNO (x) == AR_UNAT_REGNUM)
 {
   for (i = 0; i < 64; ++i)
     need_barrier |= rws_access_regno (AR_UNAT_BIT_0 + i, flags, pred);
 }
      else
 need_barrier = rws_access_reg (x, flags, pred);
      break;

    case 200:

      new_flags.is_write = 0;
      need_barrier = rtx_needs_barrier (XEXP (x, 0), new_flags, pred);
      break;

    case 220: case 221: case 219:
    case 177: case 206: case 222:
      break;


    case 189: case 190:
      gcc_assert (GET_CODE (XEXP (x, 0)) == 187);

      new_flags.is_write = 0;
      need_barrier = rws_access_reg (XEXP (x, 0), new_flags, pred);
      new_flags.is_write = 1;
      need_barrier |= rws_access_reg (XEXP (x, 0), new_flags, pred);
      break;

    case 188:
      gcc_assert (GET_CODE (XEXP (x, 0)) == 187);

      new_flags.is_write = 0;
      need_barrier = rws_access_reg (XEXP (x, 0), new_flags, pred);
      need_barrier |= rtx_needs_barrier (XEXP (x, 1), new_flags, pred);
      new_flags.is_write = 1;
      need_barrier |= rws_access_reg (XEXP (x, 0), new_flags, pred);
      break;


    case 224: case 192: case 199: case 197: case 218:
    case 198: case 175: case 172: case 231: case 207:
    case 129: case 230: case 185: case 229: case 203:
    case 184: case 180: case 181: case 173: case 174:
    case 196: case 217: case 211: case 209: case 205:
    case 202: case 210: case 208: case 204: case 201:
      need_barrier = rtx_needs_barrier (XEXP (x, 0), new_flags, pred);
      need_barrier |= rtx_needs_barrier (XEXP (x, 1), new_flags, pred);
      break;

    case 195: case 194: case 182: case 128:
    case 176: case 213: case 212: case 214:
    case 215: case 170: case 171: case 232:
    case 179: case 216: case 191:
      need_barrier = rtx_needs_barrier (XEXP (x, 0), flags, pred);
      break;

    case 130:




      need_barrier = rtx_needs_barrier (XEXP (x, 0), flags, pred);
      break;

    case 169:
      switch (XINT (x, 1))
 {
 case 141:
 case 140:
 case 154:
 case 139:
 case 133:
 case 136:
 case 137:
        case 138:
        case 153:
 case 160:
 case 152:
 case 159:
          break;

 case 145:
 case 146:
   {
     HOST_WIDE_INT offset = INTVAL (XVECEXP (x, 0, 1));
     HOST_WIDE_INT bit = (offset >> 3) & 63;

     need_barrier = rtx_needs_barrier (XVECEXP (x, 0, 0), flags, pred);
     new_flags.is_write = (XINT (x, 1) == 145);
     need_barrier |= rws_access_regno (AR_UNAT_BIT_0 + bit,
           new_flags, pred);
     break;
   }

 case 149:
 case 150:
 case 147:
 case 135:
        case 161:
 case 148:
 case 144:
 case 143:
 case 142:
 case 158:
        case 157:
   need_barrier = rtx_needs_barrier (XVECEXP (x, 0, 0), flags, pred);
   break;

 case 151:
 case 134:
 case 155:
   need_barrier = rtx_needs_barrier (XVECEXP (x, 0, 0), flags, pred);
   need_barrier |= rtx_needs_barrier (XVECEXP (x, 0, 1), flags, pred);
   break;

        case 156:
   need_barrier = rtx_needs_barrier (XVECEXP (x, 0, 1), flags, pred);
   need_barrier |= rtx_needs_barrier (XVECEXP (x, 0, 2), flags, pred);
   break;

 default:
   gcc_unreachable ();
 }
      break;

    case 132:
      switch (XINT (x, 1))
 {
 case 168:







   rws_access_regno (AR_PFS_REGNUM, flags, pred);

   new_flags.is_write = 1;
   rws_access_regno (REG_AR_CFM, new_flags, pred);
   return 1;

 case 162:
   need_barrier = 1;
          break;

 case 167:
 case 165:
 case 166:
 case 164:
 case 163:
   return 0;

 default:
   gcc_unreachable ();
 }
      break;

    case 186:
      new_flags.is_write = 0;
      need_barrier = rws_access_regno (REG_RP, flags, pred);
      need_barrier |= rws_access_regno (AR_PFS_REGNUM, flags, pred);

      new_flags.is_write = 1;
      need_barrier |= rws_access_regno (AR_EC_REGNUM, new_flags, pred);
      need_barrier |= rws_access_regno (REG_AR_CFM, new_flags, pred);
      break;

    default:
      format_ptr = GET_RTX_FORMAT (GET_CODE (x));
      for (i = GET_RTX_LENGTH (GET_CODE (x)) - 1; i >= 0; i--)
 switch (format_ptr[i])
   {
   case '0':
   case 'i':
   case 'n':
   case 'w':
   case 's':
   case 'S':
     break;

   case 'e':
     if (rtx_needs_barrier (XEXP (x, i), flags, pred))
       need_barrier = 1;
     break;

   case 'E':
     for (j = XVECLEN (x, i) - 1; j >= 0; --j)
       if (rtx_needs_barrier (XVECEXP (x, i, j), flags, pred))
  need_barrier = 1;
     break;

   default:
     gcc_unreachable ();
   }
      break;
    }
  return need_barrier;
}
