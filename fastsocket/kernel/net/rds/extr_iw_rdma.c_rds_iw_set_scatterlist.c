
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rds_iw_scatterlist {unsigned int len; scalar_t__ bytes; scalar_t__ dma_npages; scalar_t__ dma_len; struct scatterlist* list; } ;



__attribute__((used)) static void rds_iw_set_scatterlist(struct rds_iw_scatterlist *sg,
  struct scatterlist *list, unsigned int sg_len)
{
 sg->list = list;
 sg->len = sg_len;
 sg->dma_len = 0;
 sg->dma_npages = 0;
 sg->bytes = 0;
}
