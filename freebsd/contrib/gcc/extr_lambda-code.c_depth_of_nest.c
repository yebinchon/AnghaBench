
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop* inner; } ;



__attribute__((used)) static int
depth_of_nest (struct loop *nest)
{
  size_t depth = 0;
  while (nest)
    {
      depth++;
      nest = nest->inner;
    }
  return depth;
}
