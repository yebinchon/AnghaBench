
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_THUMBEXT ;
 int C_THUMBEXTFUNC ;
 int C_THUMBLABEL ;
 int C_THUMBSTAT ;
 int C_THUMBSTATFUNC ;

__attribute__((used)) static int
coff_sym_is_thumb (int val)
{
  return (val == C_THUMBEXT ||
   val == C_THUMBSTAT ||
   val == C_THUMBEXTFUNC ||
   val == C_THUMBSTATFUNC ||
   val == C_THUMBLABEL);
}
