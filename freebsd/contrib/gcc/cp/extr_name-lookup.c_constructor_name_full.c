
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_IDENTIFIER (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;

__attribute__((used)) static inline tree
constructor_name_full (tree type)
{
  return TYPE_IDENTIFIER (TYPE_MAIN_VARIANT (type));
}
