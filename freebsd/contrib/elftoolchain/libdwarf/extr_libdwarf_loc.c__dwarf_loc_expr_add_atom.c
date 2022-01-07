
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int buf ;
struct TYPE_4__ {int dbg_pointer_size; int (* write ) (int *,int *,int ,int) ;} ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int) ;
 int DW_DLE_LOC_EXPR_BAD ;
 int DW_DLE_NONE ;
 int _dwarf_write_sleb128 (int *,int *,int ) ;
 int _dwarf_write_uleb128 (int *,int *,int ) ;
 int assert (int) ;
 int stub1 (int *,int *,int ,int) ;
 int stub2 (int *,int *,int ,int) ;
 int stub3 (int *,int *,int ,int) ;
 int stub4 (int *,int *,int ,int) ;

int
_dwarf_loc_expr_add_atom(Dwarf_Debug dbg, uint8_t *out, uint8_t *end,
    Dwarf_Small atom, Dwarf_Unsigned operand1, Dwarf_Unsigned operand2,
    int *length, Dwarf_Error *error)
{
 uint8_t buf[64];
 uint8_t *p, *pe;
 uint64_t offset;
 int len;

 if (out != ((void*)0) && end != ((void*)0)) {
  p = out;
  pe = end;
 } else {
  p = out = buf;
  pe = &buf[sizeof(buf)];
 }

 switch (atom) {

 case 225:
 case 169:
 case 168:
 case 157:
 case 146:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 167:
 case 166:
 case 165:
 case 164:
 case 163:
 case 162:
 case 161:
 case 160:
 case 159:
 case 158:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 145:
 case 144:

 case 215:
 case 214:
 case 203:
 case 192:
 case 189:
 case 188:
 case 187:
 case 186:
 case 185:
 case 184:
 case 213:
 case 212:
 case 211:
 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:
 case 204:
 case 202:
 case 201:
 case 200:
 case 199:
 case 198:
 case 197:
 case 196:
 case 195:
 case 194:
 case 193:
 case 191:
 case 190:

 case 221:
 case 222:

 case 174:

 case 131:
 case 136:
 case 130:

 case 272:
 case 270:
 case 223:
 case 182:
 case 181:
 case 180:
 case 178:
 case 176:
 case 175:
 case 171:

 case 135:
 case 134:
 case 133:
 case 128:

 case 220:
 case 218:
 case 217:
 case 216:
 case 183:
 case 179:

 case 177:
 case 273:
  *p++ = atom;
  break;


 case 234:
 case 235:
 case 173:
 case 224:
 case 129:
  *p++ = atom;
  *p++ = (uint8_t) operand1;
  break;


 case 232:
 case 233:
 case 269:
 case 132:
  *p++ = atom;
  offset = 0;
  dbg->write(p, &offset, operand1, 2);
  p += 2;
  break;


 case 230:
 case 231:
  *p++ = atom;
  offset = 0;
  dbg->write(p, &offset, operand1, 4);
  p += 4;
  break;


 case 228:
 case 229:
  *p++ = atom;
  offset = 0;
  dbg->write(p, &offset, operand1, 8);
  p += 8;
  break;


 case 226:
 case 170:
 case 137:
 case 172:
  *p++ = atom;
  len = _dwarf_write_uleb128(p, pe, operand1);
  assert(len > 0);
  p += len;
  break;


 case 227:
 case 268:
 case 267:
 case 256:
 case 245:
 case 242:
 case 241:
 case 240:
 case 239:
 case 238:
 case 237:
 case 266:
 case 265:
 case 264:
 case 263:
 case 262:
 case 261:
 case 260:
 case 259:
 case 258:
 case 257:
 case 255:
 case 254:
 case 253:
 case 252:
 case 251:
 case 250:
 case 249:
 case 248:
 case 247:
 case 246:
 case 244:
 case 243:
 case 219:
  *p++ = atom;
  len = _dwarf_write_sleb128(p, pe, operand1);
  assert(len > 0);
  p += len;
  break;





 case 236:
  *p++ = atom;
  len = _dwarf_write_uleb128(p, pe, operand1);
  assert(len > 0);
  p += len;
  len = _dwarf_write_sleb128(p, pe, operand2);
  assert(len > 0);
  p += len;
  break;


 case 271:
  *p++ = atom;
  offset = 0;
  dbg->write(p, &offset, operand1, dbg->dbg_pointer_size);
  p += dbg->dbg_pointer_size;
  break;


 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_LOC_EXPR_BAD);
  return (DW_DLE_LOC_EXPR_BAD);
 }

 if (length)
  *length = p - out;

 return (DW_DLE_NONE);
}
