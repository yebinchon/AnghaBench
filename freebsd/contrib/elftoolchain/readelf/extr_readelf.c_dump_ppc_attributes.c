
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;




 int _decode_uleb128 (int **,int *) ;
 int * dump_compatibility_tag (int *,int *) ;
 int * dump_unknown_tag (int,int *,int *) ;
 char* ppc_abi_fp (int) ;
 char* ppc_abi_vector (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
dump_ppc_attributes(uint8_t *p, uint8_t *pe)
{
 uint64_t tag, val;

 while (p < pe) {
  tag = _decode_uleb128(&p, pe);
  switch (tag) {
  case 129:
   val = _decode_uleb128(&p, pe);
   printf("  Tag_GNU_Power_ABI_FP: %s\n", ppc_abi_fp(val));
   break;
  case 128:
   val = _decode_uleb128(&p, pe);
   printf("  Tag_GNU_Power_ABI_Vector: %s\n",
       ppc_abi_vector(val));
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
