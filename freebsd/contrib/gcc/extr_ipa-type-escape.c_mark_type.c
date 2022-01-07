
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum escape_t { ____Placeholder_escape_t } escape_t ;
typedef int * bitmap ;




 int TYPE_UID (int *) ;
 scalar_t__ bitmap_bit_p (int *,int) ;
 int bitmap_set_bit (int *,int) ;
 int * get_canon_type (int *,int,int) ;
 int * global_types_exposed_parameter ;
 int * global_types_full_escape ;

__attribute__((used)) static tree
mark_type (tree type, enum escape_t escape_status)
{
  bitmap map = ((void*)0);
  int uid;

  type = get_canon_type (type, 1, 1);
  if (!type)
    return ((void*)0);

  switch (escape_status)
    {
    case 129:
      map = global_types_exposed_parameter;
      break;
    case 128:
      map = global_types_full_escape;
      break;
    }

  uid = TYPE_UID (type);
  if (bitmap_bit_p (map, uid))
    return type;
  else
    {
      bitmap_set_bit (map, uid);
      if (escape_status == 128)
 {


   bitmap_set_bit (global_types_exposed_parameter, uid);
 }
    }
  return type;
}
