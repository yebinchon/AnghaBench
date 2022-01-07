
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; } ;


 int inc_nlink (struct inode*) ;

__attribute__((used)) static inline void coda_dir_inc_nlink(struct inode *dir)
{
 if (dir->i_nlink >= 2)
  inc_nlink(dir);
}
