
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ TARGET_V9 ;
 int assemble_aligned_integer (int,int ) ;
 int assemble_integer_with_op (char*,int ) ;
 int const0_rtx ;
 int default_assemble_integer (int ,unsigned int,int) ;

__attribute__((used)) static bool
sparc_assemble_integer (rtx x, unsigned int size, int aligned_p)
{


  if (aligned_p && size == 8
      && (GET_CODE (x) != CONST_INT && GET_CODE (x) != CONST_DOUBLE))
    {
      if (TARGET_V9)
 {
   assemble_integer_with_op ("\t.xword\t", x);
   return 1;
 }
      else
 {
   assemble_aligned_integer (4, const0_rtx);
   assemble_aligned_integer (4, x);
   return 1;
 }
    }
  return default_assemble_integer (x, size, aligned_p);
}
