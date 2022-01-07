
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_desc {int tfm; scalar_t__ flags; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_hash (int ,int ,int ) ;
 int crypto_free_hash (int ) ;
 int crypto_hash_init (struct hash_desc*) ;
 int ima_hash ;
 int pr_info (char*,int ,int) ;

__attribute__((used)) static int init_desc(struct hash_desc *desc)
{
 int rc;

 desc->tfm = crypto_alloc_hash(ima_hash, 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(desc->tfm)) {
  pr_info("IMA: failed to load %s transform: %ld\n",
   ima_hash, PTR_ERR(desc->tfm));
  rc = PTR_ERR(desc->tfm);
  return rc;
 }
 desc->flags = 0;
 rc = crypto_hash_init(desc);
 if (rc)
  crypto_free_hash(desc->tfm);
 return rc;
}
