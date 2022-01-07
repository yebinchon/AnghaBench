
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_dir_entry_2 {int name_len; int name; int inode; } ;


 int memcmp (char const* const,int ,int) ;

__attribute__((used)) static inline int ext3_match (int len, const char * const name,
         struct ext3_dir_entry_2 * de)
{
 if (len != de->name_len)
  return 0;
 if (!de->inode)
  return 0;
 return !memcmp(name, de->name, len);
}
