
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int opcode; char string; scalar_t__ longconst; TYPE_2__* type; TYPE_2__* internalvar; TYPE_2__* symbol; TYPE_2__* block; scalar_t__ doubleconst; } ;
 int BYTES_TO_EXP_ELEM (int) ;
 int DEPRECATED_SYMBOL_NAME (TYPE_2__*) ;
 int dump_subexp (struct expression*,struct ui_file*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int gdb_print_host_address (TYPE_2__*,struct ui_file*) ;
 int longest_to_int (scalar_t__) ;
 int type_print (TYPE_2__*,int *,struct ui_file*,int ) ;

int
dump_subexp_body_standard (struct expression *exp,
      struct ui_file *stream, int elt)
{
  int opcode = exp->elts[elt++].opcode;

  switch (opcode)
    {
    case 159:
    case 158:
    case 157:
      elt = dump_subexp (exp, stream, elt);
    case 220:
    case 188:
    case 194:
    case 212:
    case 191:
    case 195:
    case 198:
    case 189:
    case 200:
    case 199:
    case 217:
    case 216:
    case 215:
    case 210:
    case 193:
    case 201:
    case 206:
    case 202:
    case 207:
    case 190:
    case 219:
    case 214:
    case 187:
    case 208:
    case 196:
    case 197:
    case 203:
    case 218:
    case 186:
    case 204:
    case 209:
    case 213:
    case 205:
    case 192:
    case 211:
      elt = dump_subexp (exp, stream, elt);
    case 138:
    case 143:
    case 148:
    case 145:
    case 155:
    case 131:
    case 133:
    case 132:
    case 134:
    case 130:
    case 135:
    case 154:
    case 149:
    case 136:
    case 156:
    case 147:
    case 146:
    case 141:
    case 139:
    case 137:
    case 129:
    case 142:
    case 128:
    case 144:
    case 153:
    case 151:
    case 150:
      elt = dump_subexp (exp, stream, elt);
      break;
    case 173:
      fprintf_filtered (stream, "Type @");
      gdb_print_host_address (exp->elts[elt].type, stream);
      fprintf_filtered (stream, " (");
      type_print (exp->elts[elt].type, ((void*)0), stream, 0);
      fprintf_filtered (stream, "), value %ld (0x%lx)",
   (long) exp->elts[elt + 1].longconst,
   (long) exp->elts[elt + 1].longconst);
      elt += 3;
      break;
    case 180:
      fprintf_filtered (stream, "Type @");
      gdb_print_host_address (exp->elts[elt].type, stream);
      fprintf_filtered (stream, " (");
      type_print (exp->elts[elt].type, ((void*)0), stream, 0);
      fprintf_filtered (stream, "), value %g",
   (double) exp->elts[elt + 1].doubleconst);
      elt += 3;
      break;
    case 164:
      fprintf_filtered (stream, "Block @");
      gdb_print_host_address (exp->elts[elt].block, stream);
      fprintf_filtered (stream, ", symbol @");
      gdb_print_host_address (exp->elts[elt + 1].symbol, stream);
      fprintf_filtered (stream, " (%s)",
   DEPRECATED_SYMBOL_NAME (exp->elts[elt + 1].symbol));
      elt += 3;
      break;
    case 174:
      fprintf_filtered (stream, "History element %ld",
   (long) exp->elts[elt].longconst);
      elt += 2;
      break;
    case 169:
      fprintf_filtered (stream, "Register %ld",
   (long) exp->elts[elt].longconst);
      elt += 2;
      break;
    case 176:
      fprintf_filtered (stream, "Internal var @");
      gdb_print_host_address (exp->elts[elt].internalvar, stream);
      fprintf_filtered (stream, " (%s)",
   exp->elts[elt].internalvar->name);
      elt += 2;
      break;
    case 177:
      {
 int i, nargs;

 nargs = longest_to_int (exp->elts[elt].longconst);

 fprintf_filtered (stream, "Number of args: %d", nargs);
 elt += 2;

 for (i = 1; i <= nargs + 1; i++)
   elt = dump_subexp (exp, stream, elt);
      }
      break;
    case 184:
      {
 int lower, upper;
 int i;

 lower = longest_to_int (exp->elts[elt].longconst);
 upper = longest_to_int (exp->elts[elt + 1].longconst);

 fprintf_filtered (stream, "Bounds [%d:%d]", lower, upper);
 elt += 3;

 for (i = 1; i <= upper - lower + 1; i++)
   elt = dump_subexp (exp, stream, elt);
      }
      break;
    case 140:
    case 152:
      fprintf_filtered (stream, "Type @");
      gdb_print_host_address (exp->elts[elt].type, stream);
      fprintf_filtered (stream, " (");
      type_print (exp->elts[elt].type, ((void*)0), stream, 0);
      fprintf_filtered (stream, ")");
      elt = dump_subexp (exp, stream, elt + 2);
      break;
    case 165:
      fprintf_filtered (stream, "Type @");
      gdb_print_host_address (exp->elts[elt].type, stream);
      fprintf_filtered (stream, " (");
      type_print (exp->elts[elt].type, ((void*)0), stream, 0);
      fprintf_filtered (stream, ")");
      elt += 2;
      break;
    case 160:
    case 161:
      {
 char *elem_name;
 int len;

 len = longest_to_int (exp->elts[elt].longconst);
 elem_name = &exp->elts[elt + 1].string;

 fprintf_filtered (stream, "Element name: `%.*s'", len, elem_name);
 elt = dump_subexp (exp, stream, elt + 3 + BYTES_TO_EXP_ELEM (len + 1));
      }
      break;
    case 168:
      {
 char *elem_name;
 int len;

 fprintf_filtered (stream, "Type @");
 gdb_print_host_address (exp->elts[elt].type, stream);
 fprintf_filtered (stream, " (");
 type_print (exp->elts[elt].type, ((void*)0), stream, 0);
 fprintf_filtered (stream, ") ");

 len = longest_to_int (exp->elts[elt + 1].longconst);
 elem_name = &exp->elts[elt + 2].string;

 fprintf_filtered (stream, "Field name: `%.*s'", len, elem_name);
 elt += 4 + BYTES_TO_EXP_ELEM (len + 1);
      }
      break;
    default:
    case 170:
    case 163:
    case 162:
    case 185:
    case 178:
    case 181:
    case 167:
    case 183:
    case 182:
    case 172:
    case 166:
    case 175:
    case 171:
    case 179:
      fprintf_filtered (stream, "Unknown format");
    }

  return elt;
}
