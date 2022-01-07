
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block_device {int dummy; } ;
struct TYPE_7__ {struct block_device* j_dev; TYPE_2__* j_inode; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_6__ {TYPE_1__* i_sb; } ;
struct TYPE_5__ {struct block_device* s_bdev; } ;


 char const* bdevname (struct block_device*,char*) ;

__attribute__((used)) static const char *journal_dev_name(journal_t *journal, char *buffer)
{
 struct block_device *bdev;

 if (journal->j_inode)
  bdev = journal->j_inode->i_sb->s_bdev;
 else
  bdev = journal->j_dev;

 return bdevname(bdev, buffer);
}
