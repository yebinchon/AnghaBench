
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static inline void gfs2_buffer_copy_tail(struct buffer_head *to_bh,
      int to_head,
      struct buffer_head *from_bh,
      int from_head)
{
 BUG_ON(from_head < to_head);
 memcpy(to_bh->b_data + to_head, from_bh->b_data + from_head,
        from_bh->b_size - from_head);
 memset(to_bh->b_data + to_bh->b_size + to_head - from_head,
        0, from_head - to_head);
}
