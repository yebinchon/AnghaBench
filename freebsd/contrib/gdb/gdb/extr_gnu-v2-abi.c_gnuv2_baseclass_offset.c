
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 scalar_t__ BASETYPE_VIA_VIRTUAL (struct type*,int) ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 int TYPE_BASECLASS_BITPOS (struct type*,int) ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int baseclass_offset (struct type*,int,char*,int) ;
 int unpack_pointer (int ,char*) ;
 scalar_t__ vb_match (struct type*,int,struct type*) ;

int
gnuv2_baseclass_offset (struct type *type, int index, char *valaddr,
    CORE_ADDR address)
{
  struct type *basetype = TYPE_BASECLASS (type, index);

  if (BASETYPE_VIA_VIRTUAL (type, index))
    {

      int i, len = TYPE_NFIELDS (type);
      int n_baseclasses = TYPE_N_BASECLASSES (type);



      for (i = n_baseclasses; i < len; i++)
 {
   if (vb_match (type, i, basetype))
     {
       CORE_ADDR addr
       = unpack_pointer (TYPE_FIELD_TYPE (type, i),
    valaddr + (TYPE_FIELD_BITPOS (type, i) / 8));

       return addr - (LONGEST) address;
     }
 }

      for (i = index + 1; i < n_baseclasses; i++)
 {
   int boffset =
   baseclass_offset (type, i, valaddr, address);
   if (boffset)
     return boffset;
 }

      return -1;
    }


  return TYPE_BASECLASS_BITPOS (type, index) / 8;
}
