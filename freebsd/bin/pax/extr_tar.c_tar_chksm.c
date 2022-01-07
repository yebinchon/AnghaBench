
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 scalar_t__ BLNKSUM ;
 int CHK_LEN ;
 int CHK_OFFSET ;

__attribute__((used)) static u_long
tar_chksm(char *blk, int len)
{
 char *stop;
 char *pt;
 u_long chksm = BLNKSUM;




 pt = blk;
 stop = blk + CHK_OFFSET;
 while (pt < stop)
  chksm += (u_long)(*pt++ & 0xff);







 pt += CHK_LEN;
 stop = blk + len;
 while (pt < stop)
  chksm += (u_long)(*pt++ & 0xff);
 return(chksm);
}
