
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

boolean_t
vdev_is_hole(uint64_t *hole_array, uint_t holes, uint_t id)
{
 for (int c = 0; c < holes; c++) {


  if (hole_array[c] == id)
   return (B_TRUE);
 }
 return (B_FALSE);
}
