
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int list; } ;
struct phonet_net {TYPE_1__ pndevs; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct phonet_net*) ;
 struct phonet_net* kmalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct phonet_net*) ;
 int phonet_net_id ;
 int pn_sock_seq_fops ;
 int proc_net_fops_create (struct net*,char*,int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int phonet_init_net(struct net *net)
{
 struct phonet_net *pnn = kmalloc(sizeof(*pnn), GFP_KERNEL);
 if (!pnn)
  return -ENOMEM;

 if (!proc_net_fops_create(net, "phonet", 0, &pn_sock_seq_fops)) {
  kfree(pnn);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&pnn->pndevs.list);
 spin_lock_init(&pnn->pndevs.lock);
 net_assign_generic(net, phonet_net_id, pnn);
 return 0;
}
