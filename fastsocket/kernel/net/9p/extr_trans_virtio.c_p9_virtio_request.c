
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_chan {int vq; int sg; } ;
struct p9_req_t {TYPE_1__* tc; int status; scalar_t__ rc; } ;
struct p9_fcall {int dummy; } ;
struct p9_client {int msize; struct virtio_chan* trans; } ;
struct TYPE_2__ {char* sdata; int size; } ;


 int EIO ;
 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*) ;
 int REQ_STATUS_SENT ;
 scalar_t__ VIRTQUEUE_NUM ;
 int pack_sg_list (int ,int,scalar_t__,char*,int ) ;
 scalar_t__ virtqueue_add_buf (int ,int ,int,int,TYPE_1__*) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static int
p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
{
 int in, out;
 struct virtio_chan *chan = client->trans;
 char *rdata = (char *)req->rc+sizeof(struct p9_fcall);

 P9_DPRINTK(P9_DEBUG_TRANS, "9p debug: virtio request\n");

 out = pack_sg_list(chan->sg, 0, VIRTQUEUE_NUM, req->tc->sdata,
        req->tc->size);
 in = pack_sg_list(chan->sg, out, VIRTQUEUE_NUM-out, rdata,
        client->msize);

 req->status = REQ_STATUS_SENT;

 if (virtqueue_add_buf(chan->vq, chan->sg, out, in, req->tc) < 0) {
  P9_DPRINTK(P9_DEBUG_TRANS,
   "9p debug: virtio rpc add_buf returned failure");
  return -EIO;
 }

 virtqueue_kick(chan->vq);

 P9_DPRINTK(P9_DEBUG_TRANS, "9p debug: virtio request kicked\n");
 return 0;
}
