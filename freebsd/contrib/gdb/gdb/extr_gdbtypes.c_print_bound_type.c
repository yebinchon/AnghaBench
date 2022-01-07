
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*) ;

__attribute__((used)) static void
print_bound_type (int bt)
{
  switch (bt)
    {
    case 129:
      printf_filtered ("(BOUND_CANNOT_BE_DETERMINED)");
      break;
    case 132:
      printf_filtered ("(BOUND_BY_REF_ON_STACK)");
      break;
    case 130:
      printf_filtered ("(BOUND_BY_VALUE_ON_STACK)");
      break;
    case 133:
      printf_filtered ("(BOUND_BY_REF_IN_REG)");
      break;
    case 131:
      printf_filtered ("(BOUND_BY_VALUE_IN_REG)");
      break;
    case 128:
      printf_filtered ("(BOUND_SIMPLE)");
      break;
    default:
      printf_filtered ("(unknown bound type)");
      break;
    }
}
