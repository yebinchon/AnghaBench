
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct hstate {scalar_t__ order; unsigned long nr_overcommit_huge_pages; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ MAX_ORDER ;
 int hugetlb_lock ;
 struct hstate* kobj_to_hstate (struct kobject*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t nr_overcommit_hugepages_store(struct kobject *kobj,
  struct kobj_attribute *attr, const char *buf, size_t count)
{
 int err;
 unsigned long input;
 struct hstate *h = kobj_to_hstate(kobj, ((void*)0));

 if (h->order >= MAX_ORDER)
  return -EINVAL;

 err = strict_strtoul(buf, 10, &input);
 if (err)
  return err;

 spin_lock(&hugetlb_lock);
 h->nr_overcommit_huge_pages = input;
 spin_unlock(&hugetlb_lock);

 return count;
}
