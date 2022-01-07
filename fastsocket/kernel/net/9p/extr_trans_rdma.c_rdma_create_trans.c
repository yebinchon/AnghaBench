
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


struct sockaddr {int dummy; } ;
struct TYPE_22__ {int max_recv_sge; int max_send_sge; scalar_t__ max_recv_wr; scalar_t__ max_send_wr; } ;
struct rdma_conn_param {int initiator_depth; int responder_resources; scalar_t__ private_data_len; int * private_data; TYPE_4__* recv_cq; TYPE_4__* send_cq; int qp_type; int sq_sig_type; TYPE_3__ cap; struct p9_client* qp_context; int event_handler; } ;
struct TYPE_20__ {int s_addr; } ;
struct TYPE_21__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct p9_trans_rdma {scalar_t__ state; int cm_done; TYPE_4__* cm_id; int qp; TYPE_4__* pd; TYPE_4__* cq; TYPE_4__* dma_mr; int lkey; int timeout; TYPE_2__ addr; } ;
struct p9_rdma_opts {scalar_t__ rq_depth; scalar_t__ sq_depth; int port; } ;
struct p9_client {int status; struct p9_trans_rdma* trans; } ;
struct ib_qp_init_attr {int initiator_depth; int responder_resources; scalar_t__ private_data_len; int * private_data; TYPE_4__* recv_cq; TYPE_4__* send_cq; int qp_type; int sq_sig_type; TYPE_3__ cap; struct p9_client* qp_context; int event_handler; } ;
struct ib_device_attr {int device_cap_flags; } ;
typedef int conn_param ;
struct TYPE_23__ {int qp; int lkey; TYPE_11__* device; } ;
struct TYPE_19__ {int local_dma_lkey; } ;


 int AF_INET ;
 int Connected ;
 int ENOMEM ;
 int ENOTCONN ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_CQ_NEXT_COMP ;
 int IB_DEVICE_LOCAL_DMA_LKEY ;
 int IB_QPT_RC ;
 int IB_SIGNAL_REQ_WR ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 scalar_t__ P9_RDMA_ADDR_RESOLVED ;
 scalar_t__ P9_RDMA_CONNECTED ;
 int P9_RDMA_IRD ;
 int P9_RDMA_ORD ;
 int P9_RDMA_RECV_SGE ;
 scalar_t__ P9_RDMA_ROUTE_RESOLVED ;
 int P9_RDMA_SEND_SGE ;
 int RDMA_PS_TCP ;
 struct p9_trans_rdma* alloc_rdma (struct p9_rdma_opts*) ;
 int cq_comp_handler ;
 int cq_event_handler ;
 int htons (int ) ;
 TYPE_4__* ib_alloc_pd (TYPE_11__*) ;
 TYPE_4__* ib_create_cq (TYPE_11__*,int ,int ,struct p9_client*,scalar_t__,int ) ;
 TYPE_4__* ib_get_dma_mr (TYPE_4__*,int ) ;
 int ib_query_device (TYPE_11__*,struct ib_device_attr*) ;
 int ib_req_notify_cq (TYPE_4__*,int ) ;
 int in_aton (char const*) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int p9_cm_event_handler ;
 int parse_opts (char*,struct p9_rdma_opts*) ;
 int qp_event_handler ;
 int rdma_connect (TYPE_4__*,struct rdma_conn_param*) ;
 TYPE_4__* rdma_create_id (int ,struct p9_client*,int ,int ) ;
 int rdma_create_qp (TYPE_4__*,TYPE_4__*,struct rdma_conn_param*) ;
 int rdma_destroy_trans (struct p9_trans_rdma*) ;
 int rdma_resolve_addr (TYPE_4__*,int *,struct sockaddr*,int ) ;
 int rdma_resolve_route (TYPE_4__*,int ) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int
