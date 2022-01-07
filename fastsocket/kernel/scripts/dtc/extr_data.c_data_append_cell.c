
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;
typedef int cell_t ;
typedef int beword ;


 int cpu_to_fdt32 (int ) ;
 struct data data_append_data (struct data,int *,int) ;

struct data data_append_cell(struct data d, cell_t word)
{
 cell_t beword = cpu_to_fdt32(word);

 return data_append_data(d, &beword, sizeof(beword));
}
