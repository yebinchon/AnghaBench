
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int release; } ;


 TYPE_1__* init_utsname () ;
 int printk (char*,int ,int,int ) ;
 scalar_t__ strcspn (int ,char*) ;

__attribute__((used)) static void print_kernel_version(void)
{
 printk("%s %.*s\n", init_utsname()->release,
  (int)strcspn(init_utsname()->version, " "),
  init_utsname()->version);
}
