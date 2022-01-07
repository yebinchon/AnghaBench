
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {scalar_t__ de_objectid; scalar_t__ de_entry_num; scalar_t__ de_deh; } ;
struct inode {scalar_t__ i_ino; int * i_sb; } ;


 int de_still_valid (char const*,int,struct reiserfs_dir_entry*) ;
 scalar_t__ de_visible (scalar_t__) ;
 int reiserfs_panic (int *,char*,char*) ;

__attribute__((used)) static int entry_points_to_object(const char *name, int len,
      struct reiserfs_dir_entry *de,
      struct inode *inode)
{
 if (!de_still_valid(name, len, de))
  return 0;

 if (inode) {
  if (!de_visible(de->de_deh + de->de_entry_num))
   reiserfs_panic(inode->i_sb, "vs-7042",
           "entry must be visible");
  return (de->de_objectid == inode->i_ino) ? 1 : 0;
 }


 if (de_visible(de->de_deh + de->de_entry_num))
  reiserfs_panic(((void*)0), "vs-7043", "entry must be visible");

 return 1;
}
