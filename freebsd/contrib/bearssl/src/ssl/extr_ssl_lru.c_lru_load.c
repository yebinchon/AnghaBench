
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {unsigned int version; int master_secret; void* cipher_suite; int session_id; } ;
typedef TYPE_1__ br_ssl_session_parameters ;
struct TYPE_11__ {scalar_t__ store; scalar_t__ head; scalar_t__ tail; int init_done; } ;
typedef TYPE_2__ br_ssl_session_cache_lru ;
typedef int br_ssl_session_cache_class ;
typedef int br_ssl_server_context ;


 scalar_t__ ADDR_NULL ;
 scalar_t__ CIPHER_SUITE_OFF ;
 int MASTER_SECRET_LEN ;
 scalar_t__ MASTER_SECRET_OFF ;
 int SESSION_ID_LEN ;
 scalar_t__ VERSION_OFF ;
 void* br_dec16be (scalar_t__) ;
 scalar_t__ find_node (TYPE_2__*,unsigned char*,int *) ;
 scalar_t__ get_next (TYPE_2__*,scalar_t__) ;
 scalar_t__ get_prev (TYPE_2__*,scalar_t__) ;
 int mask_id (TYPE_2__*,int ,unsigned char*) ;
 int memcpy (int ,scalar_t__,int ) ;
 int set_next (TYPE_2__*,scalar_t__,scalar_t__) ;
 int set_prev (TYPE_2__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
lru_load(const br_ssl_session_cache_class **ctx,
 br_ssl_server_context *server_ctx,
 br_ssl_session_parameters *params)
{
 br_ssl_session_cache_lru *cc;
 unsigned char id[SESSION_ID_LEN];
 uint32_t x;

 (void)server_ctx;
 cc = (br_ssl_session_cache_lru *)ctx;
 if (!cc->init_done) {
  return 0;
 }
 mask_id(cc, params->session_id, id);
 x = find_node(cc, id, ((void*)0));
 if (x != ADDR_NULL) {
  unsigned version;

  version = br_dec16be(cc->store + x + VERSION_OFF);
  if (version == 0) {





   return 0;
  }
  params->version = version;
  params->cipher_suite = br_dec16be(
   cc->store + x + CIPHER_SUITE_OFF);
  memcpy(params->master_secret,
   cc->store + x + MASTER_SECRET_OFF,
   MASTER_SECRET_LEN);
  if (x != cc->head) {




   uint32_t p, n;

   p = get_prev(cc, x);
   n = get_next(cc, x);
   set_next(cc, p, n);
   if (n == ADDR_NULL) {
    cc->tail = p;
   } else {
    set_prev(cc, n, p);
   }
   set_prev(cc, cc->head, x);
   set_next(cc, x, cc->head);
   set_prev(cc, x, ADDR_NULL);
   cc->head = x;
  }
  return 1;
 }
 return 0;
}
