
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page; } ;


 TYPE_1__* cpu_data ;

__attribute__((used)) static int calc_index(void *ptr, int cpu)
{
 return (unsigned long)ptr - (unsigned long)cpu_data[cpu].page;
}
