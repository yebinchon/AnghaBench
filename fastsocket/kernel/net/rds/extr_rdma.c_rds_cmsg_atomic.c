
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct rds_sock {scalar_t__ rs_recverr; } ;
struct TYPE_14__ {int swap_mask; int compare_mask; int swap; int compare; } ;
struct TYPE_11__ {int nocarry_mask; int add; } ;
struct TYPE_16__ {int op_active; int op_notify; int op_silent; TYPE_8__* op_notifier; scalar_t__ op_remote_addr; int op_rkey; scalar_t__ op_recverr; int op_sg; TYPE_5__ op_m_cswp; void* op_type; TYPE_2__ op_m_fadd; } ;
struct rds_message {TYPE_7__ atomic; } ;
struct TYPE_15__ {int swap_mask; int compare_mask; int swap; int compare; } ;
struct TYPE_13__ {int swap; int compare; } ;
struct TYPE_12__ {int nocarry_mask; int add; } ;
struct TYPE_10__ {int add; } ;
struct rds_atomic_args {int flags; int local_addr; int cookie; scalar_t__ remote_addr; int user_token; TYPE_6__ m_cswp; TYPE_4__ cswp; TYPE_3__ m_fadd; TYPE_1__ fadd; } ;
struct page {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_len; int cmsg_type; } ;
struct TYPE_17__ {int n_status; int n_user_token; } ;


 int BUG () ;
 struct rds_atomic_args* CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* RDS_ATOMIC_TYPE_CSWP ;
 void* RDS_ATOMIC_TYPE_FADD ;




 int RDS_RDMA_NOTIFY_ME ;
 int RDS_RDMA_SILENT ;
 int RDS_RDMA_SUCCESS ;
 int kfree (TYPE_8__*) ;
 TYPE_8__* kmalloc (int,int ) ;
 int offset_in_page (int) ;
 int put_page (struct page*) ;
 int rds_message_alloc_sgs (struct rds_message*,int) ;
 int rds_pin_pages (int,int,struct page**,int) ;
 int rds_rdma_cookie_key (int ) ;
 scalar_t__ rds_rdma_cookie_offset (int ) ;
 int sg_set_page (int ,struct page*,int,int ) ;

int rds_cmsg_atomic(struct rds_sock *rs, struct rds_message *rm,
      struct cmsghdr *cmsg)
{
 struct page *page = ((void*)0);
 struct rds_atomic_args *args;
 int ret = 0;

 if (cmsg->cmsg_len < CMSG_LEN(sizeof(struct rds_atomic_args))
  || rm->atomic.op_active)
  return -EINVAL;

 args = CMSG_DATA(cmsg);


 switch (cmsg->cmsg_type) {
 case 130:
  rm->atomic.op_type = RDS_ATOMIC_TYPE_FADD;
  rm->atomic.op_m_fadd.add = args->fadd.add;
  rm->atomic.op_m_fadd.nocarry_mask = 0;
  break;
 case 128:
  rm->atomic.op_type = RDS_ATOMIC_TYPE_FADD;
  rm->atomic.op_m_fadd.add = args->m_fadd.add;
  rm->atomic.op_m_fadd.nocarry_mask = args->m_fadd.nocarry_mask;
  break;
 case 131:
  rm->atomic.op_type = RDS_ATOMIC_TYPE_CSWP;
  rm->atomic.op_m_cswp.compare = args->cswp.compare;
  rm->atomic.op_m_cswp.swap = args->cswp.swap;
  rm->atomic.op_m_cswp.compare_mask = ~0;
  rm->atomic.op_m_cswp.swap_mask = ~0;
  break;
 case 129:
  rm->atomic.op_type = RDS_ATOMIC_TYPE_CSWP;
  rm->atomic.op_m_cswp.compare = args->m_cswp.compare;
  rm->atomic.op_m_cswp.swap = args->m_cswp.swap;
  rm->atomic.op_m_cswp.compare_mask = args->m_cswp.compare_mask;
  rm->atomic.op_m_cswp.swap_mask = args->m_cswp.swap_mask;
  break;
 default:
  BUG();
 }

 rm->atomic.op_notify = !!(args->flags & RDS_RDMA_NOTIFY_ME);
 rm->atomic.op_silent = !!(args->flags & RDS_RDMA_SILENT);
 rm->atomic.op_active = 1;
 rm->atomic.op_recverr = rs->rs_recverr;
 rm->atomic.op_sg = rds_message_alloc_sgs(rm, 1);
 if (!rm->atomic.op_sg) {
  ret = -ENOMEM;
  goto err;
 }


 if (args->local_addr & 0x7) {
  ret = -EFAULT;
  goto err;
 }

 ret = rds_pin_pages(args->local_addr, 1, &page, 1);
 if (ret != 1)
  goto err;
 ret = 0;

 sg_set_page(rm->atomic.op_sg, page, 8, offset_in_page(args->local_addr));

 if (rm->atomic.op_notify || rm->atomic.op_recverr) {





  rm->atomic.op_notifier = kmalloc(sizeof(*rm->atomic.op_notifier), GFP_KERNEL);
  if (!rm->atomic.op_notifier) {
   ret = -ENOMEM;
   goto err;
  }

  rm->atomic.op_notifier->n_user_token = args->user_token;
  rm->atomic.op_notifier->n_status = RDS_RDMA_SUCCESS;
 }

 rm->atomic.op_rkey = rds_rdma_cookie_key(args->cookie);
 rm->atomic.op_remote_addr = args->remote_addr + rds_rdma_cookie_offset(args->cookie);

 return ret;
err:
 if (page)
  put_page(page);
 kfree(rm->atomic.op_notifier);

 return ret;
}
