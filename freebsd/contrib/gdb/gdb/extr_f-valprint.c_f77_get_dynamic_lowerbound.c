
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;







 int BOUND_FETCH_ERROR ;
 int BOUND_FETCH_OK ;

 int DEFAULT_LOWER_BOUND ;
 int TYPE_ARRAY_LOWER_BOUND_TYPE (struct type*) ;
 int TYPE_ARRAY_LOWER_BOUND_VALUE (struct type*) ;
 int builtin_type_void_data_ptr ;
 int deprecated_selected_frame ;
 int error (char*) ;
 int get_frame_base (int ) ;
 int read_memory_integer (int,int) ;
 int read_memory_typed_address (int,int ) ;

int
f77_get_dynamic_lowerbound (struct type *type, int *lower_bound)
{
  CORE_ADDR current_frame_addr;
  CORE_ADDR ptr_to_lower_bound;

  switch (TYPE_ARRAY_LOWER_BOUND_TYPE (type))
    {
    case 130:
      current_frame_addr = get_frame_base (deprecated_selected_frame);
      if (current_frame_addr > 0)
 {
   *lower_bound =
     read_memory_integer (current_frame_addr +
     TYPE_ARRAY_LOWER_BOUND_VALUE (type),
     4);
 }
      else
 {
   *lower_bound = DEFAULT_LOWER_BOUND;
   return BOUND_FETCH_ERROR;
 }
      break;

    case 128:
      *lower_bound = TYPE_ARRAY_LOWER_BOUND_VALUE (type);
      break;

    case 129:
      error ("Lower bound may not be '*' in F77");
      break;

    case 132:
      current_frame_addr = get_frame_base (deprecated_selected_frame);
      if (current_frame_addr > 0)
 {
   ptr_to_lower_bound =
     read_memory_typed_address (current_frame_addr +
           TYPE_ARRAY_LOWER_BOUND_VALUE (type),
           builtin_type_void_data_ptr);
   *lower_bound = read_memory_integer (ptr_to_lower_bound, 4);
 }
      else
 {
   *lower_bound = DEFAULT_LOWER_BOUND;
   return BOUND_FETCH_ERROR;
 }
      break;

    case 133:
    case 131:
    default:
      error ("??? unhandled dynamic array bound type ???");
      break;
    }
  return BOUND_FETCH_OK;
}
