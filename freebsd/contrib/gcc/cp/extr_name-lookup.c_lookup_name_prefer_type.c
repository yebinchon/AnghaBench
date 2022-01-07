
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int LOOKUP_COMPLAIN ;
 int lookup_name_real (int ,int,int ,int,int ,int ) ;

tree
lookup_name_prefer_type (tree name, int prefer_type)
{
  return lookup_name_real (name, prefer_type, 0, 1,
      0, LOOKUP_COMPLAIN);
}
