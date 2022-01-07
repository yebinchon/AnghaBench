
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {unsigned char* rq_buffer; int rq_bufsize; int rq_count; int rq_queue; int rq_wait; struct smb_sb_info* rq_server; } ;


 int GFP_KERNEL ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int VERBOSE (char*,struct smb_request*) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 unsigned char* kmalloc (int,int ) ;
 int kmem_cache_free (int ,struct smb_request*) ;
 struct smb_request* kmem_cache_zalloc (int ,int ) ;
 int req_cachep ;

__attribute__((used)) static struct smb_request *smb_do_alloc_request(struct smb_sb_info *server,
      int bufsize)
{
 struct smb_request *req;
 unsigned char *buf = ((void*)0);

 req = kmem_cache_zalloc(req_cachep, GFP_KERNEL);
 VERBOSE("allocating request: %p\n", req);
 if (!req)
  goto out;

 if (bufsize > 0) {
  buf = kmalloc(bufsize, GFP_NOFS);
  if (!buf) {
   kmem_cache_free(req_cachep, req);
   return ((void*)0);
  }
 }

 req->rq_buffer = buf;
 req->rq_bufsize = bufsize;
 req->rq_server = server;
 init_waitqueue_head(&req->rq_wait);
 INIT_LIST_HEAD(&req->rq_queue);
 atomic_set(&req->rq_count, 1);

out:
 return req;
}
