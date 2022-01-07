
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,void const*,unsigned int) ;

void sg_init_one(struct scatterlist *sg, const void *buf, unsigned int buflen)
{
 sg_init_table(sg, 1);
 sg_set_buf(sg, buf, buflen);
}
