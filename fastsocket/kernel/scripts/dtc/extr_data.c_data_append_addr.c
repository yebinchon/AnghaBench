
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct data {int dummy; } ;
typedef int beaddr ;


 int cpu_to_fdt64 (int ) ;
 struct data data_append_data (struct data,int *,int) ;

struct data data_append_addr(struct data d, uint64_t addr)
{
 uint64_t beaddr = cpu_to_fdt64(addr);

 return data_append_data(d, &beaddr, sizeof(beaddr));
}
