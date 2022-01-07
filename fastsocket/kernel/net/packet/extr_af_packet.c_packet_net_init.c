
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sklist; int sklist_lock; } ;
struct net {TYPE_1__ packet; } ;


 int ENOMEM ;
 int INIT_HLIST_HEAD (int *) ;
 int packet_seq_fops ;
 int proc_net_fops_create (struct net*,char*,int ,int *) ;
 int rwlock_init (int *) ;

__attribute__((used)) static int packet_net_init(struct net *net)
{
 rwlock_init(&net->packet.sklist_lock);
 INIT_HLIST_HEAD(&net->packet.sklist);

 if (!proc_net_fops_create(net, "packet", 0, &packet_seq_fops))
  return -ENOMEM;

 return 0;
}
