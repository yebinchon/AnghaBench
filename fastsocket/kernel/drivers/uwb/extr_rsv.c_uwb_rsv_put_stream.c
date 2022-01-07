
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; TYPE_1__* dev; } ;
struct uwb_rsv {int stream; TYPE_2__ target; struct uwb_rc* rc; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned long* streams; struct device dev; } ;
struct uwb_rc {TYPE_3__ uwb_dev; } ;
struct TYPE_4__ {unsigned long* streams; } ;




 int clear_bit (int ,unsigned long*) ;
 int dev_dbg (struct device*,char*,int ) ;

__attribute__((used)) static void uwb_rsv_put_stream(struct uwb_rsv *rsv)
{
 struct uwb_rc *rc = rsv->rc;
 struct device *dev = &rc->uwb_dev.dev;
 unsigned long *streams_bm;

 switch (rsv->target.type) {
 case 129:
  streams_bm = rsv->target.dev->streams;
  break;
 case 128:
  streams_bm = rc->uwb_dev.streams;
  break;
 default:
  return;
 }

 clear_bit(rsv->stream, streams_bm);

 dev_dbg(dev, "put stream %d\n", rsv->stream);
}
