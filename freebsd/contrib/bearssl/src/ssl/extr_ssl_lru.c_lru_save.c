
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_17__ {unsigned char* master_secret; int cipher_suite; int version; int session_id; } ;
typedef TYPE_2__ br_ssl_session_parameters ;
struct TYPE_18__ {scalar_t__ store_len; int init_done; scalar_t__ store_ptr; scalar_t__ tail; scalar_t__ head; scalar_t__ store; int hash; int index_key; } ;
typedef TYPE_3__ br_ssl_session_cache_lru ;
typedef int br_ssl_session_cache_class ;
struct TYPE_16__ {int rng; } ;
struct TYPE_19__ {TYPE_1__ eng; } ;
typedef TYPE_4__ br_ssl_server_context ;


 scalar_t__ ADDR_NULL ;
 scalar_t__ CIPHER_SUITE_OFF ;
 scalar_t__ LRU_ENTRY_LEN ;
 int MASTER_SECRET_LEN ;
 scalar_t__ MASTER_SECRET_OFF ;
 int SESSION_ID_LEN ;
 scalar_t__ SESSION_ID_OFF ;
 scalar_t__ VERSION_OFF ;
 int br_enc16be (scalar_t__,int ) ;
 int br_hmac_drbg_generate (int *,int ,int) ;
 int br_hmac_drbg_get_hash (int *) ;
 scalar_t__ find_node (TYPE_3__*,unsigned char*,scalar_t__*) ;
 scalar_t__ get_prev (TYPE_3__*,scalar_t__) ;
 int mask_id (TYPE_3__*,int ,unsigned char*) ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int remove_node (TYPE_3__*,scalar_t__) ;
 int set_left (TYPE_3__*,scalar_t__,scalar_t__) ;
 int set_link (TYPE_3__*,scalar_t__,scalar_t__) ;
 int set_next (TYPE_3__*,scalar_t__,scalar_t__) ;
 int set_prev (TYPE_3__*,scalar_t__,scalar_t__) ;
 int set_right (TYPE_3__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
lru_save(const br_ssl_session_cache_class **ctx,
 br_ssl_server_context *server_ctx,
 const br_ssl_session_parameters *params)
{
 br_ssl_session_cache_lru *cc;
 unsigned char id[SESSION_ID_LEN];
 uint32_t x, alx;

 cc = (br_ssl_session_cache_lru *)ctx;





 if (cc->store_len < LRU_ENTRY_LEN) {
  return;
 }





 if (!cc->init_done) {
  br_hmac_drbg_generate(&server_ctx->eng.rng,
   cc->index_key, sizeof cc->index_key);
  cc->hash = br_hmac_drbg_get_hash(&server_ctx->eng.rng);
  cc->init_done = 1;
 }
 mask_id(cc, params->session_id, id);
 if (find_node(cc, id, ((void*)0)) != ADDR_NULL) {
  return;
 }
 if (cc->store_ptr > (cc->store_len - LRU_ENTRY_LEN)) {




  x = cc->tail;
  cc->tail = get_prev(cc, x);
  if (cc->tail == ADDR_NULL) {
   cc->head = ADDR_NULL;
  } else {
   set_next(cc, cc->tail, ADDR_NULL);
  }




  remove_node(cc, x);
 } else {



  x = cc->store_ptr;
  cc->store_ptr += LRU_ENTRY_LEN;
 }




 find_node(cc, id, &alx);
 set_link(cc, alx, x);
 set_left(cc, x, ADDR_NULL);
 set_right(cc, x, ADDR_NULL);





 if (cc->head == ADDR_NULL) {
  cc->tail = x;
 } else {
  set_prev(cc, cc->head, x);
 }
 set_prev(cc, x, ADDR_NULL);
 set_next(cc, x, cc->head);
 cc->head = x;




 memcpy(cc->store + x + SESSION_ID_OFF, id, SESSION_ID_LEN);
 memcpy(cc->store + x + MASTER_SECRET_OFF,
  params->master_secret, MASTER_SECRET_LEN);
 br_enc16be(cc->store + x + VERSION_OFF, params->version);
 br_enc16be(cc->store + x + CIPHER_SUITE_OFF, params->cipher_suite);
}
