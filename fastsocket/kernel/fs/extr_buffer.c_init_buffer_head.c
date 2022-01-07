
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_assoc_buffers; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct buffer_head*,int ,int) ;

__attribute__((used)) static void
init_buffer_head(void *data)
{
 struct buffer_head *bh = data;

 memset(bh, 0, sizeof(*bh));
 INIT_LIST_HEAD(&bh->b_assoc_buffers);
}
