
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int num_hardlinks; int ses; } ;
typedef int __u16 ;
typedef int __le16 ;
struct TYPE_5__ {int Flags2; } ;
struct TYPE_6__ {int BufferFormat; int* OldFileName; void* ByteCount; TYPE_1__ hdr; scalar_t__ ClusterCount; void* Flags; void* SearchAttributes; } ;
typedef int RENAME_RSP ;
typedef TYPE_2__ NT_RENAME_REQ ;


 int ATTR_DIRECTORY ;
 int ATTR_HIDDEN ;
 int ATTR_READONLY ;
 int ATTR_SYSTEM ;
 int CREATE_HARD_LINK ;
 int EAGAIN ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_NT_RENAME ;
 int SendReceive (int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cFYI (int,char*,...) ;
 int cifsConvertToUCS (int *,char const*,int ,struct nls_table const*,int) ;
 int cifs_buf_release (TYPE_2__*) ;
 int cifs_stats_inc (int *) ;
 void* cpu_to_le16 (int) ;
 int inc_rfc1001_len (TYPE_2__*,int) ;
 int smb_init (int ,int,struct cifs_tcon*,void**,void**) ;
 int strncpy (int*,char const*,int) ;
 int strnlen (char const*,int ) ;

int
CIFSCreateHardLink(const int xid, struct cifs_tcon *tcon,
     const char *fromName, const char *toName,
     const struct nls_table *nls_codepage, int remap)
{
 int rc = 0;
 NT_RENAME_REQ *pSMB = ((void*)0);
 RENAME_RSP *pSMBr = ((void*)0);
 int bytes_returned;
 int name_len, name_len2;
 __u16 count;

 cFYI(1, "In CIFSCreateHardLink");
winCreateHardLinkRetry:

 rc = smb_init(SMB_COM_NT_RENAME, 4, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 pSMB->SearchAttributes =
     cpu_to_le16(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM |
   ATTR_DIRECTORY);
 pSMB->Flags = cpu_to_le16(CREATE_HARD_LINK);
 pSMB->ClusterCount = 0;

 pSMB->BufferFormat = 0x04;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len =
      cifsConvertToUCS((__le16 *) pSMB->OldFileName, fromName,
         PATH_MAX, nls_codepage, remap);
  name_len++;
  name_len *= 2;


  pSMB->OldFileName[name_len] = 0x04;
  pSMB->OldFileName[name_len + 1] = 0x00;
  name_len2 =
      cifsConvertToUCS((__le16 *)&pSMB->OldFileName[name_len + 2],
         toName, PATH_MAX, nls_codepage, remap);
  name_len2 += 1 + 1 ;
  name_len2 *= 2;
 } else {
  name_len = strnlen(fromName, PATH_MAX);
  name_len++;
  strncpy(pSMB->OldFileName, fromName, name_len);
  name_len2 = strnlen(toName, PATH_MAX);
  name_len2++;
  pSMB->OldFileName[name_len] = 0x04;
  strncpy(&pSMB->OldFileName[name_len + 1], toName, name_len2);
  name_len2++;
  name_len2++;
 }

 count = 1 + name_len + name_len2;
 inc_rfc1001_len(pSMB, count);
 pSMB->ByteCount = cpu_to_le16(count);

 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 cifs_stats_inc(&tcon->num_hardlinks);
 if (rc)
  cFYI(1, "Send error in hard link (NT rename) = %d", rc);

 cifs_buf_release(pSMB);
 if (rc == -EAGAIN)
  goto winCreateHardLinkRetry;

 return rc;
}
