
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {int allows_non_const; int special; int allows_non_lvalue; } ;
typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int RTX_CODE ;


 int const CALL ;
 int const CC0 ;

 int const CONST_INT ;
 int const DEFINE_EXPAND ;
 int const DEFINE_INSN ;
 int const DEFINE_PEEPHOLE2 ;
 int const DEFINE_SPLIT ;
 int const GET_CODE (int *) ;
 int GET_MODE (int *) ;
 char const* GET_MODE_NAME (int) ;
 char* GET_RTX_FORMAT (int) ;
 size_t GET_RTX_LENGTH (int) ;







 int * NULL_RTX ;
 int const PC ;

 int * SET_DEST (int *) ;
 int * SET_SRC (int *) ;

 int VOIDmode ;
 int * XEXP (int *,size_t) ;
 char const* XINT (int *,int ) ;
 char* XSTR (int *,int) ;
 int * XVECEXP (int *,size_t,int) ;
 int XVECLEN (int *,size_t) ;

 int error_count ;
 int find_matching_operand (int *,char const*) ;
 int * find_operand (int *,char const*,int *) ;
 int gcc_unreachable () ;
 struct pred_data* lookup_predicate (char const*) ;
 int message_with_line (int ,char*,char const*,...) ;
 int pattern_lineno ;
 char const** rtx_name ;
 int strcmp (char*,char*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static void
validate_pattern (rtx pattern, rtx insn, rtx set, int set_code)
{
  const char *fmt;
  RTX_CODE code;
  size_t i, len;
  int j;

  code = GET_CODE (pattern);
  switch (code)
    {
    case 131:
      return;
    case 136:
    case 133:
    case 132:
      if (find_operand (insn, XINT (pattern, 0), pattern) == pattern)
 {
   message_with_line (pattern_lineno,
        "operand %i duplicated before defined",
        XINT (pattern, 0));
          error_count++;
 }
      break;
    case 135:
    case 134:
      {
 const char *pred_name = XSTR (pattern, 1);
 const struct pred_data *pred;
 const char *c_test;

 if (GET_CODE (insn) == DEFINE_INSN)
   c_test = XSTR (insn, 2);
 else
   c_test = XSTR (insn, 1);

 if (pred_name[0] != 0)
   {
     pred = lookup_predicate (pred_name);
     if (!pred)
       message_with_line (pattern_lineno,
     "warning: unknown predicate '%s'",
     pred_name);
   }
 else
   pred = 0;

 if (code == 135)
   {
     const char constraints0 = XSTR (pattern, 2)[0];





     if (GET_CODE (insn) == DEFINE_EXPAND
  || GET_CODE (insn) == DEFINE_SPLIT
  || GET_CODE (insn) == DEFINE_PEEPHOLE2)
       {
  if (constraints0)
    message_with_line (pattern_lineno,
         "warning: constraints not supported in %s",
         rtx_name[GET_CODE (insn)]);
       }


     else if (set && constraints0)
       {
  if (set_code == '+')
    {
      if (constraints0 == '+')
        ;


      else if (constraints0 == '='
        && find_matching_operand (insn, XINT (pattern, 0)))
        ;
      else
        {
   message_with_line (pattern_lineno,
        "operand %d missing in-out reload",
        XINT (pattern, 0));
   error_count++;
        }
    }
  else if (constraints0 != '=' && constraints0 != '+')
    {
      message_with_line (pattern_lineno,
           "operand %d missing output reload",
           XINT (pattern, 0));
      error_count++;
    }
       }
   }




 if (set && pred && pred->allows_non_lvalue)
   message_with_line (pattern_lineno,
        "warning: destination operand %d "
        "allows non-lvalue",
        XINT (pattern, 0));
 if (GET_MODE (pattern) == VOIDmode
     && code == 135
     && GET_CODE (insn) == DEFINE_INSN
     && pred
     && !pred->special
     && pred->allows_non_const
     && strstr (c_test, "operands") == ((void*)0)
     && ! (set
    && GET_CODE (set) == 130
    && GET_CODE (SET_SRC (set)) == CALL))
   message_with_line (pattern_lineno,
        "warning: operand %d missing mode?",
        XINT (pattern, 0));
 return;
      }

    case 130:
      {
 enum machine_mode dmode, smode;
 rtx dest, src;

 dest = SET_DEST (pattern);
 src = SET_SRC (pattern);



 if (GET_CODE (dest) == 129)
   dest = XEXP (dest, 0);



 if (GET_CODE (dest) == 136
     || GET_CODE (dest) == 133
     || GET_CODE (dest) == 132)
   dest = find_operand (insn, XINT (dest, 0), ((void*)0));

 if (GET_CODE (src) == 136
     || GET_CODE (src) == 133
     || GET_CODE (src) == 132)
   src = find_operand (insn, XINT (src, 0), ((void*)0));

 dmode = GET_MODE (dest);
 smode = GET_MODE (src);



 if (GET_CODE (src) == 135
     && ! strcmp (XSTR (src, 1), "address_operand"))
   ;



        else if (dmode != VOIDmode && smode != VOIDmode && dmode != smode)
   {
     message_with_line (pattern_lineno,
          "mode mismatch in set: %smode vs %smode",
          GET_MODE_NAME (dmode), GET_MODE_NAME (smode));
     error_count++;
   }



 else if (dmode != smode
   && GET_CODE (dest) != PC
   && GET_CODE (dest) != CC0
   && GET_CODE (src) != PC
   && GET_CODE (src) != CC0
   && GET_CODE (src) != CONST_INT)
   {
     const char *which;
     which = (dmode == VOIDmode ? "destination" : "source");
     message_with_line (pattern_lineno,
          "warning: %s missing a mode?", which);
   }

 if (dest != SET_DEST (pattern))
   validate_pattern (dest, insn, pattern, '=');
 validate_pattern (SET_DEST (pattern), insn, pattern, '=');
        validate_pattern (SET_SRC (pattern), insn, NULL_RTX, 0);
        return;
      }

    case 138:
      validate_pattern (SET_DEST (pattern), insn, pattern, '=');
      return;

    case 128:
      validate_pattern (XEXP (pattern, 0), insn, set, set ? '+' : 0);
      validate_pattern (XEXP (pattern, 1), insn, NULL_RTX, 0);
      validate_pattern (XEXP (pattern, 2), insn, NULL_RTX, 0);
      return;

    case 129:
      validate_pattern (XEXP (pattern, 0), insn, set, set ? '+' : 0);
      return;

    case 137:
      if (GET_MODE (XEXP (pattern, 0)) != VOIDmode)
 {
   message_with_line (pattern_lineno,
        "operand to label_ref %smode not VOIDmode",
        GET_MODE_NAME (GET_MODE (XEXP (pattern, 0))));
   error_count++;
 }
      break;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  len = GET_RTX_LENGTH (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
 {
 case 'e': case 'u':
   validate_pattern (XEXP (pattern, i), insn, NULL_RTX, 0);
   break;

 case 'E':
   for (j = 0; j < XVECLEN (pattern, i); j++)
     validate_pattern (XVECEXP (pattern, i, j), insn, NULL_RTX, 0);
   break;

 case 'i': case 'w': case '0': case 's':
   break;

 default:
   gcc_unreachable ();
 }
    }
}
