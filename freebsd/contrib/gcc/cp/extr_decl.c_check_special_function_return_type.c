
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* tree ;
typedef int special_function_kind ;
struct TYPE_3__ {int (* cdtor_returns_this ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int TYPE_FOR_JAVA (char*) ;
 char* build_pointer_type (char*) ;
 int error (char*,...) ;
 int gcc_unreachable () ;
 int pedwarn (char*,char*) ;
 int same_type_p (char*,char*) ;



 int stub1 () ;
 int stub2 () ;
 TYPE_2__ targetm ;
 char* void_type_node ;

__attribute__((used)) static tree
check_special_function_return_type (special_function_kind sfk,
        tree type,
        tree optype)
{
  switch (sfk)
    {
    case 130:
      if (type)
 error ("return type specification for constructor invalid");

      if (targetm.cxx.cdtor_returns_this () && !TYPE_FOR_JAVA (optype))
 type = build_pointer_type (optype);
      else
 type = void_type_node;
      break;

    case 128:
      if (type)
 error ("return type specification for destructor invalid");




      if (targetm.cxx.cdtor_returns_this () && !TYPE_FOR_JAVA (optype))
 type = build_pointer_type (void_type_node);
      else
 type = void_type_node;
      break;

    case 129:
      if (type && !same_type_p (type, optype))
 error ("operator %qT declared to return %qT", optype, type);
      else if (type)
 pedwarn ("return type specified for %<operator %T%>", optype);
      type = optype;
      break;

    default:
      gcc_unreachable ();
    }

  return type;
}
