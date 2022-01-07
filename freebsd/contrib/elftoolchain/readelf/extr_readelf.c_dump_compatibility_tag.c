
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ _decode_uleb128 (int **,int *) ;
 int printf (char*,int ,int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static uint8_t *
dump_compatibility_tag(uint8_t *p, uint8_t *pe)
{
 uint64_t val;

 val = _decode_uleb128(&p, pe);
 printf("flag = %ju, vendor = %s\n", (uintmax_t) val, p);
 p += strlen((char *) p) + 1;

 return (p);
}
