
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_magic; } ;
struct reiserfs_super_block {TYPE_1__ s_v1; } ;


 int reiserfs_3_6_magic_string ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

int is_reiserfs_3_6(struct reiserfs_super_block *rs)
{
 return !strncmp(rs->s_v1.s_magic, reiserfs_3_6_magic_string,
   strlen(reiserfs_3_6_magic_string));
}
