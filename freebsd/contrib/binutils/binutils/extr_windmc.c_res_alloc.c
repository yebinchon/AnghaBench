
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rc_uint_type ;


 scalar_t__ obstack_alloc (int *,size_t) ;
 int res_obstack ;

void *
res_alloc (rc_uint_type bytes)
{
  return (void *) obstack_alloc (&res_obstack, (size_t) bytes);
}
