
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 char* elftc_version () ;
 int exit (int ) ;
 TYPE_1__ nm_info ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_version(void)
{

 (void) printf("%s (%s)\n", nm_info.name, elftc_version());
 exit(0);
}
