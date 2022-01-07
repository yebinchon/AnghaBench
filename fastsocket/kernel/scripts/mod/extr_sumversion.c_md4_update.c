
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct md4_ctx {int byte_count; char* block; } ;


 int md4_transform_helper (struct md4_ctx*) ;
 int memcpy (char*,unsigned char const*,unsigned int const) ;

__attribute__((used)) static void md4_update(struct md4_ctx *mctx,
         const unsigned char *data, unsigned int len)
{
 const uint32_t avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

 mctx->byte_count += len;

 if (avail > len) {
  memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
         data, len);
  return;
 }

 memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
        data, avail);

 md4_transform_helper(mctx);
 data += avail;
 len -= avail;

 while (len >= sizeof(mctx->block)) {
  memcpy(mctx->block, data, sizeof(mctx->block));
  md4_transform_helper(mctx);
  data += sizeof(mctx->block);
  len -= sizeof(mctx->block);
 }

 memcpy(mctx->block, data, len);
}
