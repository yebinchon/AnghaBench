
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CL_TARGET ;
 int CL_UNDOCUMENTED ;
 char* _ (char*) ;
 TYPE_1__* cl_options ;
 unsigned int cl_options_count ;
 int print_filtered_help (int) ;
 int printf (char*) ;

__attribute__((used)) static void
print_target_help (void)
{
  unsigned int i;
  static bool displayed = 0;


  if (displayed)
    return;

  displayed = 1;
  for (i = 0; i < cl_options_count; i++)
    if ((cl_options[i].flags & (CL_TARGET | CL_UNDOCUMENTED)) == CL_TARGET)
      {
 printf (_("\nTarget specific options:\n"));
 print_filtered_help (CL_TARGET);
 break;
      }
}
