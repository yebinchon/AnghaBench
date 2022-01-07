
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {int bl_len; void* bl_data; } ;
struct _Dwarf_Attribute {int at_offset; int at_form; int at_indirect; TYPE_2__* u; TYPE_1__ at_block; int * at_ld; int at_attrib; int at_die; } ;
typedef int atref ;
struct TYPE_18__ {int ad_form; int ad_attrib; } ;
struct TYPE_17__ {int cu_pointer_size; int cu_version; } ;
struct TYPE_16__ {int (* read ) (int ,int*,int) ;} ;
struct TYPE_15__ {int ds_data; int ds_size; } ;
struct TYPE_14__ {int u64; int s; void* u8p; int s64; } ;
typedef TYPE_3__ Dwarf_Section ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef TYPE_4__* Dwarf_Debug ;
typedef TYPE_5__* Dwarf_CU ;
typedef TYPE_6__* Dwarf_AttrDef ;


 int DWARF_SET_ERROR (TYPE_4__*,int *,int) ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLE_NONE ;
 int _dwarf_attr_add (int ,struct _Dwarf_Attribute*,int *,int *) ;
 void* _dwarf_read_block (int ,int*,int) ;
 int _dwarf_read_sleb128 (int ,int*) ;
 int _dwarf_read_string (int ,int ,int*) ;
 void* _dwarf_read_uleb128 (int ,int*) ;
 int _dwarf_strtab_get_table (TYPE_4__*) ;
 int memset (struct _Dwarf_Attribute*,int ,int) ;
 int stub1 (int ,int*,int) ;
 int stub10 (int ,int*,int) ;
 int stub11 (int ,int*,int) ;
 int stub12 (int ,int*,int) ;
 int stub2 (int ,int*,int) ;
 int stub3 (int ,int*,int) ;
 int stub4 (int ,int*,int) ;
 int stub5 (int ,int*,int) ;
 int stub6 (int ,int*,int) ;
 int stub7 (int ,int*,int) ;
 int stub8 (int ,int*,int) ;
 int stub9 (int ,int*,int) ;

int
_dwarf_attr_init(Dwarf_Debug dbg, Dwarf_Section *ds, uint64_t *offsetp,
    int dwarf_size, Dwarf_CU cu, Dwarf_Die die, Dwarf_AttrDef ad,
    uint64_t form, int indirect, Dwarf_Error *error)
{
 struct _Dwarf_Attribute atref;
 int ret;

 ret = DW_DLE_NONE;
 memset(&atref, 0, sizeof(atref));
 atref.at_die = die;
 atref.at_offset = *offsetp;
 atref.at_attrib = ad->ad_attrib;
 atref.at_form = indirect ? form : ad->ad_form;
 atref.at_indirect = indirect;
 atref.at_ld = ((void*)0);

 switch (form) {
 case 152:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
      cu->cu_pointer_size);
  break;
 case 151:
 case 143:
  atref.u[0].u64 = _dwarf_read_uleb128(ds->ds_data, offsetp);
  atref.u[1].u8p = _dwarf_read_block(ds->ds_data, offsetp,
      atref.u[0].u64);
  break;
 case 150:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 1);
  atref.u[1].u8p = _dwarf_read_block(ds->ds_data, offsetp,
      atref.u[0].u64);
  break;
 case 149:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 2);
  atref.u[1].u8p = _dwarf_read_block(ds->ds_data, offsetp,
      atref.u[0].u64);
  break;
 case 148:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 4);
  atref.u[1].u8p = _dwarf_read_block(ds->ds_data, offsetp,
      atref.u[0].u64);
  break;
 case 147:
 case 142:
 case 139:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 1);
  break;
 case 146:
 case 138:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 2);
  break;
 case 145:
 case 137:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 4);
  break;
 case 144:
 case 136:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, 8);
  break;
 case 140:
  form = _dwarf_read_uleb128(ds->ds_data, offsetp);
  return (_dwarf_attr_init(dbg, ds, offsetp, dwarf_size, cu, die,
      ad, form, 1, error));
 case 135:
  if (cu->cu_version == 2)
   atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
       cu->cu_pointer_size);
  else
   atref.u[0].u64 = dbg->read(ds->ds_data, offsetp,
       dwarf_size);
  break;
 case 133:
 case 128:
  atref.u[0].u64 = _dwarf_read_uleb128(ds->ds_data, offsetp);
  break;
 case 132:
  atref.u[0].s64 = _dwarf_read_sleb128(ds->ds_data, offsetp);
  break;
 case 131:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, dwarf_size);
  break;
 case 130:
  atref.u[0].s = _dwarf_read_string(ds->ds_data, ds->ds_size,
      offsetp);
  break;
 case 129:
  atref.u[0].u64 = dbg->read(ds->ds_data, offsetp, dwarf_size);
  atref.u[1].s = _dwarf_strtab_get_table(dbg) + atref.u[0].u64;
  break;
 case 134:
  atref.u[0].u64 = 8;
  atref.u[1].u8p = _dwarf_read_block(ds->ds_data, offsetp,
      atref.u[0].u64);
  break;
 case 141:

  atref.u[0].u64 = 1;
  break;
 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  ret = DW_DLE_ATTR_FORM_BAD;
  break;
 }

 if (ret == DW_DLE_NONE) {
  if (form == 151 || form == 150 ||
      form == 149 || form == 148) {
   atref.at_block.bl_len = atref.u[0].u64;
   atref.at_block.bl_data = atref.u[1].u8p;
  }
  ret = _dwarf_attr_add(die, &atref, ((void*)0), error);
 }

 return (ret);
}
