
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct function_arg_record_value_parms {int intoffset; int slotno; int stack; int nregs; scalar_t__ named; } ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_WORD ;
 scalar_t__ BLKmode ;
 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ DECL_MODE (scalar_t__) ;
 scalar_t__ DECL_PACKED (scalar_t__) ;
 scalar_t__ DECL_SIZE (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ FLOAT_TYPE_P (scalar_t__) ;
 int MAX (int ,int) ;
 scalar_t__ RECORD_TYPE ;
 int SPARC_INT_ARG_MAX ;
 scalar_t__ TARGET_FPU ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_VECTOR_SUBPARTS (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 int bit_position (scalar_t__) ;
 scalar_t__ host_integerp (int ,int) ;
 scalar_t__ int_bit_position (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;

__attribute__((used)) static void
function_arg_record_value_1 (tree type, HOST_WIDE_INT startbitpos,
        struct function_arg_record_value_parms *parms,
        bool packed_p)
{
  tree field;
  if (! packed_p)
    for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
      {
 if (TREE_CODE (field) == FIELD_DECL && DECL_PACKED (field))
   {
     packed_p = 1;
     break;
   }
      }


  for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
    {
      if (TREE_CODE (field) == FIELD_DECL)
 {
   HOST_WIDE_INT bitpos = startbitpos;

   if (DECL_SIZE (field) != 0)
     {
       if (integer_zerop (DECL_SIZE (field)))
  continue;

       if (host_integerp (bit_position (field), 1))
  bitpos += int_bit_position (field);
     }



   if (TREE_CODE (TREE_TYPE (field)) == RECORD_TYPE)
     function_arg_record_value_1 (TREE_TYPE (field),
          bitpos,
      parms,
      packed_p);
   else if ((FLOAT_TYPE_P (TREE_TYPE (field))
      || TREE_CODE (TREE_TYPE (field)) == VECTOR_TYPE)
     && TARGET_FPU
     && parms->named
     && ! packed_p)
     {
       if (parms->intoffset != -1)
  {
    unsigned int startbit, endbit;
    int intslots, this_slotno;

    startbit = parms->intoffset & -BITS_PER_WORD;
    endbit = (bitpos + BITS_PER_WORD - 1) & -BITS_PER_WORD;

    intslots = (endbit - startbit) / BITS_PER_WORD;
    this_slotno = parms->slotno + parms->intoffset
      / BITS_PER_WORD;

    if (intslots > 0 && intslots > SPARC_INT_ARG_MAX - this_slotno)
      {
        intslots = MAX (0, SPARC_INT_ARG_MAX - this_slotno);

        parms->stack = 1;
      }

    parms->nregs += intslots;
    parms->intoffset = -1;
  }



       if (TREE_CODE (TREE_TYPE (field)) == VECTOR_TYPE
    && DECL_MODE (field) == BLKmode)
  parms->nregs += TYPE_VECTOR_SUBPARTS (TREE_TYPE (field));
       else if (TREE_CODE (TREE_TYPE (field)) == COMPLEX_TYPE)
  parms->nregs += 2;
       else
  parms->nregs += 1;
     }
   else
     {
       if (parms->intoffset == -1)
  parms->intoffset = bitpos;
     }
 }
    }
}
