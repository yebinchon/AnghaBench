
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee_handle {struct ieee_buf* curbuf; TYPE_1__* current; } ;
struct ieee_buf {size_t c; int* buf; struct ieee_buf* next; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {struct ieee_buf* tail; struct ieee_buf* head; } ;


 size_t IEEE_BUFSIZE ;
 int TRUE ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_real_write_byte (struct ieee_handle *info, int b)
{
  if (info->curbuf->c >= IEEE_BUFSIZE)
    {
      struct ieee_buf *n;

      n = (struct ieee_buf *) xmalloc (sizeof *n);
      n->next = ((void*)0);
      n->c = 0;
      if (info->current->head == ((void*)0))
 info->current->head = n;
      else
 info->current->tail->next = n;
      info->current->tail = n;
      info->curbuf = n;
    }

  info->curbuf->buf[info->curbuf->c] = b;
  ++info->curbuf->c;

  return TRUE;
}
