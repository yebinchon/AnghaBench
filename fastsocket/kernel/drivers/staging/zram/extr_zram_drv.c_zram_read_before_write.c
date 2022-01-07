
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int failed_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* table; } ;
struct zobj_header {int dummy; } ;
struct TYPE_3__ {int offset; int page; } ;


 int KM_USER0 ;
 int LZO_E_OK ;
 size_t PAGE_SIZE ;
 int ZRAM_UNCOMPRESSED ;
 int ZRAM_ZERO ;
 unsigned char* kmap_atomic (int ,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int lzo1x_decompress_safe (unsigned char*,scalar_t__,char*,size_t*) ;
 int memcpy (char*,unsigned char*,size_t) ;
 int memset (char*,int ,size_t) ;
 int pr_err (char*,int,size_t) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xv_get_object_size (unsigned char*) ;
 int zram_stat64_inc (struct zram*,int *) ;
 int zram_test_flag (struct zram*,size_t,int ) ;

__attribute__((used)) static int zram_read_before_write(struct zram *zram, char *mem, u32 index)
{
 int ret;
 size_t clen = PAGE_SIZE;
 struct zobj_header *zheader;
 unsigned char *cmem;

 if (zram_test_flag(zram, index, ZRAM_ZERO) ||
     !zram->table[index].page) {
  memset(mem, 0, PAGE_SIZE);
  return 0;
 }

 cmem = kmap_atomic(zram->table[index].page, KM_USER0) +
  zram->table[index].offset;


 if (unlikely(zram_test_flag(zram, index, ZRAM_UNCOMPRESSED))) {
  memcpy(mem, cmem, PAGE_SIZE);
  kunmap_atomic(cmem, KM_USER0);
  return 0;
 }

 ret = lzo1x_decompress_safe(cmem + sizeof(*zheader),
        xv_get_object_size(cmem) - sizeof(*zheader),
        mem, &clen);
 kunmap_atomic(cmem, KM_USER0);


 if (unlikely(ret != LZO_E_OK)) {
  pr_err("Decompression failed! err=%d, page=%u\n", ret, index);
  zram_stat64_inc(zram, &zram->stats.failed_reads);
  return ret;
 }

 return 0;
}
