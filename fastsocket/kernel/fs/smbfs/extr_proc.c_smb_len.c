
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;



__u32
smb_len(__u8 * p)
{
 return ((*(p+1) & 0x1) << 16L) | (*(p+2) << 8L) | *(p+3);
}
