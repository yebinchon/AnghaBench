
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int d_name; int d_ino; } ;
struct super_block {int dummy; } ;


 int memcmp (char const* const,int ,int) ;
 int ufs_get_de_namlen (struct super_block*,struct ufs_dir_entry*) ;

__attribute__((used)) static inline int ufs_match(struct super_block *sb, int len,
  const char * const name, struct ufs_dir_entry * de)
{
 if (len != ufs_get_de_namlen(sb, de))
  return 0;
 if (!de->d_ino)
  return 0;
 return !memcmp(name, de->d_name, len);
}
