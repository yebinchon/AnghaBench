
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int acked_features; } ;


 unsigned int rcu_dereference (int ) ;

__attribute__((used)) static inline int vhost_has_feature(struct vhost_dev *dev, int bit)
{
 unsigned acked_features = rcu_dereference(dev->acked_features);
 return acked_features & (1 << bit);
}
