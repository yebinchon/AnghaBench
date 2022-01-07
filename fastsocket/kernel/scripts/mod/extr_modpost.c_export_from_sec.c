
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {scalar_t__ export_sec; scalar_t__ export_unused_sec; scalar_t__ export_gpl_sec; scalar_t__ export_unused_gpl_sec; scalar_t__ export_gpl_future_sec; } ;
typedef enum export { ____Placeholder_export } export ;
typedef scalar_t__ Elf_Section ;


 int export_gpl ;
 int export_gpl_future ;
 int export_plain ;
 int export_unknown ;
 int export_unused ;
 int export_unused_gpl ;

__attribute__((used)) static enum export export_from_sec(struct elf_info *elf, Elf_Section sec)
{
 if (sec == elf->export_sec)
  return export_plain;
 else if (sec == elf->export_unused_sec)
  return export_unused;
 else if (sec == elf->export_gpl_sec)
  return export_gpl;
 else if (sec == elf->export_unused_gpl_sec)
  return export_unused_gpl;
 else if (sec == elf->export_gpl_future_sec)
  return export_gpl_future;
 else
  return export_unknown;
}
