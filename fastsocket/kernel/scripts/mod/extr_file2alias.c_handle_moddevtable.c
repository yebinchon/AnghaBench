
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct virtio_device_id {int dummy; } ;
struct vio_device_id {int dummy; } ;
struct ssb_device_id {int dummy; } ;
struct spi_device_id {int dummy; } ;
struct serio_device_id {int dummy; } ;
struct sdio_device_id {int dummy; } ;
struct platform_device_id {int dummy; } ;
struct pcmcia_device_id {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct parisc_device_id {int dummy; } ;
struct of_device_id {int dummy; } ;
struct module {int dummy; } ;
struct mdio_device_id {int dummy; } ;
struct input_device_id {int dummy; } ;
struct ieee1394_device_id {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hid_device_id {int dummy; } ;
struct elf_info {TYPE_2__* sechdrs; TYPE_1__* hdr; } ;
struct eisa_device_id {int dummy; } ;
struct dmi_system_id {int dummy; } ;
struct css_device_id {int dummy; } ;
struct ccw_device_id {int dummy; } ;
struct bcma_device_id {int dummy; } ;
struct ap_device_id {int dummy; } ;
struct acpi_device_id {int dummy; } ;
struct TYPE_7__ {size_t st_shndx; int st_value; int st_size; } ;
struct TYPE_6__ {int sh_type; int sh_offset; } ;
struct TYPE_5__ {size_t e_shnum; } ;
typedef TYPE_3__ Elf_Sym ;


 int SHT_NOBITS ;
 char* calloc (int,int ) ;
 int do_acpi_entry ;
 int do_ap_entry ;
 int do_bcma_entry ;
 int do_ccw_entry ;
 int do_css_entry ;
 int do_dmi_entry ;
 int do_eisa_entry ;
 int do_hid_entry ;
 int do_i2c_entry ;
 int do_ieee1394_entry ;
 int do_input_entry ;
 int do_mdio_entry ;
 int do_of_entry ;
 int do_parisc_entry ;
 int do_pci_entry ;
 int do_pcmcia_entry ;
 int do_platform_entry ;
 int do_pnp_card_entries (void*,int ,struct module*) ;
 int do_pnp_device_entry (void*,int ,struct module*) ;
 int do_sdio_entry ;
 int do_serio_entry ;
 int do_spi_entry ;
 int do_ssb_entry ;
 int do_table (void*,int ,int,char*,int ,struct module*) ;
 int do_usb_table (void*,int ,struct module*) ;
 int do_vio_entry ;
 int do_virtio_entry ;
 int do_vmbus_entry ;
 int free (char*) ;
 scalar_t__ sym_is (char const*,char*) ;

void handle_moddevtable(struct module *mod, struct elf_info *info,
   Elf_Sym *sym, const char *symname)
{
 void *symval;
 char *zeros = ((void*)0);


 if (!sym->st_shndx || sym->st_shndx >= info->hdr->e_shnum)
  return;


 if (info->sechdrs[sym->st_shndx].sh_type & SHT_NOBITS) {
  zeros = calloc(1, sym->st_size);
  symval = zeros;
 } else {
  symval = (void *)info->hdr
   + info->sechdrs[sym->st_shndx].sh_offset
   + sym->st_value;
 }

 if (sym_is(symname, "__mod_pci_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct pci_device_id), "pci",
    do_pci_entry, mod);
 else if (sym_is(symname, "__mod_usb_device_table"))

  do_usb_table(symval, sym->st_size, mod);
 else if (sym_is(symname, "__mod_hid_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct hid_device_id), "hid",
    do_hid_entry, mod);
 else if (sym_is(symname, "__mod_ieee1394_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct ieee1394_device_id), "ieee1394",
    do_ieee1394_entry, mod);
 else if (sym_is(symname, "__mod_ccw_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct ccw_device_id), "ccw",
    do_ccw_entry, mod);
 else if (sym_is(symname, "__mod_ap_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct ap_device_id), "ap",
    do_ap_entry, mod);
 else if (sym_is(symname, "__mod_css_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct css_device_id), "css",
    do_css_entry, mod);
 else if (sym_is(symname, "__mod_serio_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct serio_device_id), "serio",
    do_serio_entry, mod);
 else if (sym_is(symname, "__mod_acpi_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct acpi_device_id), "acpi",
    do_acpi_entry, mod);
 else if (sym_is(symname, "__mod_pnp_device_table"))
  do_pnp_device_entry(symval, sym->st_size, mod);
 else if (sym_is(symname, "__mod_pnp_card_device_table"))
  do_pnp_card_entries(symval, sym->st_size, mod);
 else if (sym_is(symname, "__mod_pcmcia_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct pcmcia_device_id), "pcmcia",
    do_pcmcia_entry, mod);
        else if (sym_is(symname, "__mod_of_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct of_device_id), "of",
    do_of_entry, mod);
        else if (sym_is(symname, "__mod_vio_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct vio_device_id), "vio",
    do_vio_entry, mod);
 else if (sym_is(symname, "__mod_input_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct input_device_id), "input",
    do_input_entry, mod);
 else if (sym_is(symname, "__mod_eisa_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct eisa_device_id), "eisa",
    do_eisa_entry, mod);
 else if (sym_is(symname, "__mod_parisc_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct parisc_device_id), "parisc",
    do_parisc_entry, mod);
 else if (sym_is(symname, "__mod_sdio_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct sdio_device_id), "sdio",
    do_sdio_entry, mod);
 else if (sym_is(symname, "__mod_ssb_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct ssb_device_id), "ssb",
    do_ssb_entry, mod);
 else if (sym_is(symname, "__mod_bcma_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct bcma_device_id), "bcma",
    do_bcma_entry, mod);
 else if (sym_is(symname, "__mod_virtio_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct virtio_device_id), "virtio",
    do_virtio_entry, mod);
 else if (sym_is(symname, "__mod_vmbus_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct hv_vmbus_device_id), "vmbus",
    do_vmbus_entry, mod);
 else if (sym_is(symname, "__mod_i2c_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct i2c_device_id), "i2c",
    do_i2c_entry, mod);
 else if (sym_is(symname, "__mod_spi_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct spi_device_id), "spi",
    do_spi_entry, mod);
 else if (sym_is(symname, "__mod_dmi_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct dmi_system_id), "dmi",
    do_dmi_entry, mod);
 else if (sym_is(symname, "__mod_platform_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct platform_device_id), "platform",
    do_platform_entry, mod);
 else if (sym_is(symname, "__mod_mdio_device_table"))
  do_table(symval, sym->st_size,
    sizeof(struct mdio_device_id), "mdio",
    do_mdio_entry, mod);
 free(zeros);
}
