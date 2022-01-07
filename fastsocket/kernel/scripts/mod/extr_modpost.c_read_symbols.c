
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct module {int skip; int gpl_compatible; int unres; int srcversion; } ;
struct elf_info {char* strtab; scalar_t__ hdr; scalar_t__ modinfo; int modinfo_len; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_4__ {int st_name; } ;
typedef TYPE_1__ Elf_Sym ;


 scalar_t__ all_versions ;
 int alloc_symbol (char*,int ,int ) ;
 int check_sec_ref (struct module*,char*,struct elf_info*) ;
 int get_markers (struct elf_info*,struct module*) ;
 char* get_modinfo (scalar_t__,int ,char*) ;
 char* get_next_modinfo (scalar_t__,int ,char*,char*) ;
 int get_src_version (char*,int ,int) ;
 int handle_moddevtable (struct module*,struct elf_info*,TYPE_1__*,char const*) ;
 int handle_modversions (struct module*,struct elf_info*,TYPE_1__*,char const*) ;
 int have_vmlinux ;
 scalar_t__ is_vmlinux (char*) ;
 scalar_t__ license_is_gpl_compatible (char*) ;
 int maybe_frob_rcs_version (char*,char*,scalar_t__,int) ;
 scalar_t__ modversions ;
 struct module* new_module (char*) ;
 int parse_elf (struct elf_info*,char*) ;
 int parse_elf_finish (struct elf_info*) ;
 scalar_t__ vmlinux_section_warnings ;
 int warn (char*,char*) ;

__attribute__((used)) static void read_symbols(char *modname)
{
 const char *symname;
 char *version;
 char *license;
 struct module *mod;
 struct elf_info info = { };
 Elf_Sym *sym;

 if (!parse_elf(&info, modname))
  return;

 mod = new_module(modname);



 if (is_vmlinux(modname)) {
  have_vmlinux = 1;
  mod->skip = 1;
 }

 license = get_modinfo(info.modinfo, info.modinfo_len, "license");
 if (info.modinfo && !license && !is_vmlinux(modname))
  warn("modpost: missing MODULE_LICENSE() in %s\n"
       "see include/linux/module.h for "
       "more information\n", modname);
 while (license) {
  if (license_is_gpl_compatible(license))
   mod->gpl_compatible = 1;
  else {
   mod->gpl_compatible = 0;
   break;
  }
  license = get_next_modinfo(info.modinfo, info.modinfo_len,
        "license", license);
 }

 for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
  symname = info.strtab + sym->st_name;

  handle_modversions(mod, &info, sym, symname);
  handle_moddevtable(mod, &info, sym, symname);
 }
 if (!is_vmlinux(modname) ||
      (is_vmlinux(modname) && vmlinux_section_warnings))
  check_sec_ref(mod, modname, &info);

 version = get_modinfo(info.modinfo, info.modinfo_len, "version");
 if (version)
  maybe_frob_rcs_version(modname, version, info.modinfo,
           version - (char *)info.hdr);
 if (version || (all_versions && !is_vmlinux(modname)))
  get_src_version(modname, mod->srcversion,
    sizeof(mod->srcversion)-1);

 get_markers(&info, mod);

 parse_elf_finish(&info);





 if (modversions)
  mod->unres = alloc_symbol("module_layout", 0, mod->unres);
}
