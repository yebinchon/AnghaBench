
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_BOOL ;
 scalar_t__ TYPE_CODE_CHAR ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_RANGE ;

int
is_integral_type (struct type *t)
{
  CHECK_TYPEDEF (t);
  return
    ((t != ((void*)0))
     && ((TYPE_CODE (t) == TYPE_CODE_INT)
  || (TYPE_CODE (t) == TYPE_CODE_ENUM)
  || (TYPE_CODE (t) == TYPE_CODE_CHAR)
  || (TYPE_CODE (t) == TYPE_CODE_RANGE)
  || (TYPE_CODE (t) == TYPE_CODE_BOOL)));
}
