
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ store; } ;
typedef TYPE_1__ br_ssl_session_cache_lru ;


 scalar_t__ ADDR_NULL ;
 scalar_t__ SESSION_ID_OFF ;
 int find_node (TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ find_replacement_node (TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ get_left (TYPE_1__*,scalar_t__) ;
 scalar_t__ get_right (TYPE_1__*,scalar_t__) ;
 int set_left (TYPE_1__*,scalar_t__,scalar_t__) ;
 int set_link (TYPE_1__*,scalar_t__,scalar_t__) ;
 int set_right (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
remove_node(br_ssl_session_cache_lru *cc, uint32_t x)
{
 uint32_t alx, y, aly;
 find_node(cc, cc->store + x + SESSION_ID_OFF, &alx);






 y = find_replacement_node(cc, x, &aly);

 if (y != ADDR_NULL) {
  uint32_t z;





  z = get_left(cc, y);
  if (z == ADDR_NULL) {
   z = get_right(cc, y);
  }
  set_link(cc, aly, z);





  set_link(cc, alx, y);







  set_left(cc, y, get_left(cc, x));
  set_right(cc, y, get_right(cc, x));
 } else {



  set_link(cc, alx, ADDR_NULL);
 }
}
