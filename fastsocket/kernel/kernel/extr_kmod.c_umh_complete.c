
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int complete; } ;
struct completion {int dummy; } ;


 int call_usermodehelper_freeinfo (struct subprocess_info*) ;
 int complete (struct completion*) ;
 struct completion* xchg (int *,int *) ;

__attribute__((used)) static void umh_complete(struct subprocess_info *sub_info)
{
 struct completion *comp = xchg(&sub_info->complete, ((void*)0));




 if (comp)
  complete(comp);
 else
  call_usermodehelper_freeinfo(sub_info);
}
