
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct key_construction {TYPE_1__* authkey; TYPE_1__* key; } ;
struct TYPE_5__ {int serial; } ;


 int kenter (char*,int ,int ,int) ;
 int key_negate_and_link (TYPE_1__*,int ,int *,TYPE_1__*) ;
 int key_negative_timeout ;
 int key_put (TYPE_1__*) ;
 int key_revoke (TYPE_1__*) ;
 int kfree (struct key_construction*) ;

void complete_request_key(struct key_construction *cons, int error)
{
 kenter("{%d,%d},%d", cons->key->serial, cons->authkey->serial, error);

 if (error < 0)
  key_negate_and_link(cons->key, key_negative_timeout, ((void*)0),
        cons->authkey);
 else
  key_revoke(cons->authkey);

 key_put(cons->key);
 key_put(cons->authkey);
 kfree(cons);
}
