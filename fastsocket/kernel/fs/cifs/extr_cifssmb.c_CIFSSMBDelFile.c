
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int num_deletes; int ses; } ;
typedef int __le16 ;
struct TYPE_5__ {int Flags2; } ;
struct TYPE_6__ {int BufferFormat; void* ByteCount; void* SearchAttributes; scalar_t__ fileName; TYPE_1__ hdr; } ;
typedef int DELETE_FILE_RSP ;
typedef TYPE_2__ DELETE_FILE_REQ ;


 int ATTR_HIDDEN ;
 int ATTR_READONLY ;
 int ATTR_SYSTEM ;
 int EAGAIN ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_DELETE ;
 int SendReceive (int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cFYI (int,char*,int) ;
 int cifsConvertToUCS (int *,char const*,int ,struct nls_table const*,int) ;
 int cifs_buf_release (TYPE_2__*) ;
 int cifs_stats_inc (int *) ;
 void* cpu_to_le16 (int) ;
 int inc_rfc1001_len (TYPE_2__*,int) ;
 int smb_init (int ,int,struct cifs_tcon*,void**,void**) ;
 int strncpy (scalar_t__,char const*,int) ;
 int strnlen (char const*,int ) ;

int
CIFSSMBDelFile(const int xid, struct cifs_tcon *tcon, const char *fileName,
        const struct nls_table *nls_codepage, int remap)
{
 DELETE_FILE_REQ *pSMB = ((void*)0);
 DELETE_FILE_RSP *pSMBr = ((void*)0);
 int rc = 0;
 int bytes_returned;
 int name_len;

DelFileRetry:
 rc = smb_init(SMB_COM_DELETE, 1, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len =
      cifsConvertToUCS((__le16 *) pSMB->fileName, fileName,
         PATH_MAX, nls_codepage, remap);
  name_len++;
  name_len *= 2;
 } else {
  name_len = strnlen(fileName, PATH_MAX);
  name_len++;
  strncpy(pSMB->fileName, fileName, name_len);
 }
 pSMB->SearchAttributes =
     cpu_to_le16(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM);
 pSMB->BufferFormat = 0x04;
 inc_rfc1001_len(pSMB, name_len + 1);
 pSMB->ByteCount = cpu_to_le16(name_len + 1);
 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 cifs_stats_inc(&tcon->num_deletes);
 if (rc)
  cFYI(1, "Error in RMFile = %d", rc);

 cifs_buf_release(pSMB);
 if (rc == -EAGAIN)
  goto DelFileRetry;

 return rc;
}
