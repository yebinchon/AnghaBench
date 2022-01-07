
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_data {int (* hd_fun ) (void*,int ) ;int hd_private; int hd_key; TYPE_1__* hd_hash; } ;
struct TYPE_2__ {scalar_t__ (* h_cmp ) (int ,void*) ;} ;


 scalar_t__ stub1 (int ,void*) ;
 int stub2 (void*,int ) ;

__attribute__((used)) static int
hash_find_list_cb(void *node, void *arg)
{
 struct hash_data *hd = arg;
 int cbrc;
 int rc = 0;

 if (hd->hd_hash->h_cmp(hd->hd_key, node) == 0) {
  if ((cbrc = hd->hd_fun(node, hd->hd_private)) < 0)
   return (cbrc);
  rc += cbrc;
 }

 return (rc);
}
