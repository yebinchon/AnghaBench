
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; void* priv; } ;
typedef int INT ;


 int DBGPRINT (int ,char*) ;
 int GFP_KERNEL ;
 int RT_DEBUG_ERROR ;
 scalar_t__ kmalloc (int,int ) ;
 int memset (struct net_device*,int ,int) ;
 int strcpy (int ,char const*) ;

struct net_device *alloc_netdev(
 int sizeof_priv,
 const char *mask,
 void (*setup)(struct net_device *))
{
    struct net_device *dev;
    INT alloc_size;



    alloc_size = sizeof (*dev) + sizeof_priv + 31;

    dev = (struct net_device *) kmalloc(alloc_size, GFP_KERNEL);
    if (dev == ((void*)0))
    {
        DBGPRINT(RT_DEBUG_ERROR,
    ("alloc_netdev: Unable to allocate device memory.\n"));
        return ((void*)0);
    }

    memset(dev, 0, alloc_size);

    if (sizeof_priv)
        dev->priv = (void *) (((long)(dev + 1) + 31) & ~31);

    setup(dev);
    strcpy(dev->name, mask);

    return dev;
}
