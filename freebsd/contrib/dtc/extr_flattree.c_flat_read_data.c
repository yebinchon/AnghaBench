
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct inbuf {int dummy; } ;
struct data {int len; int val; } ;


 struct data data_grow_for (struct data,int) ;
 struct data empty_data ;
 int flat_read_chunk (struct inbuf*,int ,int) ;
 int flat_realign (struct inbuf*,int) ;

__attribute__((used)) static struct data flat_read_data(struct inbuf *inb, int len)
{
 struct data d = empty_data;

 if (len == 0)
  return empty_data;

 d = data_grow_for(d, len);
 d.len = len;

 flat_read_chunk(inb, d.val, len);

 flat_realign(inb, sizeof(uint32_t));

 return d;
}
