
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {unsigned int proc_inum; } ;



__attribute__((used)) static unsigned int mntns_inum(void *ns)
{
 struct mnt_namespace *mnt_ns = ns;
 return mnt_ns->proc_inum;
}
