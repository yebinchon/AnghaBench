
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {void* size; void* address; } ;
struct data {int dummy; } ;
typedef int bere ;


 void* cpu_to_fdt64 (void*) ;
 struct data data_append_data (struct data,struct fdt_reserve_entry*,int) ;

struct data data_append_re(struct data d, const struct fdt_reserve_entry *re)
{
 struct fdt_reserve_entry bere;

 bere.address = cpu_to_fdt64(re->address);
 bere.size = cpu_to_fdt64(re->size);

 return data_append_data(d, &bere, sizeof(bere));
}
