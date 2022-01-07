
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_size; int b_data; } ;


 int memset (int ,int ,int ) ;

__attribute__((used)) static inline void gfs2_buffer_clear(struct buffer_head *bh)
{
 memset(bh->b_data, 0, bh->b_size);
}
