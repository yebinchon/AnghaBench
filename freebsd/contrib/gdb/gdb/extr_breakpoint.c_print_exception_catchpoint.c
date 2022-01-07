
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int number; int addr_string; } ;
typedef enum print_stop_action { ____Placeholder_print_stop_action } print_stop_action ;


 int PRINT_SRC_AND_LOC ;
 int annotate_catchpoint (int ) ;
 int printf_filtered (char*,int ) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static enum print_stop_action
print_exception_catchpoint (struct breakpoint *b)
{
  annotate_catchpoint (b->number);

  if (strstr (b->addr_string, "throw") != ((void*)0))
    printf_filtered ("\nCatchpoint %d (exception thrown)\n",
       b->number);
  else
    printf_filtered ("\nCatchpoint %d (exception caught)\n",
       b->number);

  return PRINT_SRC_AND_LOC;
}
