
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {struct ieee_buf* curbuf; struct ieee_buflist* current; } ;
struct ieee_buflist {struct ieee_buf* tail; struct ieee_buf* head; } ;
struct ieee_buf {scalar_t__ c; int * next; } ;
typedef int bfd_boolean ;


 int TRUE ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_change_buffer (struct ieee_handle *info, struct ieee_buflist *buflist)
{
  if (buflist->head == ((void*)0))
    {
      struct ieee_buf *buf;

      buf = (struct ieee_buf *) xmalloc (sizeof *buf);
      buf->next = ((void*)0);
      buf->c = 0;
      buflist->head = buf;
      buflist->tail = buf;
    }

  info->current = buflist;
  info->curbuf = buflist->tail;

  return TRUE;
}
