
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nicenum_scale (int ,int,char*,size_t,int ) ;

void
nicenum(uint64_t num, char *buf, size_t buflen)
{
 nicenum_scale(num, 1, buf, buflen, 0);
}
