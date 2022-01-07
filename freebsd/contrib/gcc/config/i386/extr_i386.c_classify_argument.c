
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum x86_64_reg_class { ____Placeholder_x86_64_reg_class } x86_64_reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* must_pass_in_stack ) (int,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;

 int BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 int BINFO_N_BASE_BINFOS (scalar_t__) ;
 int BINFO_OFFSET (scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;



 scalar_t__ COMPLEX_MODE_P (int) ;





 int DECL_BIT_FIELD (scalar_t__) ;
 int DECL_SIZE (scalar_t__) ;


 int FIELD_DECL ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;

 int MAX_CLASSES ;
 int MODE_INT ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;

 int UNITS_PER_WORD ;
 int VECTOR_MODE_P (int) ;

 int X86_64_COMPLEX_X87_CLASS ;
 int X86_64_INTEGERSI_CLASS ;
 int X86_64_INTEGER_CLASS ;
 int X86_64_MEMORY_CLASS ;
 int X86_64_NO_CLASS ;
 int X86_64_SSEDF_CLASS ;
 int X86_64_SSESF_CLASS ;
 int X86_64_SSEUP_CLASS ;
 int X86_64_SSE_CLASS ;
 int X86_64_X87UP_CLASS ;
 int X86_64_X87_CLASS ;


 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int int_bit_position (scalar_t__) ;
 int int_size_in_bytes (scalar_t__) ;
 int merge_classes (int,int) ;
 scalar_t__ stub1 (int,scalar_t__) ;
 TYPE_2__ targetm ;
 int tree_low_cst (int ,int ) ;

__attribute__((used)) static int
classify_argument (enum machine_mode mode, tree type,
     enum x86_64_reg_class classes[MAX_CLASSES], int bit_offset)
{
  HOST_WIDE_INT bytes =
    (mode == 163) ? int_size_in_bytes (type) : (int) GET_MODE_SIZE (mode);
  int words = (bytes + (bit_offset % 64) / 8 + UNITS_PER_WORD - 1) / UNITS_PER_WORD;


  if (bytes < 0)
    return 0;

  if (mode != 130
      && targetm.calls.must_pass_in_stack (mode, type))
    return 0;

  if (type && AGGREGATE_TYPE_P (type))
    {
      int i;
      tree field;
      enum x86_64_reg_class subclasses[MAX_CLASSES];


      if (bytes > 16)
 return 0;

      for (i = 0; i < words; i++)
 classes[i] = X86_64_NO_CLASS;



      if (!words)
 {
   classes[0] = X86_64_NO_CLASS;
   return 1;
 }


      switch (TREE_CODE (type))
 {
 case 150:

   if (TYPE_BINFO (type))
     {
       tree binfo, base_binfo;
       int basenum;

       for (binfo = TYPE_BINFO (type), basenum = 0;
     BINFO_BASE_ITERATE (binfo, basenum, base_binfo); basenum++)
  {
     int num;
     int offset = tree_low_cst (BINFO_OFFSET (base_binfo), 0) * 8;
     tree type = BINFO_TYPE (base_binfo);

     num = classify_argument (TYPE_MODE (type),
         type, subclasses,
         (offset + bit_offset) % 256);
     if (!num)
       return 0;
     for (i = 0; i < num; i++)
       {
         int pos = (offset + (bit_offset % 64)) / 8 / 8;
         classes[i + pos] =
    merge_classes (subclasses[i], classes[i + pos]);
       }
  }
     }

   for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
     {
       if (TREE_CODE (field) == FIELD_DECL)
  {
    int num;

    if (TREE_TYPE (field) == error_mark_node)
      continue;




    if (DECL_BIT_FIELD (field))
      {
        for (i = (int_bit_position (field) + (bit_offset % 64)) / 8 / 8;
      i < ((int_bit_position (field) + (bit_offset % 64))
           + tree_low_cst (DECL_SIZE (field), 0)
    + 63) / 8 / 8; i++)
   classes[i] =
     merge_classes (X86_64_INTEGER_CLASS,
      classes[i]);
      }
    else
      {
        num = classify_argument (TYPE_MODE (TREE_TYPE (field)),
            TREE_TYPE (field), subclasses,
            (int_bit_position (field)
      + bit_offset) % 256);
        if (!num)
   return 0;
        for (i = 0; i < num; i++)
   {
     int pos =
       (int_bit_position (field) + (bit_offset % 64)) / 8 / 8;
     classes[i + pos] =
       merge_classes (subclasses[i], classes[i + pos]);
   }
      }
  }
     }
   break;

 case 164:

   {
     int num;
     num = classify_argument (TYPE_MODE (TREE_TYPE (type)),
         TREE_TYPE (type), subclasses, bit_offset);
     if (!num)
       return 0;


     if (subclasses[0] == X86_64_SSESF_CLASS && bytes != 4)
       subclasses[0] = X86_64_SSE_CLASS;
     if (subclasses[0] == X86_64_INTEGERSI_CLASS && bytes != 4)
       subclasses[0] = X86_64_INTEGER_CLASS;

     for (i = 0; i < words; i++)
       classes[i] = subclasses[i % num];

     break;
   }
 case 141:
 case 151:




   gcc_assert (!TYPE_BINFO (type)
        || !BINFO_N_BASE_BINFOS (TYPE_BINFO (type)));
   for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
     {
       if (TREE_CODE (field) == FIELD_DECL)
  {
    int num;

    if (TREE_TYPE (field) == error_mark_node)
      continue;

    num = classify_argument (TYPE_MODE (TREE_TYPE (field)),
        TREE_TYPE (field), subclasses,
        bit_offset);
    if (!num)
      return 0;
    for (i = 0; i < num; i++)
      classes[i] = merge_classes (subclasses[i], classes[i]);
  }
     }
   break;

 default:
   gcc_unreachable ();
 }


      for (i = 0; i < words; i++)
 {


   if (classes[i] == X86_64_MEMORY_CLASS)
     return 0;



   if (classes[i] == X86_64_SSEUP_CLASS
       && (i == 0 || classes[i - 1] != X86_64_SSE_CLASS))
     classes[i] = X86_64_SSE_CLASS;


   if (classes[i] == X86_64_X87UP_CLASS
       && (i == 0 || classes[i - 1] != X86_64_X87_CLASS))
     classes[i] = X86_64_SSE_CLASS;
 }
      return words;
    }



  if (mode != 130 && mode != 163)
    {
      int mode_alignment = GET_MODE_BITSIZE (mode);

      if (mode == 128)
 mode_alignment = 128;
      else if (mode == 129)
 mode_alignment = 256;
      if (COMPLEX_MODE_P (mode))
 mode_alignment /= 2;

      if (bit_offset % mode_alignment)
 return 0;
    }


  if (VECTOR_MODE_P (mode)
      && GET_MODE_SIZE (GET_MODE_INNER (mode)) == bytes)
    mode = GET_MODE_INNER (mode);


  switch (mode)
    {
    case 148:
    case 156:
      classes[0] = X86_64_SSE_CLASS;
      return 1;
    case 144:
      classes[0] = X86_64_SSE_CLASS;
      classes[1] = X86_64_SSEUP_CLASS;
      return 2;
    case 154:
    case 146:
    case 153:
    case 152:
    case 159:
    case 161:
    case 160:
      if (bit_offset + GET_MODE_BITSIZE (mode) <= 32)
 classes[0] = X86_64_INTEGERSI_CLASS;
      else
 classes[0] = X86_64_INTEGER_CLASS;
      return 1;
    case 162:
    case 142:
      classes[0] = classes[1] = X86_64_INTEGER_CLASS;
      return 2;
    case 158:
      return 0;
    case 147:
      if (!(bit_offset % 64))
 classes[0] = X86_64_SSESF_CLASS;
      else
 classes[0] = X86_64_SSE_CLASS;
      return 1;
    case 155:
      classes[0] = X86_64_SSEDF_CLASS;
      return 1;
    case 128:
      classes[0] = X86_64_X87_CLASS;
      classes[1] = X86_64_X87UP_CLASS;
      return 2;
    case 143:
      classes[0] = X86_64_SSE_CLASS;
      classes[1] = X86_64_SSEUP_CLASS;
      return 2;
    case 149:
      classes[0] = X86_64_SSE_CLASS;
      return 1;
    case 157:
      classes[0] = X86_64_SSEDF_CLASS;
      classes[1] = X86_64_SSEDF_CLASS;
      return 2;
    case 129:
      classes[0] = X86_64_COMPLEX_X87_CLASS;
      return 1;
    case 145:

      return 0;
    case 134:
    case 133:
    case 140:
    case 132:
    case 139:
    case 138:
      classes[0] = X86_64_SSE_CLASS;
      classes[1] = X86_64_SSEUP_CLASS;
      return 2;
    case 137:
    case 136:
    case 135:
    case 131:
      classes[0] = X86_64_SSE_CLASS;
      return 1;
    case 163:
    case 130:
      return 0;
    default:
      gcc_assert (VECTOR_MODE_P (mode));

      if (bytes > 16)
 return 0;

      gcc_assert (GET_MODE_CLASS (GET_MODE_INNER (mode)) == MODE_INT);

      if (bit_offset + GET_MODE_BITSIZE (mode) <= 32)
 classes[0] = X86_64_INTEGERSI_CLASS;
      else
 classes[0] = X86_64_INTEGER_CLASS;
      classes[1] = X86_64_INTEGER_CLASS;
      return 1 + (bytes > 8);
    }
}
