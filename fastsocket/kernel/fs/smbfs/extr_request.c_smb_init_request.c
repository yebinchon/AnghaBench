
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {int header; int rstate; } ;
struct smb_request {int* rq_header; int rq_resp_wct; int rq_bytes_recvd; int rq_rlen; int rq_iovlen; TYPE_1__* rq_iov; } ;
struct TYPE_2__ {int* iov_base; int iov_len; } ;


 int PARANOIA (char*,int) ;
 int SMB_HEADER_LEN ;
 int SMB_RECV_DROP ;
 int SMB_RECV_PARAM ;
 int VERBOSE (char*,int,int) ;
 int add_recv_stats (int ) ;
 int memcpy (int*,int ,int) ;
 int smb_len (int ) ;
 int smb_wct ;

__attribute__((used)) static int smb_init_request(struct smb_sb_info *server, struct smb_request *req)
{
 int hdrlen, wct;

 memcpy(req->rq_header, server->header, SMB_HEADER_LEN);

 wct = *(req->rq_header + smb_wct);
 if (wct > 20) {
  PARANOIA("wct too large, %d > 20\n", wct);
  server->rstate = SMB_RECV_DROP;
  return 0;
 }

 req->rq_resp_wct = wct;
 hdrlen = SMB_HEADER_LEN + wct*2 + 2;
 VERBOSE("header length: %d   smb_wct: %2d\n", hdrlen, wct);

 req->rq_bytes_recvd = SMB_HEADER_LEN;
 req->rq_rlen = hdrlen;
 req->rq_iov[0].iov_base = req->rq_header;
 req->rq_iov[0].iov_len = hdrlen;
 req->rq_iovlen = 1;
 server->rstate = SMB_RECV_PARAM;




 return 0;
}
