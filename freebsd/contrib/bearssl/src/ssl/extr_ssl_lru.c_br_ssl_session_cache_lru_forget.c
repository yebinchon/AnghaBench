
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ store; int init_done; } ;
typedef TYPE_1__ br_ssl_session_cache_lru ;


 scalar_t__ ADDR_NULL ;
 int SESSION_ID_LEN ;
 scalar_t__ VERSION_OFF ;
 int br_enc16be (scalar_t__,int ) ;
 scalar_t__ find_node (TYPE_1__*,unsigned char*,int *) ;
 int mask_id (TYPE_1__*,unsigned char const*,unsigned char*) ;

void br_ssl_session_cache_lru_forget(
 br_ssl_session_cache_lru *cc, const unsigned char *id)
{
 unsigned char mid[SESSION_ID_LEN];
 uint32_t addr;





 if (!cc->init_done) {
  return;
 }
 mask_id(cc, id, mid);
 addr = find_node(cc, mid, ((void*)0));
 if (addr != ADDR_NULL) {
  br_enc16be(cc->store + addr + VERSION_OFF, 0);
 }
}
