
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int MAX_MACHINE_MODE ;


 size_t ARRAY_SIZE (char**) ;
 char* GET_MODE_NAME (int) ;
 scalar_t__ GET_MODE_WIDER_MODE (int) ;
 int GET_RTX_CLASS (int) ;
 char* GET_RTX_NAME (int) ;
 int MODE_COMPLEX_FLOAT ;
 int MODE_DECIMAL_FLOAT ;
 int MODE_FLOAT ;
 int MODE_INT ;
 int MODE_PARTIAL_INT ;
 int MODE_VECTOR_FLOAT ;
 int MODE_VECTOR_INT ;
 int NUM_RTX_CODE ;
 int RTX_COMM_COMPARE ;
 int RTX_COMPARE ;
 int SCALAR_FLOAT_MODE_P (int) ;
 char const TOLOWER (char const) ;
 char const TOUPPER (char const) ;
 scalar_t__* XSTR (int ,int) ;
 int gcc_unreachable () ;
 int * mode_class ;
 char** optabs ;
 int printf (char*,...) ;
 int putchar (char const) ;
 int strlen (char*) ;

__attribute__((used)) static void
gen_insn (rtx insn)
{
  const char *name = XSTR (insn, 0);
  int m1 = 0, m2 = 0, op = 0;
  size_t pindex;
  int i;
  const char *np, *pp, *p, *q;



  if (*name == 0)
    return;




  for (pindex = 0; pindex < ARRAY_SIZE (optabs); pindex++)
    {
      int force_float = 0, force_int = 0, force_partial_int = 0;
      int force_consec = 0;
      int matches = 1;

      for (pp = optabs[pindex]; pp[0] != '$' || pp[1] != '('; pp++)
 ;

      for (pp += 2, np = name; matches && ! (pp[0] == '$' && pp[1] == ')');
    pp++)
 {
   if (*pp != '$')
     {
       if (*pp != *np++)
  break;
     }
   else
     switch (*++pp)
       {
       case 'N':
  force_consec = 1;
  break;
       case 'I':
  force_int = 1;
  break;
       case 'P':
                force_partial_int = 1;
                break;
       case 'F':
  force_float = 1;
  break;
       case 'V':
                break;
       case 'c':
  for (op = 0; op < NUM_RTX_CODE; op++)
    {
      for (p = GET_RTX_NAME(op), q = np; *p; p++, q++)
        if (*p != *q)
   break;




      if (*p == 0 && *q == 0
   && (GET_RTX_CLASS (op) == RTX_COMPARE
       || GET_RTX_CLASS (op) == RTX_COMM_COMPARE))
        break;
    }

  if (op == NUM_RTX_CODE)
    matches = 0;
  else
    np += strlen (GET_RTX_NAME(op));
  break;
       case 'a':
       case 'b':




  for (i = (MAX_MACHINE_MODE) - 1; i >= 0; i--)
    {
      for (p = GET_MODE_NAME(i), q = np; *p; p++, q++)
        if (TOLOWER (*p) != *q)
   break;

      if (*p == 0
   && (! force_int || mode_class[i] == MODE_INT
       || mode_class[i] == MODE_VECTOR_INT)
          && (! force_partial_int
                            || mode_class[i] == MODE_INT
                            || mode_class[i] == MODE_PARTIAL_INT
       || mode_class[i] == MODE_VECTOR_INT)
   && (! force_float
       || mode_class[i] == MODE_FLOAT
       || mode_class[i] == MODE_DECIMAL_FLOAT
       || mode_class[i] == MODE_COMPLEX_FLOAT
       || mode_class[i] == MODE_VECTOR_FLOAT))
        break;
    }

  if (i < 0)
    matches = 0;
  else if (*pp == 'a')
    m1 = i, np += strlen (GET_MODE_NAME(i));
  else
    m2 = i, np += strlen (GET_MODE_NAME(i));

  force_int = force_partial_int = force_float = 0;
  break;

       default:
  gcc_unreachable ();
       }
 }

      if (matches && pp[0] == '$' && pp[1] == ')'
   && *np == 0
   && (! force_consec || (int) GET_MODE_WIDER_MODE(m1) == m2))
 break;
    }

  if (pindex == ARRAY_SIZE (optabs))
    return;




  if (*XSTR (insn, 2) != 0)
    printf ("  if (HAVE_%s)\n  ", name);

  printf ("  ");


  for (pp = optabs[pindex]; *pp; pp++)
    {
      if (*pp != '$')
 putchar (*pp);
      else
 switch (*++pp)
   {
   case '(': case ')':
   case 'I': case 'F': case 'N':
     break;
   case 'V':
     if (SCALAR_FLOAT_MODE_P (m1))
              printf ("v");
            break;
   case 'a':
     for (np = GET_MODE_NAME(m1); *np; np++)
       putchar (TOLOWER (*np));
     break;
   case 'b':
     for (np = GET_MODE_NAME(m2); *np; np++)
       putchar (TOLOWER (*np));
     break;
   case 'A':
     printf ("%smode", GET_MODE_NAME(m1));
     break;
   case 'B':
     printf ("%smode", GET_MODE_NAME(m2));
     break;
   case 'c':
     printf ("%s", GET_RTX_NAME(op));
     break;
   case 'C':
     for (np = GET_RTX_NAME(op); *np; np++)
       putchar (TOUPPER (*np));
     break;
   }
    }

  printf (";\n");
}
