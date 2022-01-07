
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t tid_t ;
typedef int alist_t ;


 scalar_t__ alist_find (int *,void*,void**) ;

__attribute__((used)) static tid_t
get_mapping(alist_t *ta, int srcid)
{
 void *ltgtid;

 if (alist_find(ta, (void *)(uintptr_t)srcid, (void **)&ltgtid))
  return ((uintptr_t)ltgtid);
 else
  return (0);
}
