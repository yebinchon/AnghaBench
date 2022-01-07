
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_map_t {int values; int keys; } ;


 int XDELETE (struct pointer_map_t*) ;
 int XDELETEVEC (int ) ;

void pointer_map_destroy (struct pointer_map_t *pmap)
{
  XDELETEVEC (pmap->keys);
  XDELETEVEC (pmap->values);
  XDELETE (pmap);
}
