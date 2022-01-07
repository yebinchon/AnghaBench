
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {scalar_t__* mp_list; } ;



__attribute__((used)) static inline unsigned int metapath_branch_start(const struct metapath *mp)
{
 if (mp->mp_list[0] == 0)
  return 2;
 return 1;
}
