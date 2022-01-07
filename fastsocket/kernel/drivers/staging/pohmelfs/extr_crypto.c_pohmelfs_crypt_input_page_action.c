
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iv; int data; } ;
struct pohmelfs_crypto_thread {int page; TYPE_1__ eng; int size; TYPE_3__* psb; } ;
struct pohmelfs_crypto_input_action_data {int page; int iv; int size; TYPE_2__* e; } ;
struct TYPE_6__ {int crypto_attached_size; } ;
struct TYPE_5__ {int data; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int pohmelfs_crypt_input_page_action(struct pohmelfs_crypto_thread *t, void *data)
{
 struct pohmelfs_crypto_input_action_data *act = data;

 memcpy(t->eng.data, act->e->data, t->psb->crypto_attached_size);

 t->size = act->size;
 t->eng.iv = act->iv;

 t->page = act->page;
 return 0;
}
