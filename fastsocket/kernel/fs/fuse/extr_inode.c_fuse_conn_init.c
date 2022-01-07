
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int blocked; int attr_version; int scramble_key; scalar_t__ reqctr; int polled_files; scalar_t__ khctr; int congestion_threshold; int max_background; int num_waiting; int entry; int bg_queue; int interrupts; int io; int processing; int pending; int reserved_req_waitq; int blocked_waitq; int waitq; int count; int killsb; int inst_mutex; int lock; } ;


 int FUSE_DEFAULT_CONGESTION_THRESHOLD ;
 int FUSE_DEFAULT_MAX_BACKGROUND ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int atomic_set (int *,int) ;
 int get_random_bytes (int *,int) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct fuse_conn*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void fuse_conn_init(struct fuse_conn *fc)
{
 memset(fc, 0, sizeof(*fc));
 spin_lock_init(&fc->lock);
 mutex_init(&fc->inst_mutex);
 init_rwsem(&fc->killsb);
 atomic_set(&fc->count, 1);
 init_waitqueue_head(&fc->waitq);
 init_waitqueue_head(&fc->blocked_waitq);
 init_waitqueue_head(&fc->reserved_req_waitq);
 INIT_LIST_HEAD(&fc->pending);
 INIT_LIST_HEAD(&fc->processing);
 INIT_LIST_HEAD(&fc->io);
 INIT_LIST_HEAD(&fc->interrupts);
 INIT_LIST_HEAD(&fc->bg_queue);
 INIT_LIST_HEAD(&fc->entry);
 atomic_set(&fc->num_waiting, 0);
 fc->max_background = FUSE_DEFAULT_MAX_BACKGROUND;
 fc->congestion_threshold = FUSE_DEFAULT_CONGESTION_THRESHOLD;
 fc->khctr = 0;
 fc->polled_files = RB_ROOT;
 fc->reqctr = 0;
 fc->blocked = 1;
 fc->attr_version = 1;
 get_random_bytes(&fc->scramble_key, sizeof(fc->scramble_key));
}
