
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_device_id {scalar_t__ id; } ;
struct module {int dev_table_buf; int name; } ;
typedef int acpi_id ;


 int buf_printf (int *,char*,char const*) ;
 int device_id_check (int ,char*,unsigned long,unsigned long const,void*) ;
 char toupper (char const) ;

__attribute__((used)) static void do_pnp_device_entry(void *symval, unsigned long size,
    struct module *mod)
{
 const unsigned long id_size = sizeof(struct pnp_device_id);
 const unsigned int count = (size / id_size)-1;
 const struct pnp_device_id *devs = symval;
 unsigned int i;

 device_id_check(mod->name, "pnp", size, id_size, symval);

 for (i = 0; i < count; i++) {
  const char *id = (char *)devs[i].id;
  char acpi_id[sizeof(devs[0].id)];
  int j;

  buf_printf(&mod->dev_table_buf,
      "MODULE_ALIAS(\"pnp:d%s*\");\n", id);


  for (j = 0; j < sizeof(acpi_id); j++)
   acpi_id[j] = toupper(id[j]);
  buf_printf(&mod->dev_table_buf,
      "MODULE_ALIAS(\"acpi*:%s:*\");\n", acpi_id);
 }
}
