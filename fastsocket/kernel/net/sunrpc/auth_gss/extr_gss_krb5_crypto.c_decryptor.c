
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int length; scalar_t__ offset; } ;
struct TYPE_2__ {int tfm; } ;
struct decryptor_desc {int fraglen; int fragno; int * frags; TYPE_1__ desc; } ;


 int BUG_ON (int) ;
 int crypto_blkcipher_blocksize (int ) ;
 int crypto_blkcipher_decrypt_iv (TYPE_1__*,int *,int *,int) ;
 int sg_init_table (int *,int) ;
 int sg_mark_end (int *) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (int *,int ,int,scalar_t__) ;

__attribute__((used)) static int
decryptor(struct scatterlist *sg, void *data)
{
 struct decryptor_desc *desc = data;
 int thislen = desc->fraglen + sg->length;
 int fraglen, ret;



 BUG_ON(desc->fragno > 3);
 sg_set_page(&desc->frags[desc->fragno], sg_page(sg), sg->length,
      sg->offset);
 desc->fragno++;
 desc->fraglen += sg->length;

 fraglen = thislen & (crypto_blkcipher_blocksize(desc->desc.tfm) - 1);
 thislen -= fraglen;

 if (thislen == 0)
  return 0;

 sg_mark_end(&desc->frags[desc->fragno - 1]);

 ret = crypto_blkcipher_decrypt_iv(&desc->desc, desc->frags,
       desc->frags, thislen);
 if (ret)
  return ret;

 sg_init_table(desc->frags, 4);

 if (fraglen) {
  sg_set_page(&desc->frags[0], sg_page(sg), fraglen,
    sg->offset + sg->length - fraglen);
  desc->fragno = 1;
  desc->fraglen = fraglen;
 } else {
  desc->fragno = 0;
  desc->fraglen = 0;
 }
 return 0;
}
