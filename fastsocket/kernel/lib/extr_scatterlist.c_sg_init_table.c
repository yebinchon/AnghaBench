
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int sg_magic; } ;


 int SG_MAGIC ;
 int memset (struct scatterlist*,int ,int) ;
 int sg_mark_end (struct scatterlist*) ;

void sg_init_table(struct scatterlist *sgl, unsigned int nents)
{
 memset(sgl, 0, sizeof(*sgl) * nents);







 sg_mark_end(&sgl[nents - 1]);
}
