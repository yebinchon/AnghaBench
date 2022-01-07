
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;





 int TREE_CODE (scalar_t__) ;

__attribute__((used)) static inline bool
is_label_stmt (tree t)
{
  if (t)
    switch (TREE_CODE (t))
      {
 case 129:
 case 128:
 case 130:
   return 1;
 default:
   return 0;
      }
  return 0;
}
