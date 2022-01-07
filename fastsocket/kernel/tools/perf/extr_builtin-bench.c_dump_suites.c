
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; TYPE_1__* suites; } ;
struct TYPE_3__ {char* name; char* summary; } ;


 int printf (char*,...) ;
 TYPE_2__* subsystems ;

__attribute__((used)) static void dump_suites(int subsys_index)
{
 int i;

 printf("# List of available suites for %s...\n\n",
        subsystems[subsys_index].name);

 for (i = 0; subsystems[subsys_index].suites[i].name; i++)
  printf("%14s: %s\n",
         subsystems[subsys_index].suites[i].name,
         subsystems[subsys_index].suites[i].summary);

 printf("\n");
 return;
}
