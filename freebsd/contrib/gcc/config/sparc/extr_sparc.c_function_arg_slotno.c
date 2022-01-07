
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct sparc_args {int words; } ;
typedef enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_MODE_ALIGNMENT (int) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;





 int PARM_BOUNDARY ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ RECORD_TYPE ;
 int SPARC_FP_ARG_FIRST ;
 int SPARC_FP_ARG_MAX ;
 int SPARC_INCOMING_INT_ARG_FIRST ;
 int SPARC_INT_ARG_MAX ;
 int SPARC_OUTGOING_INT_ARG_FIRST ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 int TARGET_FPU ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 int VOIDmode ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int scan_record_type (scalar_t__,int*,int*,int*) ;

__attribute__((used)) static int
function_arg_slotno (const struct sparc_args *cum, enum machine_mode mode,
       tree type, int named, int incoming_p,
       int *pregno, int *ppadding)
{
  int regbase = (incoming_p
   ? SPARC_INCOMING_INT_ARG_FIRST
   : SPARC_OUTGOING_INT_ARG_FIRST);
  int slotno = cum->words;
  enum mode_class mclass;
  int regno;

  *ppadding = 0;

  if (type && TREE_ADDRESSABLE (type))
    return -1;

  if (TARGET_ARCH32
      && mode == BLKmode
      && type
      && TYPE_ALIGN (type) % PARM_BOUNDARY != 0)
    return -1;


  if (TARGET_ARCH64
      && (type ? TYPE_ALIGN (type) : GET_MODE_ALIGNMENT (mode)) >= 128
      && (slotno & 1) != 0)
    slotno++, *ppadding = 1;

  mclass = GET_MODE_CLASS (mode);
  if (type && TREE_CODE (type) == VECTOR_TYPE)
    {



      if (TREE_CODE (TREE_TYPE (type)) == REAL_TYPE)
 {

   gcc_assert (mode == BLKmode);
 }
      else
 {




   gcc_assert (mode != BLKmode);



   mclass = 130;
 }
    }

  switch (mclass)
    {
    case 130:
    case 132:
      if (TARGET_ARCH64 && TARGET_FPU && named)
 {
   if (slotno >= SPARC_FP_ARG_MAX)
     return -1;
   regno = SPARC_FP_ARG_FIRST + slotno * 2;


   if (GET_MODE_SIZE (mode) <= 4)
     regno++;
   break;
 }


    case 129:
    case 131:
      if (slotno >= SPARC_INT_ARG_MAX)
 return -1;
      regno = regbase + slotno;
      break;

    case 128:
      if (mode == VOIDmode)

 return -1;

      gcc_assert (mode == BLKmode);

      if (TARGET_ARCH32
   || !type
   || (TREE_CODE (type) != VECTOR_TYPE
       && TREE_CODE (type) != RECORD_TYPE))
 {
   if (slotno >= SPARC_INT_ARG_MAX)
     return -1;
   regno = regbase + slotno;
 }
      else
 {
   int intregs_p = 0, fpregs_p = 0, packed_p = 0;


   if (TREE_CODE (type) == VECTOR_TYPE)
     fpregs_p = 1;
   else
     scan_record_type (type, &intregs_p, &fpregs_p, &packed_p);




   if (packed_p || !named)
     fpregs_p = 0, intregs_p = 1;


   if (fpregs_p && slotno >= SPARC_FP_ARG_MAX)
     return -1;



   if (!fpregs_p && intregs_p && slotno >= SPARC_INT_ARG_MAX)
     return -1;





   return slotno;
 }
      break;

    default :
      gcc_unreachable ();
    }

  *pregno = regno;
  return slotno;
}
