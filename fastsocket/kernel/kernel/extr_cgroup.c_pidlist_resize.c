
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int GFP_KERNEL ;
 scalar_t__ is_vmalloc_addr (void*) ;
 void* krealloc (void*,int,int ) ;
 int memcpy (void*,void*,int) ;
 int vfree (void*) ;
 void* vmalloc (int) ;

__attribute__((used)) static void *pidlist_resize(void *p, int newcount)
{
 void *newlist;

 if (is_vmalloc_addr(p)) {
  newlist = vmalloc(newcount * sizeof(pid_t));
  if (!newlist)
   return ((void*)0);
  memcpy(newlist, p, newcount * sizeof(pid_t));
  vfree(p);
 } else {
  newlist = krealloc(p, newcount * sizeof(pid_t), GFP_KERNEL);
 }
 return newlist;
}
