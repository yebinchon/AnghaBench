
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 scalar_t__ SMB_HEADER_LEN ;
 int SMB_WCT (int*) ;
 scalar_t__ smb_bcc (int*) ;
 scalar_t__ smb_len (int*) ;

__attribute__((used)) static int
smb_valid_packet(__u8 * packet)
{
 return (packet[4] == 0xff
  && packet[5] == 'S'
  && packet[6] == 'M'
  && packet[7] == 'B'
  && (smb_len(packet) + 4 == SMB_HEADER_LEN
      + SMB_WCT(packet) * 2 + smb_bcc(packet)));
}
