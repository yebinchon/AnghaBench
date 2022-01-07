
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int memset (int*,int ,size_t) ;

__attribute__((used)) static void
set_one(uint32_t *x, const uint32_t *p)
{
 size_t plen;

 plen = (p[0] + 63) >> 5;
 memset(x, 0, plen * sizeof *x);
 x[0] = p[0];
 x[1] = 0x00000001;
}
