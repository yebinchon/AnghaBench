
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {int de_namelen; scalar_t__ de_entry_num; scalar_t__ de_deh; int de_name; } ;


 int NAME_FOUND ;
 int NAME_FOUND_INVISIBLE ;
 int NAME_NOT_FOUND ;
 scalar_t__ de_visible (scalar_t__) ;
 int memcmp (int ,char const*,int) ;

__attribute__((used)) static int reiserfs_match(struct reiserfs_dir_entry *de,
     const char *name, int namelen)
{
 int retval = NAME_NOT_FOUND;

 if ((namelen == de->de_namelen) &&
     !memcmp(de->de_name, name, de->de_namelen))
  retval =
      (de_visible(de->de_deh + de->de_entry_num) ? NAME_FOUND :
       NAME_FOUND_INVISIBLE);

 return retval;
}
