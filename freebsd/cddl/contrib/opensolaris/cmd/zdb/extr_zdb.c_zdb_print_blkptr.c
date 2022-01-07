
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int ZDB_FLAG_BSWAP ;
 int byteswap_uint64_array (void*,int) ;
 int printf (char*,char*) ;
 int snprintf_blkptr (char*,int,int *) ;

__attribute__((used)) static void
zdb_print_blkptr(blkptr_t *bp, int flags)
{
 char blkbuf[BP_SPRINTF_LEN];

 if (flags & ZDB_FLAG_BSWAP)
  byteswap_uint64_array((void *)bp, sizeof (blkptr_t));

 snprintf_blkptr(blkbuf, sizeof (blkbuf), bp);
 (void) printf("%s\n", blkbuf);
}
