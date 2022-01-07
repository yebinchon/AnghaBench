
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_set_t {int slots; } ;


 int XDELETE (struct pointer_set_t*) ;
 int XDELETEVEC (int ) ;

void
pointer_set_destroy (struct pointer_set_t *pset)
{
  XDELETEVEC (pset->slots);
  XDELETE (pset);
}
