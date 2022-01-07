
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_chan {int client; int vq; } ;
struct p9_req_t {int status; } ;
struct p9_fcall {struct p9_fcall* tag; } ;
struct TYPE_2__ {struct virtio_chan* priv; } ;


 int P9_DEBUG_TRANS ;
 int P9_DPRINTK (int ,char*,...) ;
 int REQ_STATUS_RCVD ;
 int p9_client_cb (int ,struct p9_req_t*) ;
 struct p9_req_t* p9_tag_lookup (int ,struct p9_fcall*) ;
 struct p9_fcall* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static void req_done(struct virtqueue *vq)
{
 struct virtio_chan *chan = vq->vdev->priv;
 struct p9_fcall *rc;
 unsigned int len;
 struct p9_req_t *req;

 P9_DPRINTK(P9_DEBUG_TRANS, ": request done\n");

 while ((rc = virtqueue_get_buf(chan->vq, &len)) != ((void*)0)) {
  P9_DPRINTK(P9_DEBUG_TRANS, ": rc %p\n", rc);
  P9_DPRINTK(P9_DEBUG_TRANS, ": lookup tag %d\n", rc->tag);
  req = p9_tag_lookup(chan->client, rc->tag);
  req->status = REQ_STATUS_RCVD;
  p9_client_cb(chan->client, req);
 }
}
