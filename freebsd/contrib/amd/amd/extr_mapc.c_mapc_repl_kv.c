
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** kvhash; } ;
typedef TYPE_1__ mnt_map ;
struct TYPE_6__ {char* val; struct TYPE_6__* next; int key; } ;
typedef TYPE_2__ kv ;


 int FSTREQ (int ,char*) ;
 int XFREE (char*) ;
 size_t kvhash_of (char*) ;
 int mapc_add_kv (TYPE_1__*,char*,char*) ;

__attribute__((used)) static void
mapc_repl_kv(mnt_map *m, char *key, char *val)
{
  kv *k;




  k = m->kvhash[kvhash_of(key)];




  while (k && !FSTREQ(k->key, key))
    k = k->next;

  if (k) {
    XFREE(k->val);
    k->val = val;
  } else {
    mapc_add_kv(m, key, val);
  }
}
