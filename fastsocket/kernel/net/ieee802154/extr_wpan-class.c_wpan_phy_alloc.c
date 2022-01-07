
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * class; } ;
struct wpan_phy {TYPE_1__ dev; scalar_t__ idx; int pib_lock; } ;


 int GFP_KERNEL ;
 int dev_set_name (TYPE_1__*,char*,scalar_t__) ;
 int device_initialize (TYPE_1__*) ;
 int kfree (struct wpan_phy*) ;
 struct wpan_phy* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wpan_phy_class ;
 int wpan_phy_idx ;
 int wpan_phy_idx_valid (scalar_t__) ;
 int wpan_phy_mutex ;

struct wpan_phy *wpan_phy_alloc(size_t priv_size)
{
 struct wpan_phy *phy = kzalloc(sizeof(*phy) + priv_size,
   GFP_KERNEL);

 mutex_lock(&wpan_phy_mutex);
 phy->idx = wpan_phy_idx++;
 if (unlikely(!wpan_phy_idx_valid(phy->idx))) {
  wpan_phy_idx--;
  mutex_unlock(&wpan_phy_mutex);
  kfree(phy);
  return ((void*)0);
 }
 mutex_unlock(&wpan_phy_mutex);

 mutex_init(&phy->pib_lock);

 device_initialize(&phy->dev);
 dev_set_name(&phy->dev, "wpan-phy%d", phy->idx);

 phy->dev.class = &wpan_phy_class;

 return phy;
}
