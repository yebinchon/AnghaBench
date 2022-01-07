
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct readelf {int dummy; } ;



 int _decode_uleb128 (int **,int *) ;
 int * dump_compatibility_tag (int *,int *) ;
 int * dump_unknown_tag (int,int *,int *) ;
 char* mips_abi_fp (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
dump_mips_attributes(struct readelf *re, uint8_t *p, uint8_t *pe)
{
 uint64_t tag, val;

 (void) re;

 while (p < pe) {
  tag = _decode_uleb128(&p, pe);
  switch (tag) {
  case 128:
   val = _decode_uleb128(&p, pe);
   printf("  Tag_GNU_MIPS_ABI_FP: %s\n", mips_abi_fp(val));
   break;
  case 32:
   p = dump_compatibility_tag(p, pe);
   break;
  default:
   p = dump_unknown_tag(tag, p, pe);
   break;
  }
 }
}
