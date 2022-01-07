
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_7__ {int cie_addrsize; } ;
struct TYPE_6__ {scalar_t__ (* read ) (int*,scalar_t__*,int) ;} ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;
typedef TYPE_2__* Dwarf_Cie ;
typedef scalar_t__ Dwarf_Addr ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int) ;
 int DW_DLE_FRAME_AUGMENTATION_UNKNOWN ;
 int DW_DLE_NONE ;

 int DW_EH_PE_omit ;
 int DW_EH_PE_pcrel ;
 scalar_t__ _dwarf_read_sleb128 (int*,scalar_t__*) ;
 scalar_t__ _dwarf_read_uleb128 (int*,scalar_t__*) ;
 scalar_t__ stub1 (int*,scalar_t__*,int) ;
 scalar_t__ stub2 (int*,scalar_t__*,int) ;
 scalar_t__ stub3 (int*,scalar_t__*,int) ;
 scalar_t__ stub4 (int*,scalar_t__*,int) ;
 scalar_t__ stub5 (int*,scalar_t__*,int) ;
 scalar_t__ stub6 (int*,scalar_t__*,int) ;
 scalar_t__ stub7 (int*,scalar_t__*,int) ;

__attribute__((used)) static int
_dwarf_frame_read_lsb_encoded(Dwarf_Debug dbg, Dwarf_Cie cie, uint64_t *val,
    uint8_t *data, uint64_t *offsetp, uint8_t encode, Dwarf_Addr pc,
    Dwarf_Error *error)
{
 uint8_t application;

 if (encode == DW_EH_PE_omit)
  return (DW_DLE_NONE);

 application = encode & 0xf0;
 encode &= 0x0f;

 switch (encode) {
 case 136:
  *val = dbg->read(data, offsetp, cie->cie_addrsize);
  break;
 case 128:
  *val = _dwarf_read_uleb128(data, offsetp);
  break;
 case 131:
  *val = dbg->read(data, offsetp, 2);
  break;
 case 130:
  *val = dbg->read(data, offsetp, 4);
  break;
 case 129:
  *val = dbg->read(data, offsetp, 8);
  break;
 case 132:
  *val = _dwarf_read_sleb128(data, offsetp);
  break;
 case 135:
  *val = (int16_t) dbg->read(data, offsetp, 2);
  break;
 case 134:
  *val = (int32_t) dbg->read(data, offsetp, 4);
  break;
 case 133:
  *val = dbg->read(data, offsetp, 8);
  break;
 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_FRAME_AUGMENTATION_UNKNOWN);
  return (DW_DLE_FRAME_AUGMENTATION_UNKNOWN);
 }

 if (application == DW_EH_PE_pcrel) {



  switch (encode) {
  case 128:
  case 131:
  case 130:
  case 129:
   *val += pc;
   break;
  case 132:
  case 135:
  case 134:
  case 133:
   *val = pc + (int64_t) *val;
   break;
  default:

   break;
  }
 }



 return (DW_DLE_NONE);
}
