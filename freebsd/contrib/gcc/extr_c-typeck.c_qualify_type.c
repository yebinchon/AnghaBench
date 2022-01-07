
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_QUALS (int ) ;
 int c_build_qualified_type (int ,int) ;

__attribute__((used)) static tree
qualify_type (tree type, tree like)
{
  return c_build_qualified_type (type,
     TYPE_QUALS (type) | TYPE_QUALS (like));
}
