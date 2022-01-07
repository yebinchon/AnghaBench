
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {int tcfd_defdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIMP_MAX_DATA ;
 int kstrndup (char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int alloc_defdata(struct tcf_defact *d, char *defdata)
{
 d->tcfd_defdata = kstrndup(defdata, SIMP_MAX_DATA, GFP_KERNEL);
 if (unlikely(!d->tcfd_defdata))
  return -ENOMEM;

 return 0;
}
