
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 int TYPE_MAIN_DECL (int ) ;
 int current_class_type ;
 int popclass () ;

void
pop_nested_class (void)
{
  tree context = DECL_CONTEXT (TYPE_MAIN_DECL (current_class_type));

  popclass ();
  if (context && CLASS_TYPE_P (context))
    pop_nested_class ();
}
