
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uts_namespace {unsigned int proc_inum; } ;



__attribute__((used)) static unsigned int utsns_inum(void *vp)
{
 struct uts_namespace *ns = vp;

 return ns->proc_inum;
}
