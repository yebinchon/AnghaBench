
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int ssize_t ;


 int put_unaligned_be64 (int ,int*) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,int,int,int) ;

ssize_t ft_format_wwn(char *buf, size_t len, u64 wwn)
{
 u8 b[8];

 put_unaligned_be64(wwn, b);
 return snprintf(buf, len,
   "%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x",
   b[0], b[1], b[2], b[3], b[4], b[5], b[6], b[7]);
}
