
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {scalar_t__ tail; scalar_t__ head; } ;



__attribute__((used)) static void ti_buf_clear(struct circ_buf *cb)
{
 cb->head = cb->tail = 0;
}
