
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* store; size_t store_len; void* root; void* tail; void* head; scalar_t__ init_done; scalar_t__ store_ptr; int * vtable; } ;
typedef TYPE_1__ br_ssl_session_cache_lru ;


 void* ADDR_NULL ;
 int lru_class ;

void
br_ssl_session_cache_lru_init(br_ssl_session_cache_lru *cc,
 unsigned char *store, size_t store_len)
{
 cc->vtable = &lru_class;
 cc->store = store;
 cc->store_len = store_len;
 cc->store_ptr = 0;
 cc->init_done = 0;
 cc->head = ADDR_NULL;
 cc->tail = ADDR_NULL;
 cc->root = ADDR_NULL;
}
