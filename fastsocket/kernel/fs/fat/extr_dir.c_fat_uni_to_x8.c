
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int unicode_xlate; scalar_t__ utf8; } ;
struct msdos_sb_info {int nls_io; TYPE_1__ options; } ;


 int FAT_MAX_UNI_CHARS ;
 int UTF16_HOST_ENDIAN ;
 int uni16_to_x8 (unsigned char*,int const*,int,int ,int ) ;
 int utf16s_to_utf8s (int const*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static inline int fat_uni_to_x8(struct msdos_sb_info *sbi, const wchar_t *uni,
    unsigned char *buf, int size)
{
 if (sbi->options.utf8)
  return utf16s_to_utf8s(uni, FAT_MAX_UNI_CHARS,
    UTF16_HOST_ENDIAN, buf, size);
 else
  return uni16_to_x8(buf, uni, size, sbi->options.unicode_xlate,
       sbi->nls_io);
}
