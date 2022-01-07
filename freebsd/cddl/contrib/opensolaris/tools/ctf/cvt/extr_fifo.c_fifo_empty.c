
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * f_head; } ;
typedef TYPE_1__ fifo_t ;



int
fifo_empty(fifo_t *f)
{
 return (f->f_head == ((void*)0));
}
