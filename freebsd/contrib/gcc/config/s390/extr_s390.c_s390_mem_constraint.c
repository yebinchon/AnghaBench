
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {int disp; int indx; scalar_t__ literal_pool; } ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 int MEM_P (int ) ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 int TARGET_LONG_DISPLACEMENT ;
 int XEXP (int ,int ) ;
 int offsettable_memref_p (int ) ;
 int offsettable_nonstrict_memref_p (int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 scalar_t__ s390_decompose_address (int ,struct s390_address*) ;
 int s390_decompose_shift_count (int ,int *,int *) ;
 int s390_short_displacement (int ) ;

int
s390_mem_constraint (const char *str, rtx op)
{
  struct s390_address addr;
  char c = str[0];


  if (c == 'A')
    {

      if (!MEM_P (op) || MEM_VOLATILE_P (op))
 return 0;

      if ((reload_completed || reload_in_progress)
   ? !offsettable_memref_p (op) : !offsettable_nonstrict_memref_p (op))
 return 0;

      c = str[1];
    }


  else if (c == 'B')
    {
      if (GET_CODE (op) != MEM)
 return 0;
      if (!s390_decompose_address (XEXP (op, 0), &addr))
 return 0;
      if (addr.literal_pool)
 return 0;

      c = str[1];
    }

  switch (c)
    {
    case 'Q':
      if (GET_CODE (op) != MEM)
 return 0;
      if (!s390_decompose_address (XEXP (op, 0), &addr))
 return 0;
      if (addr.indx)
 return 0;

      if (TARGET_LONG_DISPLACEMENT)
 {
   if (!s390_short_displacement (addr.disp))
     return 0;
 }
      break;

    case 'R':
      if (GET_CODE (op) != MEM)
 return 0;

      if (TARGET_LONG_DISPLACEMENT)
 {
   if (!s390_decompose_address (XEXP (op, 0), &addr))
     return 0;
   if (!s390_short_displacement (addr.disp))
     return 0;
 }
      break;

    case 'S':
      if (!TARGET_LONG_DISPLACEMENT)
 return 0;
      if (GET_CODE (op) != MEM)
 return 0;
      if (!s390_decompose_address (XEXP (op, 0), &addr))
 return 0;
      if (addr.indx)
 return 0;
      if (s390_short_displacement (addr.disp))
 return 0;
      break;

    case 'T':
      if (!TARGET_LONG_DISPLACEMENT)
 return 0;
      if (GET_CODE (op) != MEM)
 return 0;


      if (s390_decompose_address (XEXP (op, 0), &addr)
   && s390_short_displacement (addr.disp))
 return 0;
      break;

    case 'U':
      if (TARGET_LONG_DISPLACEMENT)
 {
   if (!s390_decompose_address (op, &addr))
     return 0;
   if (!s390_short_displacement (addr.disp))
     return 0;
 }
      break;

    case 'W':
      if (!TARGET_LONG_DISPLACEMENT)
 return 0;


      if (s390_decompose_address (op, &addr)
   && s390_short_displacement (addr.disp))
 return 0;
      break;

    case 'Y':


      if (!s390_decompose_shift_count (op, ((void*)0), ((void*)0)))
 return 0;
      break;

    default:
      return 0;
    }

  return 1;
}
