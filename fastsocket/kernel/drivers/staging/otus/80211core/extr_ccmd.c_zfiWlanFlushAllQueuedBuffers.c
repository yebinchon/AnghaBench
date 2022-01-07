
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zfAgingDefragList (int *,int) ;
 int zfApFlushBufferedPsFrame (int *) ;
 int zfFlushVtxq (int *) ;

void zfiWlanFlushAllQueuedBuffers(zdev_t *dev)
{

 zfFlushVtxq(dev);

 zfApFlushBufferedPsFrame(dev);

 zfAgingDefragList(dev, 1);
}
