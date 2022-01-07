
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int uint64_t ;
struct TYPE_5__ {size_t* fsm_typesz; size_t* fsm_enc; } ;
typedef TYPE_1__ fp_size_map_t ;
struct TYPE_6__ {int dw_ptrsz; } ;
typedef TYPE_2__ dwarf_t ;
typedef scalar_t__ Dwarf_Signed ;
typedef int Dwarf_Off ;


 scalar_t__ DW_ATE_SUN_imaginary_float ;
 scalar_t__ DW_ATE_complex_float ;
 scalar_t__ DW_ATE_imaginary_float ;
 TYPE_1__* fp_encodings ;
 int terminate (char*,int ,size_t) ;

__attribute__((used)) static uint_t
die_base_type2enc(dwarf_t *dw, Dwarf_Off off, Dwarf_Signed enc, size_t sz)
{
 const fp_size_map_t *map = fp_encodings;
 uint_t szidx = dw->dw_ptrsz == sizeof (uint64_t);
 uint_t mult = 1, col = 0;

 if (enc == DW_ATE_complex_float) {
  mult = 2;
  col = 1;
 } else if (enc == DW_ATE_imaginary_float



     )
  col = 2;

 while (map->fsm_typesz[szidx] != 0) {
  if (map->fsm_typesz[szidx] * mult == sz)
   return (map->fsm_enc[col]);
  map++;
 }

 terminate("die %llu: unrecognized real type size %u\n", off, sz);

 return (0);
}
