
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {unsigned int proc_inum; } ;



__attribute__((used)) static unsigned int pidns_inum(void *ns)
{
 struct pid_namespace *pid_ns = ns;
 return pid_ns->proc_inum;
}
