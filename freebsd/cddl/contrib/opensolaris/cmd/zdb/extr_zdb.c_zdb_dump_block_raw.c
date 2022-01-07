
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ZDB_FLAG_BSWAP ;
 int byteswap_uint64_array (void*,int ) ;
 int write (int,void*,int ) ;

__attribute__((used)) static void
zdb_dump_block_raw(void *buf, uint64_t size, int flags)
{
 if (flags & ZDB_FLAG_BSWAP)
  byteswap_uint64_array(buf, size);
 (void) write(1, buf, size);
}
