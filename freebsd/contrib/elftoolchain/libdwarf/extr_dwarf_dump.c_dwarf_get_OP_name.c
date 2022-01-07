
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_OP_name(unsigned op, const char **s)
{

 assert(s != ((void*)0));

 switch (op) {
 case 229:
  *s = "DW_OP_deref"; break;
 case 170:
  *s = "DW_OP_reg0"; break;
 case 169:
  *s = "DW_OP_reg1"; break;
 case 158:
  *s = "DW_OP_reg2"; break;
 case 147:
  *s = "DW_OP_reg3"; break;
 case 144:
  *s = "DW_OP_reg4"; break;
 case 143:
  *s = "DW_OP_reg5"; break;
 case 142:
  *s = "DW_OP_reg6"; break;
 case 141:
  *s = "DW_OP_reg7"; break;
 case 140:
  *s = "DW_OP_reg8"; break;
 case 139:
  *s = "DW_OP_reg9"; break;
 case 168:
  *s = "DW_OP_reg10"; break;
 case 167:
  *s = "DW_OP_reg11"; break;
 case 166:
  *s = "DW_OP_reg12"; break;
 case 165:
  *s = "DW_OP_reg13"; break;
 case 164:
  *s = "DW_OP_reg14"; break;
 case 163:
  *s = "DW_OP_reg15"; break;
 case 162:
  *s = "DW_OP_reg16"; break;
 case 161:
  *s = "DW_OP_reg17"; break;
 case 160:
  *s = "DW_OP_reg18"; break;
 case 159:
  *s = "DW_OP_reg19"; break;
 case 157:
  *s = "DW_OP_reg20"; break;
 case 156:
  *s = "DW_OP_reg21"; break;
 case 155:
  *s = "DW_OP_reg22"; break;
 case 154:
  *s = "DW_OP_reg23"; break;
 case 153:
  *s = "DW_OP_reg24"; break;
 case 152:
  *s = "DW_OP_reg25"; break;
 case 151:
  *s = "DW_OP_reg26"; break;
 case 150:
  *s = "DW_OP_reg27"; break;
 case 149:
  *s = "DW_OP_reg28"; break;
 case 148:
  *s = "DW_OP_reg29"; break;
 case 146:
  *s = "DW_OP_reg30"; break;
 case 145:
  *s = "DW_OP_reg31"; break;
 case 217:
  *s = "DW_OP_lit0"; break;
 case 216:
  *s = "DW_OP_lit1"; break;
 case 205:
  *s = "DW_OP_lit2"; break;
 case 194:
  *s = "DW_OP_lit3"; break;
 case 191:
  *s = "DW_OP_lit4"; break;
 case 190:
  *s = "DW_OP_lit5"; break;
 case 189:
  *s = "DW_OP_lit6"; break;
 case 188:
  *s = "DW_OP_lit7"; break;
 case 187:
  *s = "DW_OP_lit8"; break;
 case 186:
  *s = "DW_OP_lit9"; break;
 case 215:
  *s = "DW_OP_lit10"; break;
 case 214:
  *s = "DW_OP_lit11"; break;
 case 213:
  *s = "DW_OP_lit12"; break;
 case 212:
  *s = "DW_OP_lit13"; break;
 case 211:
  *s = "DW_OP_lit14"; break;
 case 210:
  *s = "DW_OP_lit15"; break;
 case 209:
  *s = "DW_OP_lit16"; break;
 case 208:
  *s = "DW_OP_lit17"; break;
 case 207:
  *s = "DW_OP_lit18"; break;
 case 206:
  *s = "DW_OP_lit19"; break;
 case 204:
  *s = "DW_OP_lit20"; break;
 case 203:
  *s = "DW_OP_lit21"; break;
 case 202:
  *s = "DW_OP_lit22"; break;
 case 201:
  *s = "DW_OP_lit23"; break;
 case 200:
  *s = "DW_OP_lit24"; break;
 case 199:
  *s = "DW_OP_lit25"; break;
 case 198:
  *s = "DW_OP_lit26"; break;
 case 197:
  *s = "DW_OP_lit27"; break;
 case 196:
  *s = "DW_OP_lit28"; break;
 case 195:
  *s = "DW_OP_lit29"; break;
 case 193:
  *s = "DW_OP_lit30"; break;
 case 192:
  *s = "DW_OP_lit31"; break;
 case 225:
  *s = "DW_OP_dup"; break;
 case 226:
  *s = "DW_OP_drop"; break;
 case 176:
  *s = "DW_OP_over"; break;
 case 131:
  *s = "DW_OP_swap"; break;
 case 137:
  *s = "DW_OP_rot"; break;
 case 130:
  *s = "DW_OP_xderef"; break;
 case 281:
  *s = "DW_OP_abs"; break;
 case 279:
  *s = "DW_OP_and"; break;
 case 227:
  *s = "DW_OP_div"; break;
 case 184:
  *s = "DW_OP_minus"; break;
 case 183:
  *s = "DW_OP_mod"; break;
 case 182:
  *s = "DW_OP_mul"; break;
 case 180:
  *s = "DW_OP_neg"; break;
 case 178:
  *s = "DW_OP_not"; break;
 case 177:
  *s = "DW_OP_or"; break;
 case 173:
  *s = "DW_OP_plus"; break;
 case 136:
  *s = "DW_OP_shl"; break;
 case 135:
  *s = "DW_OP_shr"; break;
 case 134:
  *s = "DW_OP_shra"; break;
 case 128:
  *s = "DW_OP_xor"; break;
 case 224:
  *s = "DW_OP_eq"; break;
 case 221:
  *s = "DW_OP_ge"; break;
 case 220:
  *s = "DW_OP_gt"; break;
 case 218:
  *s = "DW_OP_le"; break;
 case 185:
  *s = "DW_OP_lt"; break;
 case 181:
  *s = "DW_OP_ne"; break;
 case 179:
  *s = "DW_OP_nop"; break;
 case 238:
  *s = "DW_OP_const1u"; break;
 case 239:
  *s = "DW_OP_const1s"; break;
 case 175:
  *s = "DW_OP_pick"; break;
 case 228:
  *s = "DW_OP_deref_size"; break;
 case 129:
  *s = "DW_OP_xderef_size"; break;
 case 236:
  *s = "DW_OP_const2u"; break;
 case 237:
  *s = "DW_OP_const2s"; break;
 case 277:
  *s = "DW_OP_bra"; break;
 case 133:
  *s = "DW_OP_skip"; break;
 case 234:
  *s = "DW_OP_const4u"; break;
 case 235:
  *s = "DW_OP_const4s"; break;
 case 232:
  *s = "DW_OP_const8u"; break;
 case 233:
  *s = "DW_OP_const8s"; break;
 case 230:
  *s = "DW_OP_constu"; break;
 case 172:
  *s = "DW_OP_plus_uconst"; break;
 case 138:
  *s = "DW_OP_regx"; break;
 case 174:
  *s = "DW_OP_piece"; break;
 case 231:
  *s = "DW_OP_consts"; break;
 case 276:
  *s = "DW_OP_breg0"; break;
 case 275:
  *s = "DW_OP_breg1"; break;
 case 264:
  *s = "DW_OP_breg2"; break;
 case 253:
  *s = "DW_OP_breg3"; break;
 case 250:
  *s = "DW_OP_breg4"; break;
 case 249:
  *s = "DW_OP_breg5"; break;
 case 248:
  *s = "DW_OP_breg6"; break;
 case 247:
  *s = "DW_OP_breg7"; break;
 case 246:
  *s = "DW_OP_breg8"; break;
 case 245:
  *s = "DW_OP_breg9"; break;
 case 274:
  *s = "DW_OP_breg10"; break;
 case 273:
  *s = "DW_OP_breg11"; break;
 case 272:
  *s = "DW_OP_breg12"; break;
 case 271:
  *s = "DW_OP_breg13"; break;
 case 270:
  *s = "DW_OP_breg14"; break;
 case 269:
  *s = "DW_OP_breg15"; break;
 case 268:
  *s = "DW_OP_breg16"; break;
 case 267:
  *s = "DW_OP_breg17"; break;
 case 266:
  *s = "DW_OP_breg18"; break;
 case 265:
  *s = "DW_OP_breg19"; break;
 case 263:
  *s = "DW_OP_breg20"; break;
 case 262:
  *s = "DW_OP_breg21"; break;
 case 261:
  *s = "DW_OP_breg22"; break;
 case 260:
  *s = "DW_OP_breg23"; break;
 case 259:
  *s = "DW_OP_breg24"; break;
 case 258:
  *s = "DW_OP_breg25"; break;
 case 257:
  *s = "DW_OP_breg26"; break;
 case 256:
  *s = "DW_OP_breg27"; break;
 case 255:
  *s = "DW_OP_breg28"; break;
 case 254:
  *s = "DW_OP_breg29"; break;
 case 252:
  *s = "DW_OP_breg30"; break;
 case 251:
  *s = "DW_OP_breg31"; break;
 case 223:
  *s = "DW_OP_fbreg"; break;
 case 244:
  *s = "DW_OP_bregx"; break;
 case 280:
  *s = "DW_OP_addr"; break;
 case 171:
  *s = "DW_OP_push_object_address"; break;
 case 243:
  *s = "DW_OP_call2"; break;
 case 242:
  *s = "DW_OP_call4"; break;
 case 240:
  *s = "DW_OP_call_ref"; break;
 case 222:
  *s = "DW_OP_form_tls_address"; break;
 case 241:
  *s = "DW_OP_call_frame_cfa"; break;
 case 278:
  *s = "DW_OP_bit_piece"; break;
 case 219:
  *s = "DW_OP_implicit_value"; break;
 case 132:
  *s = "DW_OP_stack_value"; break;
 case 285:
  *s = "DW_OP_GNU_push_tls_address"; break;
 case 282:
  *s = "DW_OP_GNU_uninit"; break;
 case 289:
  *s = "DW_OP_GNU_encoded_addr"; break;
 case 287:
  *s = "DW_OP_GNU_implicit_pointer"; break;
 case 288:
  *s = "DW_OP_GNU_entry_value"; break;
 case 292:
  *s = "DW_OP_GNU_const_type"; break;
 case 284:
  *s = "DW_OP_GNU_regval_type"; break;
 case 290:
  *s = "DW_OP_GNU_deref_type"; break;
 case 291:
  *s = "DW_OP_GNU_convert"; break;
 case 283:
  *s = "DW_OP_GNU_reinterpret"; break;
 case 286:
  *s = "DW_OP_GNU_parameter_ref"; break;
 case 294:
  *s = "DW_OP_GNU_addr_index"; break;
 case 293:
  *s = "DW_OP_GNU_const_index"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
