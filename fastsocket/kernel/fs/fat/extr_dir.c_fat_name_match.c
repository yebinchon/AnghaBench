
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char name_check; } ;
struct msdos_sb_info {int nls_io; TYPE_1__ options; } ;


 int memcmp (unsigned char const*,unsigned char const*,int) ;
 int nls_strnicmp (int ,unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static inline int fat_name_match(struct msdos_sb_info *sbi,
     const unsigned char *a, int a_len,
     const unsigned char *b, int b_len)
{
 if (a_len != b_len)
  return 0;

 if (sbi->options.name_check != 's')
  return !nls_strnicmp(sbi->nls_io, a, b, a_len);
 else
  return !memcmp(a, b, a_len);
}
