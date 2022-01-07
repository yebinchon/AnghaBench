
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TYPE_UID (scalar_t__) ;
 scalar_t__ get_canon_type (scalar_t__,int,int) ;

__attribute__((used)) static int
get_canon_type_uid (tree type, bool see_thru_ptrs, bool see_thru_arrays)
{
  type = get_canon_type (type, see_thru_ptrs, see_thru_arrays);
  if (type)
    return TYPE_UID(type);
  else return 0;
}
