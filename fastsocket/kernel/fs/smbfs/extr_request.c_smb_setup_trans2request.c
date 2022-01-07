
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int const max_xmit; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct smb_request {int const rq_lparm; unsigned char* rq_data; int const rq_ldata; int rq_bufsize; int* rq_header; int const rq_trans2_command; int rq_iovlen; unsigned char* rq_parm; int rq_slen; int rq_setup_read; TYPE_2__* rq_iov; struct smb_sb_info* rq_server; } ;
struct TYPE_4__ {unsigned char* iov_base; int iov_len; } ;


 int ALIGN (int const,int) ;
 int DSET (int*,int ,int ) ;
 int ENOMEM ;
 int SMB_HEADER_LEN ;
 int SMB_TRANS2_MAX_PARAM ;
 int SMBtrans2 ;
 int WSET (int*,int ,int const) ;
 int smb_dscnt ;
 int smb_dsoff ;
 int smb_flags ;
 int smb_mdrcnt ;
 int smb_mprcnt ;
 int smb_msrcnt ;
 int smb_pscnt ;
 int smb_psoff ;
 int smb_setup0 ;
 int smb_setup_bcc ;
 int smb_setup_header (struct smb_request*,int ,int const,int const) ;
 int smb_suwcnt ;
 int smb_tdscnt ;
 int smb_timeout ;
 int smb_tpscnt ;

__attribute__((used)) static int smb_setup_trans2request(struct smb_request *req)
{
 struct smb_sb_info *server = req->rq_server;
 int mparam, mdata;
 static unsigned char padding[4];




 const int smb_parameters = 15;
 const int header = SMB_HEADER_LEN + 2 * smb_parameters + 2;
 const int oparam = ALIGN(header + 3, sizeof(u32));
 const int odata = ALIGN(oparam + req->rq_lparm, sizeof(u32));
 const int bcc = (req->rq_data ? odata + req->rq_ldata :
     oparam + req->rq_lparm) - header;

 if ((bcc + oparam) > server->opt.max_xmit)
  return -ENOMEM;
 smb_setup_header(req, SMBtrans2, smb_parameters, bcc);
 mparam = SMB_TRANS2_MAX_PARAM;
 mdata = req->rq_bufsize - mparam;

 mdata = server->opt.max_xmit - mparam - 100;
 if (mdata < 1024) {
  mdata = 1024;
  mparam = 20;
 }
 WSET(req->rq_header, smb_tpscnt, req->rq_lparm);
 WSET(req->rq_header, smb_tdscnt, req->rq_ldata);
 WSET(req->rq_header, smb_mprcnt, mparam);
 WSET(req->rq_header, smb_mdrcnt, mdata);
 WSET(req->rq_header, smb_msrcnt, 0);
 WSET(req->rq_header, smb_flags, 0);
 DSET(req->rq_header, smb_timeout, 0);
 WSET(req->rq_header, smb_pscnt, req->rq_lparm);
 WSET(req->rq_header, smb_psoff, oparam - 4);
 WSET(req->rq_header, smb_dscnt, req->rq_ldata);
 WSET(req->rq_header, smb_dsoff, req->rq_data ? odata - 4 : 0);
 *(req->rq_header + smb_suwcnt) = 0x01;
 *(req->rq_header + smb_suwcnt + 1) = 0x00;
 WSET(req->rq_header, smb_setup0, req->rq_trans2_command);

 req->rq_iovlen = 2;
 req->rq_iov[0].iov_base = (void *) req->rq_header;
 req->rq_iov[0].iov_len = oparam;
 req->rq_iov[1].iov_base = (req->rq_parm==((void*)0)) ? padding : req->rq_parm;
 req->rq_iov[1].iov_len = req->rq_lparm;
 req->rq_slen = oparam + req->rq_lparm;

 if (req->rq_data) {
  req->rq_iovlen += 2;
  req->rq_iov[2].iov_base = padding;
  req->rq_iov[2].iov_len = odata - oparam - req->rq_lparm;
  req->rq_iov[3].iov_base = req->rq_data;
  req->rq_iov[3].iov_len = req->rq_ldata;
  req->rq_slen = odata + req->rq_ldata;
 }


 req->rq_setup_read = smb_setup_bcc;

 return 0;
}
