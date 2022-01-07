
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct section {char* name; int scn; } ;
struct readelf {int (* dw_decode ) (int**,int) ;} ;
struct TYPE_3__ {scalar_t__ d_size; int* d_buf; } ;
typedef TYPE_1__ Elf_Data ;
 int OEX_FPU_MAX ;
 int OEX_FPU_MIN ;
 int dump_mips_odk_reginfo (struct readelf*,int*,int) ;
 int dump_mips_option_flags (char*,int ,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_rawdata (int ,int *) ;
 int mips_exceptions_option ;
 int mips_hwa_option ;
 int mips_hwo_option ;
 int mips_hwpatch_option ;
 int mips_pad_option ;
 int printf (char*,...) ;
 int stub1 (int**,int) ;
 int stub2 (int**,int) ;
 int stub3 (int**,int) ;
 int stub4 (int**,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
dump_mips_options(struct readelf *re, struct section *s)
{
 Elf_Data *d;
 uint32_t info;
 uint16_t sndx;
 uint8_t *p, *pe;
 uint8_t kind, size;
 int elferr;

 (void) elf_errno();
 if ((d = elf_rawdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_rawdata failed: %s",
       elf_errmsg(elferr));
  return;
 }
 if (d->d_size == 0)
  return;

 printf("\nSection %s contains:\n", s->name);
 p = d->d_buf;
 pe = p + d->d_size;
 while (p < pe) {
  if (pe - p < 8) {
   warnx("Truncated MIPS option header");
   return;
  }
  kind = re->dw_decode(&p, 1);
  size = re->dw_decode(&p, 1);
  sndx = re->dw_decode(&p, 2);
  info = re->dw_decode(&p, 4);
  if (size < 8 || size - 8 > pe - p) {
   warnx("Malformed MIPS option header");
   return;
  }
  size -= 8;
  switch (kind) {
  case 129:
   dump_mips_odk_reginfo(re, p, size);
   break;
  case 138:
   printf(" EXCEPTIONS FPU_MIN: %#x\n",
       info & OEX_FPU_MIN);
   printf("%11.11s FPU_MAX: %#x\n", "",
       info & OEX_FPU_MAX);
   dump_mips_option_flags("", mips_exceptions_option,
       info);
   break;
  case 131:
   printf(" %-10.10s section: %ju\n", "OPAD",
       (uintmax_t) sndx);
   dump_mips_option_flags("", mips_pad_option, info);
   break;
  case 133:
   dump_mips_option_flags("HWPATCH", mips_hwpatch_option,
       info);
   break;
  case 135:
   dump_mips_option_flags("HWAND", mips_hwa_option, info);
   break;
  case 134:
   dump_mips_option_flags("HWOR", mips_hwo_option, info);
   break;
  case 137:
   printf(" %-10.10s %#jx\n", "FILL", (uintmax_t) info);
   break;
  case 128:
   printf(" %-10.10s\n", "TAGS");
   break;
  case 136:
   printf(" %-10.10s GP group number: %#x\n", "GP_GROUP",
       info & 0xFFFF);
   if (info & 0x10000)
    printf(" %-10.10s GP group is "
        "self-contained\n", "");
   break;
  case 132:
   printf(" %-10.10s default GP group number: %#x\n",
       "IDENT", info & 0xFFFF);
   if (info & 0x10000)
    printf(" %-10.10s default GP group is "
        "self-contained\n", "");
   break;
  case 130:
   printf(" %-10.10s\n", "PAGESIZE");
   break;
  default:
   break;
  }
  p += size;
 }
}
