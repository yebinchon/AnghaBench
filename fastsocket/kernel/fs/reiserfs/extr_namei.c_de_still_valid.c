
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {int de_namelen; int de_name; } ;


 scalar_t__ memcmp (char const*,int ,int) ;
 int set_de_name_and_namelen (struct reiserfs_dir_entry*) ;

__attribute__((used)) static int de_still_valid(const char *name, int len,
     struct reiserfs_dir_entry *de)
{
 struct reiserfs_dir_entry tmp = *de;


 set_de_name_and_namelen(&tmp);

 if (tmp.de_namelen != len || memcmp(name, de->de_name, len))
  return 0;
 return 1;
}
