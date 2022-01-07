
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_dir_entry {int name_len; int name; int inode_no; } ;


 int memcmp (unsigned char const*,int ,int) ;

__attribute__((used)) static inline int exofs_match(int len, const unsigned char *name,
     struct exofs_dir_entry *de)
{
 if (len != de->name_len)
  return 0;
 if (!de->inode_no)
  return 0;
 return !memcmp(name, de->name, len);
}
