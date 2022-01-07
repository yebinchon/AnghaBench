
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_request {int rq_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void smb_rget(struct smb_request *req)
{
 atomic_inc(&req->rq_count);
}
