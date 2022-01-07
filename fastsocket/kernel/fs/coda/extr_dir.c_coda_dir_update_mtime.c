
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; } ;


 int CURRENT_TIME_SEC ;
 int C_VATTR ;
 int coda_flag_inode (struct inode*,int ) ;

__attribute__((used)) static inline void coda_dir_update_mtime(struct inode *dir)
{
 dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;

}
