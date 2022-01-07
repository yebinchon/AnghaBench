
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int uint8_t ;
struct section {int * name; } ;
struct readelf {size_t shnum; scalar_t__ (* dw_decode ) (int **,int) ;int dbg; struct section* sl; } ;
struct TYPE_3__ {int * signature; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__ Dwarf_Sig8 ;
typedef scalar_t__ Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Die ;
typedef scalar_t__ Dwarf_Bool ;


 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_TAG_compile_unit ;
 scalar_t__ DW_TAG_type_unit ;
 int dump_dwarf_die (struct readelf*,int *,int ) ;
 int dwarf_die_CU_offset_range (int *,scalar_t__*,scalar_t__*,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_next_cu_header_c (int ,scalar_t__,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,TYPE_1__*,scalar_t__*,int *,int *) ;
 int dwarf_next_types_section (int ,int *) ;
 int dwarf_siblingof_b (int ,int *,int **,scalar_t__,int *) ;
 int dwarf_tag (int *,scalar_t__*,int *) ;
 int printf (char*,scalar_t__,...) ;
 int set_cu_context (struct readelf*,scalar_t__,scalar_t__,scalar_t__) ;
 int strcmp (int *,char const*) ;
 scalar_t__ stub1 (int **,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
dump_dwarf_info(struct readelf *re, Dwarf_Bool is_info)
{
 struct section *s;
 Dwarf_Die die;
 Dwarf_Error de;
 Dwarf_Half tag, version, pointer_size, off_size;
 Dwarf_Off cu_offset, cu_length;
 Dwarf_Off aboff;
 Dwarf_Unsigned typeoff;
 Dwarf_Sig8 sig8;
 Dwarf_Unsigned sig;
 uint8_t *p;
 const char *sn;
 int i, ret;

 sn = is_info ? ".debug_info" : ".debug_types";

 s = ((void*)0);
 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && !strcmp(s->name, sn))
   break;
 }
 if ((size_t) i >= re->shnum)
  return;

 do {
  printf("\nDump of debug contents of section %s:\n", sn);

  while ((ret = dwarf_next_cu_header_c(re->dbg, is_info, ((void*)0),
      &version, &aboff, &pointer_size, &off_size, ((void*)0), &sig8,
      &typeoff, ((void*)0), &de)) == DW_DLV_OK) {
   set_cu_context(re, pointer_size, off_size, version);
   die = ((void*)0);
   while (dwarf_siblingof_b(re->dbg, die, &die, is_info,
       &de) == DW_DLV_OK) {
    if (dwarf_tag(die, &tag, &de) != DW_DLV_OK) {
     warnx("dwarf_tag failed: %s",
         dwarf_errmsg(de));
     continue;
    }

    if ((is_info && tag == DW_TAG_compile_unit) ||
        (!is_info && tag == DW_TAG_type_unit))
     break;
   }
   if (die == ((void*)0) && is_info) {
    warnx("could not find DW_TAG_compile_unit "
        "die");
    continue;
   } else if (die == ((void*)0) && !is_info) {
    warnx("could not find DW_TAG_type_unit die");
    continue;
   }

   if (dwarf_die_CU_offset_range(die, &cu_offset,
       &cu_length, &de) != DW_DLV_OK) {
    warnx("dwarf_die_CU_offset failed: %s",
        dwarf_errmsg(de));
    continue;
   }

   cu_length -= off_size == 4 ? 4 : 12;

   sig = 0;
   if (!is_info) {
    p = (uint8_t *)(uintptr_t) &sig8.signature[0];
    sig = re->dw_decode(&p, 8);
   }

   printf("\n  Type Unit @ offset 0x%jx:\n",
       (uintmax_t) cu_offset);
   printf("    Length:\t\t%#jx (%d-bit)\n",
       (uintmax_t) cu_length, off_size == 4 ? 32 : 64);
   printf("    Version:\t\t%u\n", version);
   printf("    Abbrev Offset:\t0x%jx\n",
       (uintmax_t) aboff);
   printf("    Pointer Size:\t%u\n", pointer_size);
   if (!is_info) {
    printf("    Signature:\t\t0x%016jx\n",
        (uintmax_t) sig);
    printf("    Type Offset:\t0x%jx\n",
        (uintmax_t) typeoff);
   }

   dump_dwarf_die(re, die, 0);
  }
  if (ret == DW_DLV_ERROR)
   warnx("dwarf_next_cu_header: %s", dwarf_errmsg(de));
  if (is_info)
   break;
 } while (dwarf_next_types_section(re->dbg, &de) == DW_DLV_OK);
}
