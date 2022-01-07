
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {char const* s_id; } ;



__attribute__((used)) static inline const char *hfs_mdb_name(struct super_block *sb)
{
 return sb->s_id;
}
