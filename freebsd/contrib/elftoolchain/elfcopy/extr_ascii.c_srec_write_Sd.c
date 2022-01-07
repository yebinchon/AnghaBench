
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;


 int srec_write (int,char,size_t,int const*,int) ;

__attribute__((used)) static void
srec_write_Sd(int ofd, char dr, uint64_t addr, const void *buf, size_t sz,
    size_t rlen)
{
 const uint8_t *p, *pe;

 p = buf;
 pe = p + sz;
 while (pe - p >= (int) rlen) {
  srec_write(ofd, dr, addr, p, rlen);
  addr += rlen;
  p += rlen;
 }
 if (pe - p > 0)
  srec_write(ofd, dr, addr, p, pe - p);
}
