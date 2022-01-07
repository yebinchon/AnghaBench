
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int * data; int len; } ;
struct scatterlist {int length; } ;
struct hash_desc {int tfm; int flags; } ;
typedef int __be32 ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int crypto_alloc_hash (char*,int ,int ) ;
 int crypto_free_hash (int ) ;
 scalar_t__ crypto_hash_digest (struct hash_desc*,struct scatterlist*,int ,int *) ;
 int crypto_hash_digestsize (int ) ;
 int dprintk (char*,int ,int *) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int md5_to_hex (char*,int *) ;
 int nfs_ok ;
 int nfserr_resource ;
 int sg_init_one (struct scatterlist*,int *,int ) ;

__be32
nfs4_make_rec_clidname(char *dname, struct xdr_netobj *clname)
{
 struct xdr_netobj cksum;
 struct hash_desc desc;
 struct scatterlist sg;
 __be32 status = nfserr_resource;

 dprintk("NFSD: nfs4_make_rec_clidname for %.*s\n",
   clname->len, clname->data);
 desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;
 desc.tfm = crypto_alloc_hash("md5", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(desc.tfm))
  goto out_no_tfm;
 cksum.len = crypto_hash_digestsize(desc.tfm);
 cksum.data = kmalloc(cksum.len, GFP_KERNEL);
 if (cksum.data == ((void*)0))
   goto out;

 sg_init_one(&sg, clname->data, clname->len);

 if (crypto_hash_digest(&desc, &sg, sg.length, cksum.data))
  goto out;

 md5_to_hex(dname, cksum.data);

 status = nfs_ok;
out:
 kfree(cksum.data);
 crypto_free_hash(desc.tfm);
out_no_tfm:
 return status;
}
