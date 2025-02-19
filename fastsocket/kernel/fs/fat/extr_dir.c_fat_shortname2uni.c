
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int dummy; } ;


 unsigned short VFAT_SFN_DISPLAY_LOWER ;
 unsigned short VFAT_SFN_DISPLAY_WIN95 ;
 unsigned short VFAT_SFN_DISPLAY_WINNT ;
 int fat_short2lower_uni (struct nls_table*,unsigned char*,int,int *) ;
 int fat_short2uni (struct nls_table*,unsigned char*,int,int *) ;

__attribute__((used)) static inline int
fat_shortname2uni(struct nls_table *nls, unsigned char *buf, int buf_size,
    wchar_t *uni_buf, unsigned short opt, int lower)
{
 int len = 0;

 if (opt & VFAT_SFN_DISPLAY_LOWER)
  len = fat_short2lower_uni(nls, buf, buf_size, uni_buf);
 else if (opt & VFAT_SFN_DISPLAY_WIN95)
  len = fat_short2uni(nls, buf, buf_size, uni_buf);
 else if (opt & VFAT_SFN_DISPLAY_WINNT) {
  if (lower)
   len = fat_short2lower_uni(nls, buf, buf_size, uni_buf);
  else
   len = fat_short2uni(nls, buf, buf_size, uni_buf);
 } else
  len = fat_short2uni(nls, buf, buf_size, uni_buf);

 return len;
}
