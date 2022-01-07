
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int (* char2uni ) (unsigned char*,int,int*) ;} ;


 int stub1 (unsigned char*,int,int*) ;

__attribute__((used)) static inline int
fat_short2uni(struct nls_table *t, unsigned char *c, int clen, wchar_t *uni)
{
 int charlen;

 charlen = t->char2uni(c, clen, uni);
 if (charlen < 0) {
  *uni = 0x003f;
  charlen = 1;
 }
 return charlen;
}
