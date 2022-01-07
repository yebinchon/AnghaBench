
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 scalar_t__ CONST_VECTOR ;
 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;



 int fprintf (int *,char const*,...) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

int
arm_emit_vector_const (FILE *file, rtx x)
{
  int i;
  const char * pattern;

  gcc_assert (GET_CODE (x) == CONST_VECTOR);

  switch (GET_MODE (x))
    {
    case 130: pattern = "%08x"; break;
    case 129: pattern = "%04x"; break;
    case 128: pattern = "%02x"; break;
    default: gcc_unreachable ();
    }

  fprintf (file, "0x");
  for (i = CONST_VECTOR_NUNITS (x); i--;)
    {
      rtx element;

      element = CONST_VECTOR_ELT (x, i);
      fprintf (file, pattern, INTVAL (element));
    }

  return 1;
}
