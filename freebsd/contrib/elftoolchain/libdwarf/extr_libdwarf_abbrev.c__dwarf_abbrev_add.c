
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
struct _Dwarf_Abbrev {int dummy; } ;
struct TYPE_8__ {int ab_attrdef; scalar_t__ ab_atnum; scalar_t__ ab_length; void* ab_offset; int ab_children; void* ab_tag; void* ab_entry; } ;
struct TYPE_7__ {int cu_abbrev_hash; int * cu_dbg; } ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_1__* Dwarf_CU ;
typedef TYPE_2__* Dwarf_Abbrev ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int HASH_ADD (int ,int ,int ,int,TYPE_2__*) ;
 int STAILQ_INIT (int *) ;
 int ab_entry ;
 int ab_hh ;
 TYPE_2__* malloc (int) ;

int
_dwarf_abbrev_add(Dwarf_CU cu, uint64_t entry, uint64_t tag, uint8_t children,
    uint64_t aboff, Dwarf_Abbrev *abp, Dwarf_Error *error)
{
 Dwarf_Abbrev ab;
 Dwarf_Debug dbg;

 dbg = cu != ((void*)0) ? cu->cu_dbg : ((void*)0);

 if ((ab = malloc(sizeof(struct _Dwarf_Abbrev))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }


 ab->ab_entry = entry;
 ab->ab_tag = tag;
 ab->ab_children = children;
 ab->ab_offset = aboff;
 ab->ab_length = 0;
 ab->ab_atnum = 0;


 STAILQ_INIT(&ab->ab_attrdef);


 if (cu != ((void*)0))
  HASH_ADD(ab_hh, cu->cu_abbrev_hash, ab_entry,
      sizeof(ab->ab_entry), ab);

 if (abp != ((void*)0))
  *abp = ab;

 return (DW_DLE_NONE);
}
