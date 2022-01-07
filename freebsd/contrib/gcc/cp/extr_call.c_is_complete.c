
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPLETE_TYPE_P (int ) ;
 int complete_type (int ) ;

__attribute__((used)) static bool
is_complete (tree t)
{
  return COMPLETE_TYPE_P (complete_type (t));
}
