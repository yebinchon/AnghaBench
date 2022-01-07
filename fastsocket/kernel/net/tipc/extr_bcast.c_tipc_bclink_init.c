
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* media; int cong_links; } ;
struct TYPE_11__ {int lock; } ;
struct TYPE_13__ {int next_out_no; int print_buf; int name; int state; TYPE_3__* b_ptr; int max_pkt; TYPE_2__* owner; int waiting_ports; } ;
struct TYPE_10__ {int name; int send_msg; } ;
struct TYPE_14__ {TYPE_3__ bearer; TYPE_2__ node; TYPE_4__ link; TYPE_1__ media; } ;


 scalar_t__ BCLINK_LOG_BUF_SIZE ;
 int BCLINK_WIN_DEFAULT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_PKT_DEFAULT_MCAST ;
 int TIPC_MAX_LINK_NAME ;
 int WORKING_WORKING ;
 TYPE_5__* bcbearer ;
 TYPE_4__* bcl ;
 TYPE_5__* bclink ;
 int kfree (TYPE_5__*) ;
 char* kmalloc (scalar_t__,int ) ;
 TYPE_5__* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*) ;
 int strlcpy (int ,int ,int ) ;
 int tipc_bcbearer_send ;
 int tipc_bclink_name ;
 int tipc_link_set_queue_limits (TYPE_4__*,int ) ;
 int tipc_printbuf_init (int *,char*,scalar_t__) ;
 int warn (char*) ;

int tipc_bclink_init(void)
{
 bcbearer = kzalloc(sizeof(*bcbearer), GFP_ATOMIC);
 bclink = kzalloc(sizeof(*bclink), GFP_ATOMIC);
 if (!bcbearer || !bclink) {
 nomem:
  warn("Multicast link creation failed, no memory\n");
  kfree(bcbearer);
  bcbearer = ((void*)0);
  kfree(bclink);
  bclink = ((void*)0);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&bcbearer->bearer.cong_links);
 bcbearer->bearer.media = &bcbearer->media;
 bcbearer->media.send_msg = tipc_bcbearer_send;
 sprintf(bcbearer->media.name, "tipc-multicast");

 bcl = &bclink->link;
 INIT_LIST_HEAD(&bcl->waiting_ports);
 bcl->next_out_no = 1;
 spin_lock_init(&bclink->node.lock);
 bcl->owner = &bclink->node;
 bcl->max_pkt = MAX_PKT_DEFAULT_MCAST;
 tipc_link_set_queue_limits(bcl, BCLINK_WIN_DEFAULT);
 bcl->b_ptr = &bcbearer->bearer;
 bcl->state = WORKING_WORKING;
 strlcpy(bcl->name, tipc_bclink_name, TIPC_MAX_LINK_NAME);

 if (BCLINK_LOG_BUF_SIZE) {
  char *pb = kmalloc(BCLINK_LOG_BUF_SIZE, GFP_ATOMIC);

  if (!pb)
   goto nomem;
  tipc_printbuf_init(&bcl->print_buf, pb, BCLINK_LOG_BUF_SIZE);
 }

 return 0;
}
