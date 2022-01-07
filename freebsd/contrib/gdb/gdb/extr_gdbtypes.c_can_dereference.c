
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_VOID ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;

int
can_dereference (struct type *t)
{

  CHECK_TYPEDEF (t);
  return
    (t != ((void*)0)
     && TYPE_CODE (t) == TYPE_CODE_PTR
     && TYPE_CODE (TYPE_TARGET_TYPE (t)) != TYPE_CODE_VOID);
}
