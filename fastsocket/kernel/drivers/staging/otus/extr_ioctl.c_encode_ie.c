
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int memcpy (int*,int const*,int) ;
 int sprintf (int*,char*,int const) ;

u32 encode_ie(void *buf, u32 bufsize, const u8 *ie, u32 ielen,
  const u8 *leader, u32 leader_len)
{
 u8 *p;
 u32 i;

 if (bufsize < leader_len)
  return 0;
 p = buf;
 memcpy(p, leader, leader_len);
 bufsize -= leader_len;
 p += leader_len;
 for (i = 0; i < ielen && bufsize > 2; i++)
  p += sprintf(p, "%02x", ie[i]);
 return (i == ielen ? p - (u8 *)buf:0);
}
