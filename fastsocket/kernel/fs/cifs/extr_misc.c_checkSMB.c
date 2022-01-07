
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ CifsError; } ;
struct smb_hdr {scalar_t__ WordCount; int Mid; TYPE_1__ Status; int smb_buf_length; } ;
typedef int __u32 ;
typedef int __u16 ;


 int EIO ;
 int be32_to_cpu (int ) ;
 int cERROR (int,char*,...) ;
 int cFYI (int,char*,int,int,...) ;
 scalar_t__ check_smb_hdr (struct smb_hdr*,int ) ;
 int smbCalcSize (struct smb_hdr*) ;

int
checkSMB(char *buf, unsigned int total_read)
{
 struct smb_hdr *smb = (struct smb_hdr *)buf;
 __u16 mid = smb->Mid;
 __u32 rfclen = be32_to_cpu(smb->smb_buf_length);
 __u32 clc_len;
 cFYI(0, "checkSMB Length: 0x%x, smb_buf_length: 0x%x",
  total_read, rfclen);


 if (total_read < 2 + sizeof(struct smb_hdr)) {
  if ((total_read >= sizeof(struct smb_hdr) - 1)
       && (smb->Status.CifsError != 0)) {

   smb->WordCount = 0;

   return 0;
  } else if ((total_read == sizeof(struct smb_hdr) + 1) &&
    (smb->WordCount == 0)) {
   char *tmp = (char *)smb;


   if (tmp[sizeof(struct smb_hdr)] == 0) {







    tmp[sizeof(struct smb_hdr)+1] = 0;
    return 0;
   }
   cERROR(1, "rcvd invalid byte count (bcc)");
  } else {
   cERROR(1, "Length less than smb header size");
  }
  return -EIO;
 }


 if (check_smb_hdr(smb, mid))
  return -EIO;
 clc_len = smbCalcSize(smb);

 if (4 + rfclen != total_read) {
  cERROR(1, "Length read does not match RFC1001 length %d",
    rfclen);
  return -EIO;
 }

 if (4 + rfclen != clc_len) {

  if ((rfclen > 64 * 1024) && (rfclen > clc_len)) {

   if (((4 + rfclen) & 0xFFFF) == (clc_len & 0xFFFF))
    return 0;
  }
  cFYI(1, "Calculated size %u vs length %u mismatch for mid=%u",
    clc_len, 4 + rfclen, smb->Mid);

  if (4 + rfclen < clc_len) {
   cERROR(1, "RFC1001 size %u smaller than SMB for mid=%u",
     rfclen, smb->Mid);
   return -EIO;
  } else if (rfclen > clc_len + 512) {
   cERROR(1, "RFC1001 size %u more than 512 bytes larger "
      "than SMB for mid=%u", rfclen, smb->Mid);
   return -EIO;
  }
 }
 return 0;
}
