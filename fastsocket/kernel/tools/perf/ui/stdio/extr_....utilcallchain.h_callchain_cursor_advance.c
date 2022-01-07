
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct callchain_cursor {int pos; TYPE_1__* curr; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;



__attribute__((used)) static inline void callchain_cursor_advance(struct callchain_cursor *cursor)
{
 cursor->curr = cursor->curr->next;
 cursor->pos++;
}
