
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 size_t sg_copy_buffer (struct scatterlist*,unsigned int,void*,size_t,int ) ;

size_t sg_copy_from_buffer(struct scatterlist *sgl, unsigned int nents,
      void *buf, size_t buflen)
{
 return sg_copy_buffer(sgl, nents, buf, buflen, 0);
}
