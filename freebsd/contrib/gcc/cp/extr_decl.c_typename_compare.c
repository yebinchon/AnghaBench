
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; scalar_t__ scope; scalar_t__ template_id; scalar_t__ enum_p; scalar_t__ class_p; } ;
typedef TYPE_1__ typename_info ;
typedef scalar_t__ tree ;


 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ TYPENAME_IS_CLASS_P (scalar_t__) ;
 scalar_t__ TYPENAME_IS_ENUM_P (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE_FULLNAME (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 int TYPE_NAME (scalar_t__) ;

__attribute__((used)) static int
typename_compare (const void * k1, const void * k2)
{
  tree t1;
  const typename_info *t2;

  t1 = (tree) k1;
  t2 = (const typename_info *) k2;

  return (DECL_NAME (TYPE_NAME (t1)) == t2->name
   && TYPE_CONTEXT (t1) == t2->scope
   && TYPENAME_TYPE_FULLNAME (t1) == t2->template_id
   && TYPENAME_IS_ENUM_P (t1) == t2->enum_p
   && TYPENAME_IS_CLASS_P (t1) == t2->class_p);
}
