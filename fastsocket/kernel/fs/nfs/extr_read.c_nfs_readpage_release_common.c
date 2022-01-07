
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_readdata_release (void*) ;

__attribute__((used)) static void nfs_readpage_release_common(void *calldata)
{
 nfs_readdata_release(calldata);
}
