
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int kfree (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 struct scatterlist* sg_virt (struct scatterlist*) ;

__attribute__((used)) static void free_sglist (struct scatterlist *sg, int nents)
{
 unsigned i;

 if (!sg)
  return;
 for (i = 0; i < nents; i++) {
  if (!sg_page(&sg[i]))
   continue;
  kfree (sg_virt(&sg[i]));
 }
 kfree (sg);
}
