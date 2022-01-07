
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {unsigned int Mid; int Flags; scalar_t__ Command; scalar_t__ Protocol; } ;
typedef unsigned int __u16 ;
typedef scalar_t__ __le32 ;


 int SMBFLG_RESPONSE ;
 scalar_t__ SMB_COM_LOCKING_ANDX ;
 int cERROR (int,char*,unsigned int,...) ;
 scalar_t__ cpu_to_le32 (int) ;

__attribute__((used)) static int
check_smb_hdr(struct smb_hdr *smb, __u16 mid)
{

 if (*(__le32 *) smb->Protocol != cpu_to_le32(0x424d53ff)) {
  cERROR(1, "Bad protocol string signature header 0x%x",
   *(unsigned int *)smb->Protocol);
  return 1;
 }


 if (mid != smb->Mid) {
  cERROR(1, "Mids do not match. received=%u expected=%u",
   smb->Mid, mid);
  return 1;
 }


 if (smb->Flags & SMBFLG_RESPONSE)
  return 0;


 if (smb->Command == SMB_COM_LOCKING_ANDX)
  return 0;

 cERROR(1, "Server sent request, not response. mid=%u", smb->Mid);
 return 1;
}
