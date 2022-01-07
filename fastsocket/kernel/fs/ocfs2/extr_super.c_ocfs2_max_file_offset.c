
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 int BUILD_BUG_ON (int) ;
 unsigned int PAGE_CACHE_SIZE ;

__attribute__((used)) static unsigned long long ocfs2_max_file_offset(unsigned int bbits,
      unsigned int cbits)
{
 unsigned int bytes = 1 << cbits;
 unsigned int trim = bytes;
 unsigned int bitshift = 32;
 return (((unsigned long long)bytes) << bitshift) - trim;
}
