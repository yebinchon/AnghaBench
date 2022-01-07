
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int vectorize_loops (int ) ;

__attribute__((used)) static unsigned int
tree_vectorize (void)
{
  vectorize_loops (current_loops);
  return 0;
}
