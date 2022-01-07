
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_vmalloc_addr (void*) ;
 int kfree (void*) ;
 int pr_debug (char*,void*,char*) ;
 int vfree (void*) ;

void
ip_set_free(void *members)
{
 pr_debug("%p: free with %s\n", members,
   is_vmalloc_addr(members) ? "vfree" : "kfree");
 if (is_vmalloc_addr(members))
  vfree(members);
 else
  kfree(members);
}
