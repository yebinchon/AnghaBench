
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int opaque_t ;
struct TYPE_4__ {TYPE_2__** kvhash; } ;
typedef TYPE_1__ mnt_map ;
struct TYPE_5__ {struct TYPE_5__* next; int key; } ;
typedef TYPE_2__ kv ;
typedef int (* key_fun ) (int ,int ) ;


 int NKVHASH ;
 int stub1 (int ,int ) ;

int
mapc_keyiter(mnt_map *m, key_fun *fn, opaque_t arg)
{
  int i;
  int c = 0;

  for (i = 0; i < NKVHASH; i++) {
    kv *k = m->kvhash[i];
    while (k) {
      (*fn) (k->key, arg);
      k = k->next;
      c++;
    }
  }

  return c;
}
