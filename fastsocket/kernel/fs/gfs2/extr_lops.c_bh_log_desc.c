
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_log_descriptor {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;



__attribute__((used)) static inline struct gfs2_log_descriptor *bh_log_desc(struct buffer_head *bh)
{
 return (struct gfs2_log_descriptor *)bh->b_data;
}
