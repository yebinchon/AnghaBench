
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int obfd; } ;
struct dwarf_block {int size; char* data; } ;
struct comp_unit_head {int dummy; } ;
struct dwarf2_cu {struct comp_unit_head header; struct objfile* objfile; } ;
typedef unsigned int CORE_ADDR ;
 int complaint (int *,char*,int ) ;
 int dwarf2_complex_location_expr_complaint () ;
 int dwarf_stack_op_name (unsigned char) ;
 int isreg ;
 unsigned int read_1_byte (int ,char*) ;
 unsigned int read_1_signed_byte (int ,char*) ;
 unsigned int read_2_bytes (int ,char*) ;
 unsigned int read_2_signed_bytes (int ,char*) ;
 unsigned int read_4_bytes (int ,char*) ;
 unsigned int read_4_signed_bytes (int ,char*) ;
 unsigned int read_address (int ,char*,struct dwarf2_cu*,unsigned int*) ;
 unsigned int read_signed_leb128 (int *,char*,unsigned int*) ;
 void* read_unsigned_leb128 (int *,char*,unsigned int*) ;
 int symfile_complaints ;

__attribute__((used)) static CORE_ADDR
decode_locdesc (struct dwarf_block *blk, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct comp_unit_head *cu_header = &cu->header;
  int i;
  int size = blk->size;
  char *data = blk->data;
  CORE_ADDR stack[64];
  int stacki;
  unsigned int bytes_read, unsnd;
  unsigned char op;

  i = 0;
  stacki = 0;
  stack[stacki] = 0;
  isreg = 0;

  while (i < size)
    {
      op = data[i++];
      switch (op)
 {
 case 195:
 case 194:
 case 183:
 case 172:
 case 169:
 case 168:
 case 167:
 case 166:
 case 165:
 case 164:
 case 193:
 case 192:
 case 191:
 case 190:
 case 189:
 case 188:
 case 187:
 case 186:
 case 185:
 case 184:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 176:
 case 175:
 case 174:
 case 173:
 case 171:
 case 170:
   stack[++stacki] = op - 195;
   break;

 case 160:
 case 159:
 case 148:
 case 137:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 158:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 136:
 case 135:
   isreg = 1;
   stack[++stacki] = op - 160;
   if (i < size)
     dwarf2_complex_location_expr_complaint ();
   break;

 case 128:
   isreg = 1;
   unsnd = read_unsigned_leb128 (((void*)0), (data + i), &bytes_read);
   i += bytes_read;
   stack[++stacki] = unsnd;
   if (i < size)
     dwarf2_complex_location_expr_complaint ();
   break;

 case 206:
   stack[++stacki] = read_address (objfile->obfd, &data[i],
       cu, &bytes_read);
   i += bytes_read;
   break;

 case 204:
   stack[++stacki] = read_1_byte (objfile->obfd, &data[i]);
   i += 1;
   break;

 case 205:
   stack[++stacki] = read_1_signed_byte (objfile->obfd, &data[i]);
   i += 1;
   break;

 case 202:
   stack[++stacki] = read_2_bytes (objfile->obfd, &data[i]);
   i += 2;
   break;

 case 203:
   stack[++stacki] = read_2_signed_bytes (objfile->obfd, &data[i]);
   i += 2;
   break;

 case 200:
   stack[++stacki] = read_4_bytes (objfile->obfd, &data[i]);
   i += 4;
   break;

 case 201:
   stack[++stacki] = read_4_signed_bytes (objfile->obfd, &data[i]);
   i += 4;
   break;

 case 198:
   stack[++stacki] = read_unsigned_leb128 (((void*)0), (data + i),
        &bytes_read);
   i += bytes_read;
   break;

 case 199:
   stack[++stacki] = read_signed_leb128 (((void*)0), (data + i), &bytes_read);
   i += bytes_read;
   break;

 case 196:
   stack[stacki + 1] = stack[stacki];
   stacki++;
   break;

 case 162:
   stack[stacki - 1] += stack[stacki];
   stacki--;
   break;

 case 161:
   stack[stacki] += read_unsigned_leb128 (((void*)0), (data + i), &bytes_read);
   i += bytes_read;
   break;

 case 163:
   stack[stacki - 1] -= stack[stacki];
   stacki--;
   break;

 case 197:




   if (i < size)
     dwarf2_complex_location_expr_complaint ();
   break;

        case 208:






   if (i < size)
     dwarf2_complex_location_expr_complaint ();
          break;

 case 207:
   break;

 default:
   complaint (&symfile_complaints, "unsupported stack op: '%s'",
       dwarf_stack_op_name (op));
   return (stack[stacki]);
 }
    }
  return (stack[stacki]);
}
