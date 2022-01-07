
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef char* uintmax_t ;
typedef char uint8_t ;
typedef int uint64_t ;
struct section {int scn; int * name; } ;
struct readelf {size_t shnum; int (* dw_read ) (TYPE_1__*,int*,int) ;int (* dw_decode ) (char**,scalar_t__) ;int dbg; struct section* sl; } ;
typedef char* intmax_t ;
typedef int int8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_13__ {scalar_t__ d_size; scalar_t__ d_buf; } ;
typedef TYPE_1__ Elf_Data ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Die ;


 int ADDRESS (char) ;
 int DW_AT_stmt_list ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_TAG_compile_unit ;
 int LINE (char) ;
 int RESET_REGISTERS ;
 scalar_t__ _decode_sleb128 (char**,char*) ;
 int _decode_uleb128 (char**,char*) ;
 int dwarf_attrval_unsigned (int *,int ,int*,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_get_address_size (int ,scalar_t__*,int *) ;
 int dwarf_next_cu_header (int ,int *,int *,int *,int *,int *,int *) ;
 int dwarf_siblingof (int ,int *,int **,int *) ;
 int dwarf_tag (int *,scalar_t__*,int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 int printf (char*,...) ;
 int strcmp (int *,char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (TYPE_1__*,int*,int) ;
 int stub10 (TYPE_1__*,int*,int) ;
 int stub11 (char**,scalar_t__) ;
 int stub12 (char**,int) ;
 int stub2 (TYPE_1__*,int*,int) ;
 scalar_t__ stub3 (TYPE_1__*,int*,int) ;
 int stub4 (TYPE_1__*,int*,int) ;
 int stub5 (TYPE_1__*,int*,int) ;
 int stub6 (TYPE_1__*,int*,int) ;
 int stub7 (TYPE_1__*,int*,int) ;
 int stub8 (TYPE_1__*,int*,int) ;
 int stub9 (TYPE_1__*,int*,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
dump_dwarf_line(struct readelf *re)
{
 struct section *s;
 Dwarf_Die die;
 Dwarf_Error de;
 Dwarf_Half tag, version, pointer_size;
 Dwarf_Unsigned offset, endoff, length, hdrlen, dirndx, mtime, fsize;
 Dwarf_Small minlen, defstmt, lrange, opbase, oplen;
 Elf_Data *d;
 char *pn;
 uint64_t address, file, line, column, isa, opsize, udelta;
 int64_t sdelta;
 uint8_t *p, *pe;
 int8_t lbase;
 int i, is_stmt, dwarf_size, elferr, ret;

 printf("\nDump of debug contents of section .debug_line:\n");

 s = ((void*)0);
 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && !strcmp(s->name, ".debug_line"))
   break;
 }
 if ((size_t) i >= re->shnum)
  return;

 (void) elf_errno();
 if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(-1));
  return;
 }
 if (d->d_size <= 0)
  return;

 while ((ret = dwarf_next_cu_header(re->dbg, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), &de)) == DW_DLV_OK) {
  die = ((void*)0);
  while (dwarf_siblingof(re->dbg, die, &die, &de) == DW_DLV_OK) {
   if (dwarf_tag(die, &tag, &de) != DW_DLV_OK) {
    warnx("dwarf_tag failed: %s",
        dwarf_errmsg(de));
    return;
   }

   if (tag == DW_TAG_compile_unit)
    break;
  }
  if (die == ((void*)0)) {
   warnx("could not find DW_TAG_compile_unit die");
   return;
  }
  if (dwarf_attrval_unsigned(die, DW_AT_stmt_list, &offset,
      &de) != DW_DLV_OK)
   continue;

  length = re->dw_read(d, &offset, 4);
  if (length == 0xffffffff) {
   dwarf_size = 8;
   length = re->dw_read(d, &offset, 8);
  } else
   dwarf_size = 4;

  if (length > d->d_size - offset) {
   warnx("invalid .dwarf_line section");
   continue;
  }

  endoff = offset + length;
  pe = (uint8_t *) d->d_buf + endoff;
  version = re->dw_read(d, &offset, 2);
  hdrlen = re->dw_read(d, &offset, dwarf_size);
  minlen = re->dw_read(d, &offset, 1);
  defstmt = re->dw_read(d, &offset, 1);
  lbase = re->dw_read(d, &offset, 1);
  lrange = re->dw_read(d, &offset, 1);
  opbase = re->dw_read(d, &offset, 1);

  printf("\n");
  printf("  Length:\t\t\t%ju\n", (uintmax_t) length);
  printf("  DWARF version:\t\t%u\n", version);
  printf("  Prologue Length:\t\t%ju\n", (uintmax_t) hdrlen);
  printf("  Minimum Instruction Length:\t%u\n", minlen);
  printf("  Initial value of 'is_stmt':\t%u\n", defstmt);
  printf("  Line Base:\t\t\t%d\n", lbase);
  printf("  Line Range:\t\t\t%u\n", lrange);
  printf("  Opcode Base:\t\t\t%u\n", opbase);
  (void) dwarf_get_address_size(re->dbg, &pointer_size, &de);
  printf("  (Pointer size:\t\t%u)\n", pointer_size);

  printf("\n");
  printf(" Opcodes:\n");
  for (i = 1; i < opbase; i++) {
   oplen = re->dw_read(d, &offset, 1);
   printf("  Opcode %d has %u args\n", i, oplen);
  }

  printf("\n");
  printf(" The Directory Table:\n");
  p = (uint8_t *) d->d_buf + offset;
  while (*p != '\0') {
   printf("  %s\n", (char *) p);
   p += strlen((char *) p) + 1;
  }

  p++;
  printf("\n");
  printf(" The File Name Table:\n");
  printf("  Entry\tDir\tTime\tSize\tName\n");
  i = 0;
  while (*p != '\0') {
   i++;
   pn = (char *) p;
   p += strlen(pn) + 1;
   dirndx = _decode_uleb128(&p, pe);
   mtime = _decode_uleb128(&p, pe);
   fsize = _decode_uleb128(&p, pe);
   printf("  %d\t%ju\t%ju\t%ju\t%s\n", i,
       (uintmax_t) dirndx, (uintmax_t) mtime,
       (uintmax_t) fsize, pn);
  }
  p++;
  printf("\n");
  printf(" Line Number Statements:\n");

  do { address = 0; file = 1; line = 1; column = 0; is_stmt = defstmt; } while(0);

  while (p < pe) {

   if (*p == 0) {



    p++;
    opsize = _decode_uleb128(&p, pe);
    printf("  Extended opcode %u: ", *p);
    switch (*p) {
    case 141:
     p++;
     do { address = 0; file = 1; line = 1; column = 0; is_stmt = defstmt; } while(0);
     printf("End of Sequence\n");
     break;
    case 140:
     p++;
     address = re->dw_decode(&p,
         pointer_size);
     printf("set Address to %#jx\n",
         (uintmax_t) address);
     break;
    case 142:
     p++;
     pn = (char *) p;
     p += strlen(pn) + 1;
     dirndx = _decode_uleb128(&p, pe);
     mtime = _decode_uleb128(&p, pe);
     fsize = _decode_uleb128(&p, pe);
     printf("define new file: %s\n", pn);
     break;
    default:

     p += opsize;
     printf("unknown opcode\n");
    }
   } else if (*p > 0 && *p < opbase) {



    switch(*p++) {
    case 136:
     printf("  Copy\n");
     break;
    case 138:
     udelta = _decode_uleb128(&p, pe) *
         minlen;
     address += udelta;
     printf("  Advance PC by %ju to %#jx\n",
         (uintmax_t) udelta,
         (uintmax_t) address);
     break;
    case 139:
     sdelta = _decode_sleb128(&p, pe);
     line += sdelta;
     printf("  Advance Line by %jd to %ju\n",
         (intmax_t) sdelta,
         (uintmax_t) line);
     break;
    case 130:
     file = _decode_uleb128(&p, pe);
     printf("  Set File to %ju\n",
         (uintmax_t) file);
     break;
    case 132:
     column = _decode_uleb128(&p, pe);
     printf("  Set Column to %ju\n",
         (uintmax_t) column);
     break;
    case 134:
     is_stmt = !is_stmt;
     printf("  Set is_stmt to %d\n", is_stmt);
     break;
    case 133:
     printf("  Set basic block flag\n");
     break;
    case 137:
     address += ((((255) - opbase) / lrange) * minlen);
     printf("  Advance PC by constant %ju"
         " to %#jx\n",
         (uintmax_t) ((((255) - opbase) / lrange) * minlen),
         (uintmax_t) address);
     break;
    case 135:
     udelta = re->dw_decode(&p, 2);
     address += udelta;
     printf("  Advance PC by fixed value "
         "%ju to %#jx\n",
         (uintmax_t) udelta,
         (uintmax_t) address);
     break;
    case 128:
     printf("  Set prologue end flag\n");
     break;
    case 131:
     printf("  Set epilogue begin flag\n");
     break;
    case 129:
     isa = _decode_uleb128(&p, pe);
     printf("  Set isa to %ju\n",
         (uintmax_t) isa);
     break;
    default:

     printf("  Unknown extended opcode %u\n",
         *(p - 1));
     break;
    }

   } else {



    line += (lbase + (((*p) - opbase) % lrange));
    address += ((((*p) - opbase) / lrange) * minlen);
    printf("  Special opcode %u: advance Address "
        "by %ju to %#jx and Line by %jd to %ju\n",
        *p - opbase, (uintmax_t) ((((*p) - opbase) / lrange) * minlen),
        (uintmax_t) address, (intmax_t) (lbase + (((*p) - opbase) % lrange)),
        (uintmax_t) line);
    p++;
   }


  }
 }
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_next_cu_header: %s", dwarf_errmsg(de));




}
