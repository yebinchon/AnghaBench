
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {unsigned int proc_inum; } ;



__attribute__((used)) static unsigned int ipcns_inum(void *vp)
{
 struct ipc_namespace *ns = vp;

 return ns->proc_inum;
}
