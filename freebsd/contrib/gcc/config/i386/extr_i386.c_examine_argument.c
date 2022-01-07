
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum x86_64_reg_class { ____Placeholder_x86_64_reg_class } x86_64_reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int MAX_CLASSES ;
 int classify_argument (int,int ,int*,int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static int
examine_argument (enum machine_mode mode, tree type, int in_return,
    int *int_nregs, int *sse_nregs)
{
  enum x86_64_reg_class class[MAX_CLASSES];
  int n = classify_argument (mode, type, class, 0);

  *int_nregs = 0;
  *sse_nregs = 0;
  if (!n)
    return 0;
  for (n--; n >= 0; n--)
    switch (class[n])
      {
      case 136:
      case 137:
 (*int_nregs)++;
 break;
      case 130:
      case 132:
      case 133:
 (*sse_nregs)++;
 break;
      case 134:
      case 131:
 break;
      case 128:
      case 129:
 if (!in_return)
   return 0;
 break;
      case 138:
 return in_return ? 2 : 0;
      case 135:
 gcc_unreachable ();
      }
  return 1;
}
