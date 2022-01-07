
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rock_state {int len; unsigned char* chr; } ;
struct iso_directory_record {int* name_len; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int s_rock_offset; } ;


 TYPE_1__* ISOFS_SB (int ) ;

__attribute__((used)) static void setup_rock_ridge(struct iso_directory_record *de,
   struct inode *inode, struct rock_state *rs)
{
 rs->len = sizeof(struct iso_directory_record) + de->name_len[0];
 if (rs->len & 1)
  (rs->len)++;
 rs->chr = (unsigned char *)de + rs->len;
 rs->len = *((unsigned char *)de) - rs->len;
 if (rs->len < 0)
  rs->len = 0;

 if (ISOFS_SB(inode->i_sb)->s_rock_offset != -1) {
  rs->len -= ISOFS_SB(inode->i_sb)->s_rock_offset;
  rs->chr += ISOFS_SB(inode->i_sb)->s_rock_offset;
  if (rs->len < 0)
   rs->len = 0;
 }
}
