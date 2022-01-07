
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int RTX_CODE ;






 int const GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int const) ;
 int GET_RTX_LENGTH (int const) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int ) ;
 int * XVEC (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int clobbers_seen_this_insn ;
 int dup_operands_seen_this_insn ;
 int have_cc0_flag ;
 int have_cmove_flag ;
 int have_cond_exec_flag ;
 int have_lo_sum_flag ;
 int max_recog_operands ;

__attribute__((used)) static void
walk_insn_part (rtx part, int recog_p, int non_pc_set_src)
{
  int i, j;
  RTX_CODE code;
  const char *format_ptr;

  if (part == 0)
    return;

  code = GET_CODE (part);
  switch (code)
    {
    case 144:
      clobbers_seen_this_insn++;
      break;

    case 137:
      if (XINT (part, 0) > max_recog_operands)
 max_recog_operands = XINT (part, 0);
      return;

    case 135:
    case 133:
      ++dup_operands_seen_this_insn;
    case 132:
    case 134:
    case 136:
      if (XINT (part, 0) > max_recog_operands)
 max_recog_operands = XINT (part, 0);


      break;

    case 140:
      if (GET_CODE (XEXP (part, 0)) == 137
   || GET_CODE (XEXP (part, 0)) == 138)
 break;
      return;

    case 138:
      ++dup_operands_seen_this_insn;
      if (XINT (part, 0) > max_recog_operands)
 max_recog_operands = XINT (part, 0);
      return;

    case 145:
      if (recog_p)
 have_cc0_flag = 1;
      return;

    case 139:
      if (recog_p)
 have_lo_sum_flag = 1;
      return;

    case 129:
      walk_insn_part (SET_DEST (part), 0, recog_p);
      walk_insn_part (SET_SRC (part), recog_p,
        GET_CODE (SET_DEST (part)) != 131);
      return;

    case 141:






      if (recog_p && non_pc_set_src
   && GET_CODE (XEXP (part, 1)) == 137
   && GET_CODE (XEXP (part, 2)) == 137)
 have_cmove_flag = 1;
      break;

    case 143:
      if (recog_p)
 have_cond_exec_flag = 1;
      break;

    case 130: case 142: case 128:
    case 131:
      return;

    default:
      break;
    }

  format_ptr = GET_RTX_FORMAT (GET_CODE (part));

  for (i = 0; i < GET_RTX_LENGTH (GET_CODE (part)); i++)
    switch (*format_ptr++)
      {
      case 'e':
      case 'u':
 walk_insn_part (XEXP (part, i), recog_p, non_pc_set_src);
 break;
      case 'E':
 if (XVEC (part, i) != ((void*)0))
   for (j = 0; j < XVECLEN (part, i); j++)
     walk_insn_part (XVECEXP (part, i, j), recog_p, non_pc_set_src);
 break;
      }
}
