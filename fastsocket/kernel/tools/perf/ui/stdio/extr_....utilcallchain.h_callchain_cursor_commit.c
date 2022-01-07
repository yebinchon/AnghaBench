
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor {scalar_t__ pos; int first; int curr; } ;



__attribute__((used)) static inline void callchain_cursor_commit(struct callchain_cursor *cursor)
{
 cursor->curr = cursor->first;
 cursor->pos = 0;
}
