
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int number; int addr_string; } ;


 int printf_filtered (char*,int ) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static void
print_mention_exception_catchpoint (struct breakpoint *b)
{
  if (strstr (b->addr_string, "throw") != ((void*)0))
    printf_filtered ("Catchpoint %d (throw)", b->number);
  else
    printf_filtered ("Catchpoint %d (catch)", b->number);
}
