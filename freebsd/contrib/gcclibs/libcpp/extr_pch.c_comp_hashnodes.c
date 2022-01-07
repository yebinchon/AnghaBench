
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_hashnode ;


 int NODE_NAME (int *) ;
 int ustrcmp (int ,int ) ;

__attribute__((used)) static int
comp_hashnodes (const void *px, const void *py)
{
  cpp_hashnode *x = *(cpp_hashnode **) px;
  cpp_hashnode *y = *(cpp_hashnode **) py;
  return ustrcmp (NODE_NAME (x), NODE_NAME (y));
}
