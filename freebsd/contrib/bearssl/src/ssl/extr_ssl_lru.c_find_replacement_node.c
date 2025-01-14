
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int br_ssl_session_cache_lru ;


 scalar_t__ ADDR_NULL ;
 scalar_t__ TREE_LEFT_OFF ;
 scalar_t__ TREE_RIGHT_OFF ;
 scalar_t__ get_left (int *,scalar_t__) ;
 scalar_t__ get_right (int *,scalar_t__) ;

__attribute__((used)) static uint32_t
find_replacement_node(br_ssl_session_cache_lru *cc, uint32_t x, uint32_t *al)
{
 uint32_t y1, y2;

 y1 = get_left(cc, x);
 if (y1 != ADDR_NULL) {
  y2 = x + TREE_LEFT_OFF;
  for (;;) {
   uint32_t z;

   z = get_right(cc, y1);
   if (z == ADDR_NULL) {
    *al = y2;
    return y1;
   }
   y2 = y1 + TREE_RIGHT_OFF;
   y1 = z;
  }
 }
 y1 = get_right(cc, x);
 if (y1 != ADDR_NULL) {
  y2 = x + TREE_RIGHT_OFF;
  for (;;) {
   uint32_t z;

   z = get_left(cc, y1);
   if (z == ADDR_NULL) {
    *al = y2;
    return y1;
   }
   y2 = y1 + TREE_LEFT_OFF;
   y1 = z;
  }
 }
 *al = ADDR_NULL;
 return ADDR_NULL;
}
