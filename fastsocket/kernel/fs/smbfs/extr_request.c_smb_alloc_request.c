
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smb_sb_info {int nr_requests; } ;
struct smb_request {int dummy; } ;
struct TYPE_3__ {int policy; } ;


 int ERESTARTSYS ;
 struct smb_request* ERR_PTR (int ) ;
 scalar_t__ MAX_REQUEST_HARD ;
 int SCHED_YIELD ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 scalar_t__ fatal_signal_pending (TYPE_1__*) ;
 scalar_t__ nfs_try_to_free_pages (struct smb_sb_info*) ;
 int schedule () ;
 struct smb_request* smb_do_alloc_request (struct smb_sb_info*,int) ;

struct smb_request *smb_alloc_request(struct smb_sb_info *server, int bufsize)
{
 struct smb_request *req = ((void*)0);

 for (;;) {
  atomic_inc(&server->nr_requests);
  if (atomic_read(&server->nr_requests) <= MAX_REQUEST_HARD) {
   req = smb_do_alloc_request(server, bufsize);
   if (req != ((void*)0))
    break;
  }
  break;

 }
 return req;
}
