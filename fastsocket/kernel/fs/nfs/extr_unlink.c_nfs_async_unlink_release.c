
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_unlinkdata {TYPE_1__* dir; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int nfs_dec_sillycount (TYPE_1__*) ;
 int nfs_free_unlinkdata (struct nfs_unlinkdata*) ;
 int nfs_sb_deactive_async (struct super_block*) ;

__attribute__((used)) static void nfs_async_unlink_release(void *calldata)
{
 struct nfs_unlinkdata *data = calldata;
 struct super_block *sb = data->dir->i_sb;

 nfs_dec_sillycount(data->dir);
 nfs_free_unlinkdata(data);
 nfs_sb_deactive_async(sb);
}
