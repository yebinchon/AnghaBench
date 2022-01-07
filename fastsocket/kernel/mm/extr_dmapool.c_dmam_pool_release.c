
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int dummy; } ;
struct device {int dummy; } ;


 int dma_pool_destroy (struct dma_pool*) ;

__attribute__((used)) static void dmam_pool_release(struct device *dev, void *res)
{
 struct dma_pool *pool = *(struct dma_pool **)res;

 dma_pool_destroy(pool);
}
