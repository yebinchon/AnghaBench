
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DW_OP_hi_user ;
 unsigned int DW_OP_lo_user ;
 char* _ (char*) ;
 scalar_t__ byte_get (unsigned char*,int) ;
 scalar_t__ byte_get_signed (unsigned char*,int) ;
 int printf (char*,...) ;
 unsigned long read_leb128 (unsigned char*,unsigned int*,int) ;

__attribute__((used)) static int
decode_location_expression (unsigned char * data,
       unsigned int pointer_size,
       unsigned long length,
       unsigned long cu_offset)
{
  unsigned op;
  unsigned int bytes_read;
  unsigned long uvalue;
  unsigned char *end = data + length;
  int need_frame_base = 0;

  while (data < end)
    {
      op = *data++;

      switch (op)
 {
 case 276:
   printf ("DW_OP_addr: %lx",
    (unsigned long) byte_get (data, pointer_size));
   data += pointer_size;
   break;
 case 227:
   printf ("DW_OP_deref");
   break;
 case 236:
   printf ("DW_OP_const1u: %lu", (unsigned long) byte_get (data++, 1));
   break;
 case 237:
   printf ("DW_OP_const1s: %ld", (long) byte_get_signed (data++, 1));
   break;
 case 234:
   printf ("DW_OP_const2u: %lu", (unsigned long) byte_get (data, 2));
   data += 2;
   break;
 case 235:
   printf ("DW_OP_const2s: %ld", (long) byte_get_signed (data, 2));
   data += 2;
   break;
 case 232:
   printf ("DW_OP_const4u: %lu", (unsigned long) byte_get (data, 4));
   data += 4;
   break;
 case 233:
   printf ("DW_OP_const4s: %ld", (long) byte_get_signed (data, 4));
   data += 4;
   break;
 case 230:
   printf ("DW_OP_const8u: %lu %lu", (unsigned long) byte_get (data, 4),
    (unsigned long) byte_get (data + 4, 4));
   data += 8;
   break;
 case 231:
   printf ("DW_OP_const8s: %ld %ld", (long) byte_get (data, 4),
    (long) byte_get (data + 4, 4));
   data += 8;
   break;
 case 228:
   printf ("DW_OP_constu: %lu", read_leb128 (data, &bytes_read, 0));
   data += bytes_read;
   break;
 case 229:
   printf ("DW_OP_consts: %ld", read_leb128 (data, &bytes_read, 1));
   data += bytes_read;
   break;
 case 223:
   printf ("DW_OP_dup");
   break;
 case 224:
   printf ("DW_OP_drop");
   break;
 case 175:
   printf ("DW_OP_over");
   break;
 case 174:
   printf ("DW_OP_pick: %ld", (unsigned long) byte_get (data++, 1));
   break;
 case 131:
   printf ("DW_OP_swap");
   break;
 case 136:
   printf ("DW_OP_rot");
   break;
 case 130:
   printf ("DW_OP_xderef");
   break;
 case 277:
   printf ("DW_OP_abs");
   break;
 case 275:
   printf ("DW_OP_and");
   break;
 case 225:
   printf ("DW_OP_div");
   break;
 case 183:
   printf ("DW_OP_minus");
   break;
 case 182:
   printf ("DW_OP_mod");
   break;
 case 181:
   printf ("DW_OP_mul");
   break;
 case 179:
   printf ("DW_OP_neg");
   break;
 case 177:
   printf ("DW_OP_not");
   break;
 case 176:
   printf ("DW_OP_or");
   break;
 case 172:
   printf ("DW_OP_plus");
   break;
 case 171:
   printf ("DW_OP_plus_uconst: %lu",
    read_leb128 (data, &bytes_read, 0));
   data += bytes_read;
   break;
 case 135:
   printf ("DW_OP_shl");
   break;
 case 134:
   printf ("DW_OP_shr");
   break;
 case 133:
   printf ("DW_OP_shra");
   break;
 case 128:
   printf ("DW_OP_xor");
   break;
 case 274:
   printf ("DW_OP_bra: %ld", (long) byte_get_signed (data, 2));
   data += 2;
   break;
 case 222:
   printf ("DW_OP_eq");
   break;
 case 219:
   printf ("DW_OP_ge");
   break;
 case 218:
   printf ("DW_OP_gt");
   break;
 case 217:
   printf ("DW_OP_le");
   break;
 case 184:
   printf ("DW_OP_lt");
   break;
 case 180:
   printf ("DW_OP_ne");
   break;
 case 132:
   printf ("DW_OP_skip: %ld", (long) byte_get_signed (data, 2));
   data += 2;
   break;

 case 216:
 case 215:
 case 204:
 case 193:
 case 190:
 case 189:
 case 188:
 case 187:
 case 186:
 case 185:
 case 214:
 case 213:
 case 212:
 case 211:
 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:
 case 203:
 case 202:
 case 201:
 case 200:
 case 199:
 case 198:
 case 197:
 case 196:
 case 195:
 case 194:
 case 192:
 case 191:
   printf ("DW_OP_lit%d", op - 216);
   break;

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
   printf ("DW_OP_reg%d", op - 169);
   break;

 case 273:
 case 272:
 case 261:
 case 250:
 case 247:
 case 246:
 case 245:
 case 244:
 case 243:
 case 242:
 case 271:
 case 270:
 case 269:
 case 268:
 case 267:
 case 266:
 case 265:
 case 264:
 case 263:
 case 262:
 case 260:
 case 259:
 case 258:
 case 257:
 case 256:
 case 255:
 case 254:
 case 253:
 case 252:
 case 251:
 case 249:
 case 248:
   printf ("DW_OP_breg%d: %ld", op - 273,
    read_leb128 (data, &bytes_read, 1));
   data += bytes_read;
   break;

 case 137:
   printf ("DW_OP_regx: %lu", read_leb128 (data, &bytes_read, 0));
   data += bytes_read;
   break;
 case 221:
   need_frame_base = 1;
   printf ("DW_OP_fbreg: %ld", read_leb128 (data, &bytes_read, 1));
   data += bytes_read;
   break;
 case 241:
   uvalue = read_leb128 (data, &bytes_read, 0);
   data += bytes_read;
   printf ("DW_OP_bregx: %lu %ld", uvalue,
    read_leb128 (data, &bytes_read, 1));
   data += bytes_read;
   break;
 case 173:
   printf ("DW_OP_piece: %lu", read_leb128 (data, &bytes_read, 0));
   data += bytes_read;
   break;
 case 226:
   printf ("DW_OP_deref_size: %ld", (long) byte_get (data++, 1));
   break;
 case 129:
   printf ("DW_OP_xderef_size: %ld", (long) byte_get (data++, 1));
   break;
 case 178:
   printf ("DW_OP_nop");
   break;


 case 170:
   printf ("DW_OP_push_object_address");
   break;
 case 240:


   printf ("DW_OP_call2: <%lx>", (long) byte_get (data, 2) + cu_offset);
   data += 2;
   break;
 case 239:


   printf ("DW_OP_call4: <%lx>", (long) byte_get (data, 4) + cu_offset);
   data += 4;
   break;
 case 238:
   printf ("DW_OP_call_ref");
   break;
 case 220:
   printf ("DW_OP_form_tls_address");
   break;


 case 278:
   printf ("DW_OP_GNU_push_tls_address");
   break;

 default:
   if (op >= DW_OP_lo_user
       && op <= DW_OP_hi_user)
     printf (_("(User defined location op)"));
   else
     printf (_("(Unknown location op)"));

   return need_frame_base;
 }


      if (data < end)
 printf ("; ");
    }

  return need_frame_base;
}
