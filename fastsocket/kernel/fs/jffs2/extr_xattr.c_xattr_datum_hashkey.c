
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int crc32 (int,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static uint32_t xattr_datum_hashkey(int xprefix, const char *xname, const char *xvalue, int xsize)
{
 int name_len = strlen(xname);

 return crc32(xprefix, xname, name_len) ^ crc32(xprefix, xvalue, xsize);
}
