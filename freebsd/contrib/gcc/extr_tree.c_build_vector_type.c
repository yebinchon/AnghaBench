
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int VOIDmode ;
 int make_vector_type (int ,int,int ) ;

tree
build_vector_type (tree innertype, int nunits)
{
  return make_vector_type (innertype, nunits, VOIDmode);
}
