
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* state ) (TYPE_1__ const**,void*) ;int (* update ) (TYPE_1__ const**,unsigned char*,size_t) ;int (* init ) (TYPE_1__ const**) ;} ;
typedef TYPE_1__ br_hash_class ;


 size_t block_size (TYPE_1__ const*) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int memset (unsigned char*,unsigned int,size_t) ;
 int stub1 (TYPE_1__ const**) ;
 int stub2 (TYPE_1__ const**,unsigned char*,size_t) ;
 int stub3 (TYPE_1__ const**,void*) ;

__attribute__((used)) static void
process_key(const br_hash_class **hc, void *ks,
 const void *key, size_t key_len, unsigned bb)
{
 unsigned char tmp[256];
 size_t blen, u;

 blen = block_size(*hc);
 memcpy(tmp, key, key_len);
 for (u = 0; u < key_len; u ++) {
  tmp[u] ^= (unsigned char)bb;
 }
 memset(tmp + key_len, bb, blen - key_len);
 (*hc)->init(hc);
 (*hc)->update(hc, tmp, blen);
 (*hc)->state(hc, ks);
}
