
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int BUG_ON (int) ;
 int rest_of_page (char*) ;
 int sg_set_buf (struct scatterlist*,char*,int) ;

__attribute__((used)) static int
pack_sg_list(struct scatterlist *sg, int start, int limit, char *data,
        int count)
{
 int s;
 int index = start;

 while (count) {
  s = rest_of_page(data);
  if (s > count)
   s = count;
  sg_set_buf(&sg[index++], data, s);
  count -= s;
  data += s;
  BUG_ON(index > limit);
 }

 return index-start;
}
