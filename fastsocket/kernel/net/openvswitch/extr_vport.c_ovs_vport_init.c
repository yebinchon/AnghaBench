
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VPORT_HASH_BUCKETS ;
 int dev_table ;
 int kzalloc (int,int ) ;

int ovs_vport_init(void)
{
 dev_table = kzalloc(VPORT_HASH_BUCKETS * sizeof(struct hlist_head),
       GFP_KERNEL);
 if (!dev_table)
  return -ENOMEM;

 return 0;
}
