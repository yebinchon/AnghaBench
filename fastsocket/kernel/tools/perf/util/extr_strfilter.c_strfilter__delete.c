
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int root; } ;


 int free (struct strfilter*) ;
 int strfilter_node__delete (int ) ;

void strfilter__delete(struct strfilter *self)
{
 if (self) {
  strfilter_node__delete(self->root);
  free(self);
 }
}
