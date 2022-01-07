
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int cache_pipefs_files ;
 int rpc_depopulate (struct dentry*,int ,int ,int) ;

__attribute__((used)) static void rpc_cachedir_depopulate(struct dentry *dentry)
{
 rpc_depopulate(dentry, cache_pipefs_files, 0, 3);
}
