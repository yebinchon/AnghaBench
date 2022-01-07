
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfs_trans {TYPE_1__* eng; } ;
struct TYPE_2__ {int thread; } ;


 int kfree (struct netfs_trans*) ;
 int pohmelfs_crypto_thread_make_ready (int ) ;

void netfs_trans_free(struct netfs_trans *t)
{
 if (t->eng)
  pohmelfs_crypto_thread_make_ready(t->eng->thread);
 kfree(t);
}
