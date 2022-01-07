
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_compressor {int name; scalar_t__ comp_mutex; int cc; } ;


 int UBIFS_COMPR_NONE ;
 int UBIFS_MIN_COMPRESS_DIFF ;
 int UBIFS_MIN_COMPR_LEN ;
 int crypto_comp_compress (int ,void const*,int,void*,unsigned int*) ;
 int memcpy (void*,void const*,int) ;
 int mutex_lock (scalar_t__) ;
 int mutex_unlock (scalar_t__) ;
 struct ubifs_compressor** ubifs_compressors ;
 int ubifs_warn (char*,int,int ,int) ;
 scalar_t__ unlikely (int) ;

void ubifs_compress(const void *in_buf, int in_len, void *out_buf, int *out_len,
      int *compr_type)
{
 int err;
 struct ubifs_compressor *compr = ubifs_compressors[*compr_type];

 if (*compr_type == UBIFS_COMPR_NONE)
  goto no_compr;


 if (in_len < UBIFS_MIN_COMPR_LEN)
  goto no_compr;

 if (compr->comp_mutex)
  mutex_lock(compr->comp_mutex);
 err = crypto_comp_compress(compr->cc, in_buf, in_len, out_buf,
       (unsigned int *)out_len);
 if (compr->comp_mutex)
  mutex_unlock(compr->comp_mutex);
 if (unlikely(err)) {
  ubifs_warn("cannot compress %d bytes, compressor %s, "
      "error %d, leave data uncompressed",
      in_len, compr->name, err);
   goto no_compr;
 }





 if (in_len - *out_len < UBIFS_MIN_COMPRESS_DIFF)
  goto no_compr;

 return;

no_compr:
 memcpy(out_buf, in_buf, in_len);
 *out_len = in_len;
 *compr_type = UBIFS_COMPR_NONE;
}
