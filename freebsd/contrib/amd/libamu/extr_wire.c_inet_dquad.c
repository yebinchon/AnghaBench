
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int ntohl (int) ;
 int xsnprintf (char*,size_t,char*,int,int,int,int) ;

char *
inet_dquad(char *buf, size_t l, u_long addr)
{
  addr = ntohl(addr);
  xsnprintf(buf, l, "%ld.%ld.%ld.%ld",
     ((addr >> 24) & 0xff),
     ((addr >> 16) & 0xff),
     ((addr >> 8) & 0xff),
     ((addr >> 0) & 0xff));
  return buf;
}
