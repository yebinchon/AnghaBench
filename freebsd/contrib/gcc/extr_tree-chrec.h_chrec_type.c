
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;

__attribute__((used)) static inline tree
chrec_type (tree chrec)
{
  if (automatically_generated_chrec_p (chrec))
    return NULL_TREE;

  return TREE_TYPE (chrec);
}
