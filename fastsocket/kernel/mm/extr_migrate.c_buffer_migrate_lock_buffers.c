
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;



__attribute__((used)) static inline bool buffer_migrate_lock_buffers(struct buffer_head *head,
       enum migrate_mode mode)
{
 return 1;
}
