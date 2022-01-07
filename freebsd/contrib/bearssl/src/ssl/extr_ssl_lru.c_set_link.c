
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ store; scalar_t__ root; } ;
typedef TYPE_1__ br_ssl_session_cache_lru ;


 scalar_t__ ADDR_NULL ;
 int br_enc32be (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
set_link(br_ssl_session_cache_lru *cc, uint32_t alx, uint32_t x)
{
 if (alx == ADDR_NULL) {
  cc->root = x;
 } else {
  br_enc32be(cc->store + alx, x);
 }
}
