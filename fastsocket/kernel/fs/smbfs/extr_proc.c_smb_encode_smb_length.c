
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;



__attribute__((used)) static __u8 *
smb_encode_smb_length(__u8 * p, __u32 len)
{
 *p = 0;
 *(p+1) = 0;
 *(p+2) = (len & 0xFF00) >> 8;
 *(p+3) = (len & 0xFF);
 if (len > 0xFFFF)
 {
  *(p+1) = 1;
 }
 return p + 4;
}
