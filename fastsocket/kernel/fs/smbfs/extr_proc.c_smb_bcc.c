
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int SMB_HEADER_LEN ;
 int SMB_WCT (int *) ;
 int WVAL (int *,int) ;

__attribute__((used)) static __u16
smb_bcc(__u8 * packet)
{
 int pos = SMB_HEADER_LEN + SMB_WCT(packet) * sizeof(__u16);
 return WVAL(packet, pos);
}
