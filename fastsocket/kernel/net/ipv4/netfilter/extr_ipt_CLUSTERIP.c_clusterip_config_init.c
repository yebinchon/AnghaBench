
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipt_clusterip_tgt_info {int hash_initval; int hash_mode; int num_total_nodes; int clustermac; } ;
struct clusterip_config {int list; int pde; int entries; int refcount; int hash_initval; int hash_mode; int num_total_nodes; int clustermac; int clusterip; struct net_device* dev; } ;
typedef int __be32 ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int atomic_set (int *,int) ;
 int clusterip_config_init_nodelist (struct clusterip_config*,struct ipt_clusterip_tgt_info const*) ;
 int clusterip_configs ;
 int clusterip_lock ;
 int clusterip_proc_fops ;
 int clusterip_procdir ;
 int kfree (struct clusterip_config*) ;
 struct clusterip_config* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,int *,int ) ;
 int proc_create_data (char*,int,int ,int *,struct clusterip_config*) ;
 int sprintf (char*,char*,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct clusterip_config *
clusterip_config_init(const struct ipt_clusterip_tgt_info *i, __be32 ip,
   struct net_device *dev)
{
 struct clusterip_config *c;

 c = kzalloc(sizeof(*c), GFP_ATOMIC);
 if (!c)
  return ((void*)0);

 c->dev = dev;
 c->clusterip = ip;
 memcpy(&c->clustermac, &i->clustermac, ETH_ALEN);
 c->num_total_nodes = i->num_total_nodes;
 clusterip_config_init_nodelist(c, i);
 c->hash_mode = i->hash_mode;
 c->hash_initval = i->hash_initval;
 atomic_set(&c->refcount, 1);
 atomic_set(&c->entries, 1);
 write_lock_bh(&clusterip_lock);
 list_add(&c->list, &clusterip_configs);
 write_unlock_bh(&clusterip_lock);

 return c;
}
