
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;
typedef int loff_t ;


 int EXT4_HTREE_EOF_32BIT ;
 int EXT4_HTREE_EOF_64BIT ;
 int FMODE_32BITHASH ;
 int FMODE_64BITHASH ;
 scalar_t__ is_32bit_api () ;

__attribute__((used)) static inline loff_t ext4_get_htree_eof(struct file *filp)
{
 if ((filp->f_mode & FMODE_32BITHASH) ||
     (!(filp->f_mode & FMODE_64BITHASH) && is_32bit_api()))
  return EXT4_HTREE_EOF_32BIT;
 else
  return EXT4_HTREE_EOF_64BIT;
}
