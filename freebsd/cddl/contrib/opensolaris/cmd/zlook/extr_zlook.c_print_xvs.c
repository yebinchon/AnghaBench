
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int f_attr_t ;


 int F_ATTR_ALL ;
 char* attr_to_name (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_xvs(uint64_t xvs)
{
 uint_t bits;
 int idx = 0;

 if (xvs == 0)
  return;

 (void) printf("-------------------\n");
 (void) printf("Attribute bit(s) set:\n");
 (void) printf("-------------------\n");

 bits = xvs & ((1 << F_ATTR_ALL) - 1);
 while (bits) {
  uint_t rest = bits >> 1;
  if (bits & 1) {
   (void) printf("%s", attr_to_name((f_attr_t)idx));
   if (rest)
    (void) printf(", ");
  }
  idx++;
  bits = rest;
 }
 (void) printf("\n");
}
