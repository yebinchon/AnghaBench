
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ifalias; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IFALIASZ ;
 int kfree (int *) ;
 int * krealloc (int *,size_t,int ) ;
 int strlcpy (int *,char const*,size_t) ;

int dev_set_alias(struct net_device *dev, const char *alias, size_t len)
{
 ASSERT_RTNL();

 if (len >= IFALIASZ)
  return -EINVAL;

 if (!len) {
  if (dev->ifalias) {
   kfree(dev->ifalias);
   dev->ifalias = ((void*)0);
  }
  return 0;
 }

 dev->ifalias = krealloc(dev->ifalias, len + 1, GFP_KERNEL);
 if (!dev->ifalias)
  return -ENOMEM;

 strlcpy(dev->ifalias, alias, len+1);
 return len;
}
