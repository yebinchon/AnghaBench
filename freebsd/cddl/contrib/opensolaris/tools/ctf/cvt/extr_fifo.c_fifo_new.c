
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fifo_t ;


 int * xcalloc (int) ;

fifo_t *
fifo_new(void)
{
 fifo_t *f;

 f = xcalloc(sizeof (fifo_t));

 return (f);
}
