
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int const TYPE_CODE (struct type*) ;






 int const TYPE_CODE_REF ;


 int const TYPE_CODE_VOID ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int ada_is_array_descriptor (struct type*) ;

__attribute__((used)) static int
ada_type_match (struct type *ftype, struct type *atype, int may_deref)
{
  CHECK_TYPEDEF (ftype);
  CHECK_TYPEDEF (atype);

  if (TYPE_CODE (ftype) == TYPE_CODE_REF)
    ftype = TYPE_TARGET_TYPE (ftype);
  if (TYPE_CODE (atype) == TYPE_CODE_REF)
    atype = TYPE_TARGET_TYPE (atype);

  if (TYPE_CODE (ftype) == TYPE_CODE_VOID
      || TYPE_CODE (atype) == TYPE_CODE_VOID)
    return 1;

  switch (TYPE_CODE (ftype))
    {
    default:
      return 1;
    case 131:
      if (TYPE_CODE (atype) == 131)
 return ada_type_match (TYPE_TARGET_TYPE (ftype),
          TYPE_TARGET_TYPE (atype), 0);
      else
 return (may_deref &&
  ada_type_match (TYPE_TARGET_TYPE (ftype), atype, 0));
    case 132:
    case 134:
    case 130:
      switch (TYPE_CODE (atype))
 {
 case 132:
 case 134:
 case 130:
   return 1;
 default:
   return 0;
 }

    case 135:
      return (TYPE_CODE (atype) == 135
       || ada_is_array_descriptor (atype));

    case 129:
      if (ada_is_array_descriptor (ftype))
 return (TYPE_CODE (atype) == 135
  || ada_is_array_descriptor (atype));
      else
 return (TYPE_CODE (atype) == 129
  && !ada_is_array_descriptor (atype));

    case 128:
    case 133:
      return (TYPE_CODE (atype) == TYPE_CODE (ftype));
    }
}
