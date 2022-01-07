
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_data {void* hd_ret; int hd_key; TYPE_1__* hd_hash; } ;
struct TYPE_2__ {scalar_t__ (* h_cmp ) (int ,void*) ;} ;


 scalar_t__ stub1 (int ,void*) ;

__attribute__((used)) static int
hash_find_first_cb(void *node, void *arg)
{
 struct hash_data *hd = arg;
 if (hd->hd_hash->h_cmp(hd->hd_key, node) == 0) {
  hd->hd_ret = node;
  return (-1);
 }

 return (0);
}
