
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ head; scalar_t__ tail; scalar_t__ len; } ;
typedef TYPE_1__ msnd_fifo ;



void msnd_fifo_make_empty(msnd_fifo *f)
{
 f->len = f->tail = f->head = 0;
}
