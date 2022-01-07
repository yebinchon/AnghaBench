
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;


 int GFP_NOFS ;
 int atomic_inc (int *) ;
 int cifs_sm_req_poolp ;
 struct smb_hdr* mempool_alloc (int ,int ) ;
 int smBufAllocCount ;
 int totSmBufAllocCount ;

struct smb_hdr *
cifs_small_buf_get(void)
{
 struct smb_hdr *ret_buf = ((void*)0);





 ret_buf = mempool_alloc(cifs_sm_req_poolp, GFP_NOFS);
 if (ret_buf) {


  atomic_inc(&smBufAllocCount);




 }
 return ret_buf;
}