rdma_create_trans(struct p9_client *client, const char *addr, char *args)
{
 int err;
 struct p9_rdma_opts opts;
 struct p9_trans_rdma *rdma;
 struct rdma_conn_param conn_param;
 struct ib_qp_init_attr qp_attr;
 struct ib_device_attr devattr;


 err = parse_opts(args, &opts);
 if (err < 0)
  return err;


 rdma = alloc_rdma(&opts);
 if (!rdma)
  return -ENOMEM;


 rdma->cm_id = rdma_create_id(p9_cm_event_handler, client, RDMA_PS_TCP,
         IB_QPT_RC);
 if (IS_ERR(rdma->cm_id))
  goto error;


 client->trans = rdma;


 rdma->addr.sin_family = AF_INET;
 rdma->addr.sin_addr.s_addr = in_aton(addr);
 rdma->addr.sin_port = htons(opts.port);
 err = rdma_resolve_addr(rdma->cm_id, ((void*)0),
    (struct sockaddr *)&rdma->addr,
    rdma->timeout);
 if (err)
  goto error;
 err = wait_for_completion_interruptible(&rdma->cm_done);
 if (err || (rdma->state != P9_RDMA_ADDR_RESOLVED))
  goto error;


 err = rdma_resolve_route(rdma->cm_id, rdma->timeout);
 if (err)
  goto error;
 err = wait_for_completion_interruptible(&rdma->cm_done);
 if (err || (rdma->state != P9_RDMA_ROUTE_RESOLVED))
  goto error;


 err = ib_query_device(rdma->cm_id->device, &devattr);
 if (err)
  goto error;


 rdma->cq = ib_create_cq(rdma->cm_id->device, cq_comp_handler,
    cq_event_handler, client,
    opts.sq_depth + opts.rq_depth + 1, 0);
 if (IS_ERR(rdma->cq))
  goto error;
 ib_req_notify_cq(rdma->cq, IB_CQ_NEXT_COMP);


 rdma->pd = ib_alloc_pd(rdma->cm_id->device);
 if (IS_ERR(rdma->pd))
  goto error;


 rdma->dma_mr = ((void*)0);
 if (devattr.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY)
  rdma->lkey = rdma->cm_id->device->local_dma_lkey;
 else {
  rdma->dma_mr = ib_get_dma_mr(rdma->pd, IB_ACCESS_LOCAL_WRITE);
  if (IS_ERR(rdma->dma_mr))
   goto error;
  rdma->lkey = rdma->dma_mr->lkey;
 }


 memset(&qp_attr, 0, sizeof qp_attr);
 qp_attr.event_handler = qp_event_handler;
 qp_attr.qp_context = client;
 qp_attr.cap.max_send_wr = opts.sq_depth;
 qp_attr.cap.max_recv_wr = opts.rq_depth;
 qp_attr.cap.max_send_sge = P9_RDMA_SEND_SGE;
 qp_attr.cap.max_recv_sge = P9_RDMA_RECV_SGE;
 qp_attr.sq_sig_type = IB_SIGNAL_REQ_WR;
 qp_attr.qp_type = IB_QPT_RC;
 qp_attr.send_cq = rdma->cq;
 qp_attr.recv_cq = rdma->cq;
 err = rdma_create_qp(rdma->cm_id, rdma->pd, &qp_attr);
 if (err)
  goto error;
 rdma->qp = rdma->cm_id->qp;


 memset(&conn_param, 0, sizeof(conn_param));
 conn_param.private_data = ((void*)0);
 conn_param.private_data_len = 0;
 conn_param.responder_resources = P9_RDMA_IRD;
 conn_param.initiator_depth = P9_RDMA_ORD;
 err = rdma_connect(rdma->cm_id, &conn_param);
 if (err)
  goto error;
 err = wait_for_completion_interruptible(&rdma->cm_done);
 if (err || (rdma->state != P9_RDMA_CONNECTED))
  goto error;

 client->status = Connected;

 return 0;

error:
 rdma_destroy_trans(rdma);
 return -ENOTCONN;
}
