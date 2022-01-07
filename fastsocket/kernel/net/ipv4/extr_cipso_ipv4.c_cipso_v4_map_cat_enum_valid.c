
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cipso_v4_doi {scalar_t__ type; } ;


 scalar_t__ CIPSO_V4_MAP_PASS ;
 int EFAULT ;
 int get_unaligned_be16 (unsigned char const*) ;

__attribute__((used)) static int cipso_v4_map_cat_enum_valid(const struct cipso_v4_doi *doi_def,
           const unsigned char *enumcat,
           u32 enumcat_len)
{
 u16 cat;
 int cat_prev = -1;
 u32 iter;

 if (doi_def->type != CIPSO_V4_MAP_PASS || enumcat_len & 0x01)
  return -EFAULT;

 for (iter = 0; iter < enumcat_len; iter += 2) {
  cat = get_unaligned_be16(&enumcat[iter]);
  if (cat <= cat_prev)
   return -EFAULT;
  cat_prev = cat;
 }

 return 0;
}
