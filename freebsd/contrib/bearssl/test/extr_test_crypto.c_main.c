
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int (* fn ) () ;} ;


 scalar_t__ eq_name (char*,char*) ;
 int printf (char*,...) ;
 int stub1 () ;
 TYPE_1__* tfns ;

int
main(int argc, char *argv[])
{
 size_t u;

 if (argc <= 1) {
  printf("usage: testcrypto all | name...\n");
  printf("individual test names:\n");
  for (u = 0; tfns[u].name; u ++) {
   printf("   %s\n", tfns[u].name);
  }
 } else {
  for (u = 0; tfns[u].name; u ++) {
   int i;

   for (i = 1; i < argc; i ++) {
    if (eq_name(argv[i], tfns[u].name)
     || eq_name(argv[i], "all"))
    {
     tfns[u].fn();
     break;
    }
   }
  }
 }
 return 0;
}
