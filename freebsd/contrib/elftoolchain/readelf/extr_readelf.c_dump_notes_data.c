
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct readelf {int dummy; } ;






 int dump_flags (int ,int const) ;
 int dump_gnu_property_type_0 (struct readelf*,char const*,size_t) ;
 int note_feature_ctl_flags ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
dump_notes_data(struct readelf *re, const char *name, uint32_t type,
    const char *buf, size_t sz)
{
 size_t i;
 const uint32_t *ubuf;


 if (((uintptr_t)buf & 3) != 0) {
  warnx("bad note data alignment");
  goto unknown;
 }
 ubuf = (const uint32_t *)(const void *)buf;

 if (strcmp(name, "FreeBSD") == 0) {
  switch (type) {
  case 131:
   if (sz != 4)
    goto unknown;
   printf("   ABI tag: %u\n", ubuf[0]);
   return;

  case 130:
   if (sz != 4)
    goto unknown;
   printf("   Arch tag: %x\n", ubuf[0]);
   return;
  case 129:
   if (sz != 4)
    goto unknown;
   printf("   Features:");
   dump_flags(note_feature_ctl_flags, ubuf[0]);
   return;
  }
 } else if (strcmp(name, "GNU") == 0) {
  switch (type) {
  case 128:
   dump_gnu_property_type_0(re, buf, sz);
   return;
  }
 }
unknown:
 printf("   description data:");
 for (i = 0; i < sz; i++)
  printf(" %02x", (unsigned char)buf[i]);
 printf("\n");
}
