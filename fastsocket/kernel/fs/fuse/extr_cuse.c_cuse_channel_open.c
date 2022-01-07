
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int connected; scalar_t__ blocked; int release; } ;
struct cuse_conn {TYPE_1__ fc; int list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cuse_fc_release ;
 int cuse_send_init (struct cuse_conn*) ;
 int fuse_conn_init (TYPE_1__*) ;
 int fuse_conn_put (TYPE_1__*) ;
 struct cuse_conn* kzalloc (int,int ) ;

__attribute__((used)) static int cuse_channel_open(struct inode *inode, struct file *file)
{
 struct cuse_conn *cc;
 int rc;


 cc = kzalloc(sizeof(*cc), GFP_KERNEL);
 if (!cc)
  return -ENOMEM;

 fuse_conn_init(&cc->fc);

 INIT_LIST_HEAD(&cc->list);
 cc->fc.release = cuse_fc_release;

 cc->fc.connected = 1;
 cc->fc.blocked = 0;
 rc = cuse_send_init(cc);
 if (rc) {
  fuse_conn_put(&cc->fc);
  return rc;
 }
 file->private_data = &cc->fc;

 return 0;
}
