
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct smb_hdr {int Flags2; int WordCount; int Tid; int Uid; int Mid; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int need_reconnect; int ipc; int Flags; int nativeFileSystem; int treeName; int tid; int tidStatus; int password; } ;
struct cifs_ses {int capabilities; int ipc_tid; TYPE_4__* server; int Suid; } ;
typedef int __u16 ;
typedef int __le16 ;
struct TYPE_8__ {int sec_mode; scalar_t__ secType; int cryptkey; } ;
struct TYPE_5__ {int smb_buf_length; } ;
struct TYPE_7__ {int AndXCommand; unsigned char* Password; void* ByteCount; TYPE_1__ hdr; void* PasswordLength; void* Flags; } ;
struct TYPE_6__ {int OptionalSupport; } ;
typedef TYPE_2__ TCONX_RSP ;
typedef TYPE_3__ TCONX_REQ ;


 int CAP_DFS ;
 int CAP_STATUS32 ;
 int CAP_UNICODE ;
 int CIFSSEC_MAY_LANMAN ;
 int CIFS_AUTH_RESP_SIZE ;
 int CifsGood ;
 int EIO ;
 int ENOMEM ;
 int GetNextMid (TYPE_4__*) ;
 scalar_t__ LANMAN ;
 int MAX_TREE_SIZE ;
 int SECMODE_PW_ENCRYPT ;
 int SECMODE_SIGN_ENABLED ;
 int SECMODE_SIGN_REQUIRED ;
 int SECMODE_USER ;
 int SMBFLG2_DFS ;
 int SMBFLG2_ERR_STATUS ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int SMBFLG2_UNICODE ;
 int SMBNTencrypt (int ,int ,unsigned char*) ;
 int SMB_COM_TREE_CONNECT_ANDX ;
 int SendReceive (unsigned int,struct cifs_ses*,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int TCON_EXTENDED_SECINFO ;
 scalar_t__ be32_to_cpu (int ) ;
 int cFYI (int,char*,...) ;
 int calc_lanman_hash (int ,int ,int,unsigned char*) ;
 struct smb_hdr* cifs_buf_get () ;
 int cifs_buf_release (struct smb_hdr*) ;
 int cifs_strndup_from_ucs (unsigned char*,int,int,struct nls_table const*) ;
 int cifs_strtoUCS (int *,char const*,int,struct nls_table const*) ;
 int cpu_to_be32 (scalar_t__) ;
 void* cpu_to_le16 (int) ;
 int get_bcc (struct smb_hdr*) ;
 int global_secflags ;
 int header_assemble (struct smb_hdr*,int ,int *,int) ;
 int kfree (int ) ;
 int le16_to_cpu (int ) ;
 unsigned char* pByteArea (struct smb_hdr*) ;
 int strcpy (unsigned char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (int ,char const*,int ) ;
 int strnlen (unsigned char*,int) ;

int
CIFSTCon(unsigned int xid, struct cifs_ses *ses,
  const char *tree, struct cifs_tcon *tcon,
  const struct nls_table *nls_codepage)
{
 struct smb_hdr *smb_buffer;
 struct smb_hdr *smb_buffer_response;
 TCONX_REQ *pSMB;
 TCONX_RSP *pSMBr;
 unsigned char *bcc_ptr;
 int rc = 0;
 int length;
 __u16 bytes_left, count;

 if (ses == ((void*)0))
  return -EIO;

 smb_buffer = cifs_buf_get();
 if (smb_buffer == ((void*)0))
  return -ENOMEM;

 smb_buffer_response = smb_buffer;

 header_assemble(smb_buffer, SMB_COM_TREE_CONNECT_ANDX,
   ((void*)0) , 4 );

 smb_buffer->Mid = GetNextMid(ses->server);
 smb_buffer->Uid = ses->Suid;
 pSMB = (TCONX_REQ *) smb_buffer;
 pSMBr = (TCONX_RSP *) smb_buffer_response;

 pSMB->AndXCommand = 0xFF;
 pSMB->Flags = cpu_to_le16(TCON_EXTENDED_SECINFO);
 bcc_ptr = &pSMB->Password[0];
 if (!tcon || (ses->server->sec_mode & SECMODE_USER)) {
  pSMB->PasswordLength = cpu_to_le16(1);
  *bcc_ptr = 0;
  bcc_ptr++;

 } else {
  pSMB->PasswordLength = cpu_to_le16(CIFS_AUTH_RESP_SIZE);
  rc = SMBNTencrypt(tcon->password, ses->server->cryptkey,
     bcc_ptr);

  bcc_ptr += CIFS_AUTH_RESP_SIZE;
  if (ses->capabilities & CAP_UNICODE) {

   *bcc_ptr = 0;
   bcc_ptr++;
  }
 }

 if (ses->server->sec_mode &
   (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
  smb_buffer->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

 if (ses->capabilities & CAP_STATUS32) {
  smb_buffer->Flags2 |= SMBFLG2_ERR_STATUS;
 }
 if (ses->capabilities & CAP_DFS) {
  smb_buffer->Flags2 |= SMBFLG2_DFS;
 }
 if (ses->capabilities & CAP_UNICODE) {
  smb_buffer->Flags2 |= SMBFLG2_UNICODE;
  length =
      cifs_strtoUCS((__le16 *) bcc_ptr, tree,
   6 *
   ( + 256 ), nls_codepage);
  bcc_ptr += 2 * length;
  bcc_ptr += 2;
 } else {
  strcpy(bcc_ptr, tree);
  bcc_ptr += strlen(tree) + 1;
 }
 strcpy(bcc_ptr, "?????");
 bcc_ptr += strlen("?????");
 bcc_ptr += 1;
 count = bcc_ptr - &pSMB->Password[0];
 pSMB->hdr.smb_buf_length = cpu_to_be32(be32_to_cpu(
     pSMB->hdr.smb_buf_length) + count);
 pSMB->ByteCount = cpu_to_le16(count);

 rc = SendReceive(xid, ses, smb_buffer, smb_buffer_response, &length,
    0);


 if ((rc == 0) && (tcon != ((void*)0))) {
  bool is_unicode;

  tcon->tidStatus = CifsGood;
  tcon->need_reconnect = 0;
  tcon->tid = smb_buffer_response->Tid;
  bcc_ptr = pByteArea(smb_buffer_response);
  bytes_left = get_bcc(smb_buffer_response);
  length = strnlen(bcc_ptr, bytes_left - 2);
  if (smb_buffer->Flags2 & SMBFLG2_UNICODE)
   is_unicode = 1;
  else
   is_unicode = 0;



  if (length == 3) {
   if ((bcc_ptr[0] == 'I') && (bcc_ptr[1] == 'P') &&
       (bcc_ptr[2] == 'C')) {
    cFYI(1, "IPC connection");
    tcon->ipc = 1;
   }
  } else if (length == 2) {
   if ((bcc_ptr[0] == 'A') && (bcc_ptr[1] == ':')) {

    cFYI(1, "disk share connection");
   }
  }
  bcc_ptr += length + 1;
  bytes_left -= (length + 1);
  strncpy(tcon->treeName, tree, MAX_TREE_SIZE);


  kfree(tcon->nativeFileSystem);
  tcon->nativeFileSystem = cifs_strndup_from_ucs(bcc_ptr,
            bytes_left, is_unicode,
            nls_codepage);

  cFYI(1, "nativeFileSystem=%s", tcon->nativeFileSystem);

  if ((smb_buffer_response->WordCount == 3) ||
    (smb_buffer_response->WordCount == 7))

   tcon->Flags = le16_to_cpu(pSMBr->OptionalSupport);
  else
   tcon->Flags = 0;
  cFYI(1, "Tcon flags: 0x%x ", tcon->Flags);
 } else if ((rc == 0) && tcon == ((void*)0)) {

  ses->ipc_tid = smb_buffer_response->Tid;
 }

 cifs_buf_release(smb_buffer);
 return rc;
}
