
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* val; struct TYPE_4__* key; struct TYPE_4__* next; } ;
typedef TYPE_1__ kv ;


 int NKVHASH ;
 int XFREE (TYPE_1__*) ;

__attribute__((used)) static void
mapc_clear_kvhash(kv **kvhash)
{
  int i;





  for (i = 0; i < NKVHASH; i++) {
    kv *k = kvhash[i];
    while (k) {
      kv *n = k->next;
      XFREE(k->key);
      XFREE(k->val);
      XFREE(k);
      k = n;
    }
  }
}
