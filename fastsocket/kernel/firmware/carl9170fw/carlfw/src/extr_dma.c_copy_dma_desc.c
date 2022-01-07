
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int dummy; } ;


 int memcpy (struct dma_desc*,struct dma_desc*,int) ;

__attribute__((used)) static void copy_dma_desc(struct dma_desc *dst,
     struct dma_desc *src)
{
 memcpy(dst, src, sizeof(struct dma_desc));
}
