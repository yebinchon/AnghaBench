
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; } ;


 int PG_BUSY ;
 int TASK_UNINTERRUPTIBLE ;
 int nfs_wait_bit_uninterruptible ;
 int wait_on_bit (int *,int ,int ,int ) ;

int
nfs_wait_on_request(struct nfs_page *req)
{
 return wait_on_bit(&req->wb_flags, PG_BUSY,
   nfs_wait_bit_uninterruptible,
   TASK_UNINTERRUPTIBLE);
}
