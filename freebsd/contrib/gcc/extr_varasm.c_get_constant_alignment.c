
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int CONSTANT_ALIGNMENT (int ,unsigned int) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_ALIGN (int ) ;

__attribute__((used)) static unsigned int
get_constant_alignment (tree exp)
{
  unsigned int align;

  align = TYPE_ALIGN (TREE_TYPE (exp));



  return align;
}
