
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* summary; } ;


 char** bench_usage ;
 int printf (char*,...) ;
 TYPE_1__* subsystems ;

__attribute__((used)) static void print_usage(void)
{
 int i;

 printf("Usage: \n");
 for (i = 0; bench_usage[i]; i++)
  printf("\t%s\n", bench_usage[i]);
 printf("\n");

 printf("# List of available subsystems...\n\n");

 for (i = 0; subsystems[i].name; i++)
  printf("%14s: %s\n",
         subsystems[i].name, subsystems[i].summary);
 printf("\n");
}
