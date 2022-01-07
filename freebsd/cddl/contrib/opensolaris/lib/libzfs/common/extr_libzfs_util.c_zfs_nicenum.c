
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nicenum (int ,char*,size_t) ;

void
zfs_nicenum(uint64_t num, char *buf, size_t buflen)
{
 nicenum(num, buf, buflen);
}
