
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_FIELD_NAME (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;

int
ada_is_aligner_type (struct type *type)
{
  CHECK_TYPEDEF (type);
  return (TYPE_CODE (type) == TYPE_CODE_STRUCT
   && TYPE_NFIELDS (type) == 1
   && DEPRECATED_STREQ (TYPE_FIELD_NAME (type, 0), "F"));
}
