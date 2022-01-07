
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; } ;
struct smb_sb_info {TYPE_2__* mnt; TYPE_1__ opt; } ;
struct smb_request {int* rq_header; int rq_iovlen; int* rq_buffer; TYPE_3__* rq_iov; struct smb_sb_info* rq_server; } ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;
struct TYPE_6__ {int* iov_base; scalar_t__ iov_len; } ;
struct TYPE_5__ {int flags; } ;


 int SMB_FLAGS2_EXTENDED_ATTRIBUTES ;
 int SMB_FLAGS2_LONG_PATH_COMPONENTS ;
 int SMB_FLAGS2_UNICODE_STRINGS ;
 int SMB_FLAGS_CASELESS_PATHNAMES ;
 scalar_t__ SMB_HEADER_LEN ;
 int SMB_MOUNT_UNICODE ;
 scalar_t__ SMB_PROTOCOL_CORE ;
 int WSET (int*,int ,int) ;
 int memset (int*,char,int) ;
 int* smb_encode_smb_length (int*,scalar_t__) ;
 int smb_flg ;
 int smb_flg2 ;

__u8 *
smb_setup_header(struct smb_request *req, __u8 command, __u16 wct, __u16 bcc)
{
 __u32 xmit_len = SMB_HEADER_LEN + wct * sizeof(__u16) + bcc + 2;
 __u8 *p = req->rq_header;
 struct smb_sb_info *server = req->rq_server;

 p = smb_encode_smb_length(p, xmit_len - 4);

 *p++ = 0xff;
 *p++ = 'S';
 *p++ = 'M';
 *p++ = 'B';
 *p++ = command;

 memset(p, '\0', 19);
 p += 19;
 p += 8;

 if (server->opt.protocol > SMB_PROTOCOL_CORE) {
  int flags = SMB_FLAGS_CASELESS_PATHNAMES;
  int flags2 = SMB_FLAGS2_LONG_PATH_COMPONENTS |
   SMB_FLAGS2_EXTENDED_ATTRIBUTES;

  *(req->rq_header + smb_flg) = flags;
  if (server->mnt->flags & SMB_MOUNT_UNICODE)
   flags2 |= SMB_FLAGS2_UNICODE_STRINGS;
  WSET(req->rq_header, smb_flg2, flags2);
 }
 *p++ = wct;
 p += 2 * wct;
 WSET(p, 0, bcc);


 req->rq_iovlen = 1;
 req->rq_iov[0].iov_base = req->rq_header;
 req->rq_iov[0].iov_len = xmit_len - bcc;

 return req->rq_buffer;
}
