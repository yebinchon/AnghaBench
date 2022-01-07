
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;


 scalar_t__ EM_X86_64 ;
 size_t GNU_PROPERTY_HIPROC ;
 size_t GNU_PROPERTY_LOPROC ;

 int dump_flags (int ,size_t const) ;
 int gnu_property_x86_feature_1_and_bits ;
 int printf (char*,...) ;
 scalar_t__ roundup2 (size_t,int) ;

__attribute__((used)) static void
dump_gnu_property_type_0(struct readelf *re, const char *buf, size_t sz)
{
 size_t i;
 uint32_t type, prop_sz;

 printf("      Properties: ");
 while (sz > 0) {
  if (sz < 8)
   goto bad;

  type = *(const uint32_t *)(const void *)buf;
  prop_sz = *(const uint32_t *)(const void *)(buf + 4);
  buf += 8;
  sz -= 8;

  if (prop_sz > sz)
   goto bad;

  if (type >= GNU_PROPERTY_LOPROC &&
      type <= GNU_PROPERTY_HIPROC) {
   if (re->ehdr.e_machine != EM_X86_64) {
    printf("machine type %x unknown\n",
        re->ehdr.e_machine);
    goto unknown;
   }
   switch (type) {
   case 128:
    printf("x86 features:");
    if (prop_sz != 4)
     goto bad;
    dump_flags(gnu_property_x86_feature_1_and_bits,
        *(const uint32_t *)(const void *)buf);
    break;
   }
  }

  buf += roundup2(prop_sz, 8);
  sz -= roundup2(prop_sz, 8);
 }
 return;
bad:
 printf("corrupt GNU property\n");
unknown:
 printf("remaining description data:");
 for (i = 0; i < sz; i++)
  printf(" %02x", (unsigned char)buf[i]);
 printf("\n");
}
