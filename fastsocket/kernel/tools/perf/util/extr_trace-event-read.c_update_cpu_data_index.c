
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; int size; int offset; } ;


 TYPE_1__* cpu_data ;
 scalar_t__ page_size ;

__attribute__((used)) static void update_cpu_data_index(int cpu)
{
 cpu_data[cpu].offset += page_size;
 cpu_data[cpu].size -= page_size;
 cpu_data[cpu].index = 0;
}
