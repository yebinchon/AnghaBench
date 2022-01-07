
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int section ;
struct TYPE_2__ {scalar_t__ have_named_sections; } ;


 scalar_t__ DECL_SECTION_NAME (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int * get_named_section (scalar_t__,int *,int ) ;
 TYPE_1__ targetm ;
 int * text_section ;

__attribute__((used)) static section *
hot_function_section (tree decl)
{
  if (decl != NULL_TREE
      && DECL_SECTION_NAME (decl) != NULL_TREE
      && targetm.have_named_sections)
    return get_named_section (decl, ((void*)0), 0);
  else
    return text_section;
}
