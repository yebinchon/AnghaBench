
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
typedef int uint8_t ;
typedef int uint64_t ;


 int _decode_uleb128 (int **,int *) ;
 int printf (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static uint8_t *
dump_unknown_tag(uint64_t tag, uint8_t *p, uint8_t *pe)
{
 uint64_t val;
 printf("  Tag_unknown_%ju: ", (uintmax_t) tag);

 if (tag & 1) {
  printf("%s\n", (char *) p);
  p += strlen((char *) p) + 1;
 } else {
  val = _decode_uleb128(&p, pe);
  printf("%ju\n", (uintmax_t) val);
 }

 return (p);
}
