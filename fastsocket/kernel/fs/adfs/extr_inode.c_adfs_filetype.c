
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int loadaddr; scalar_t__ stamped; } ;


 TYPE_1__* ADFS_I (struct inode*) ;

__attribute__((used)) static inline unsigned int
adfs_filetype(struct inode *inode)
{
 unsigned int type;

 if (ADFS_I(inode)->stamped)
  type = (ADFS_I(inode)->loadaddr >> 8) & 0xfff;
 else
  type = (unsigned int) -1;

 return type;
}
