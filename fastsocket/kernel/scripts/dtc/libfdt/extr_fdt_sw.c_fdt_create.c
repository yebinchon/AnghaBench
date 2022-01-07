
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;


 int FDT_ALIGN (int,int) ;
 int FDT_ERR_NOSPACE ;
 int FDT_FIRST_SUPPORTED_VERSION ;
 int FDT_LAST_SUPPORTED_VERSION ;
 int FDT_SW_MAGIC ;
 int fdt_off_mem_rsvmap (void*) ;
 int fdt_set_last_comp_version (void*,int ) ;
 int fdt_set_magic (void*,int ) ;
 int fdt_set_off_dt_strings (void*,int) ;
 int fdt_set_off_dt_struct (void*,int ) ;
 int fdt_set_off_mem_rsvmap (void*,int ) ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_set_version (void*,int ) ;
 int memset (void*,int ,int) ;

int fdt_create(void *buf, int bufsize)
{
 void *fdt = buf;

 if (bufsize < sizeof(struct fdt_header))
  return -FDT_ERR_NOSPACE;

 memset(buf, 0, bufsize);

 fdt_set_magic(fdt, FDT_SW_MAGIC);
 fdt_set_version(fdt, FDT_LAST_SUPPORTED_VERSION);
 fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
 fdt_set_totalsize(fdt, bufsize);

 fdt_set_off_mem_rsvmap(fdt, FDT_ALIGN(sizeof(struct fdt_header),
           sizeof(struct fdt_reserve_entry)));
 fdt_set_off_dt_struct(fdt, fdt_off_mem_rsvmap(fdt));
 fdt_set_off_dt_strings(fdt, bufsize);

 return 0;
}
