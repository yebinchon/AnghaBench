
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_buffer {size_t len; int list; int msg; scalar_t__ cons; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct read_buffer* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static int queue_reply(struct list_head *queue, const void *data, size_t len)
{
 struct read_buffer *rb;

 if (len == 0)
  return 0;

 rb = kmalloc(sizeof(*rb) + len, GFP_KERNEL);
 if (rb == ((void*)0))
  return -ENOMEM;

 rb->cons = 0;
 rb->len = len;

 memcpy(rb->msg, data, len);

 list_add_tail(&rb->list, queue);
 return 0;
}
