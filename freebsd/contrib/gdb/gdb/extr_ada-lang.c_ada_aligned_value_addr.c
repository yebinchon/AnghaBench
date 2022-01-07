
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TYPE_FIELD_BITPOS (struct type*,int ) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int ) ;
 scalar_t__ ada_is_aligner_type (struct type*) ;

char *
ada_aligned_value_addr (struct type *type, char *valaddr)
{
  if (ada_is_aligner_type (type))
    return ada_aligned_value_addr (TYPE_FIELD_TYPE (type, 0),
       valaddr +
       TYPE_FIELD_BITPOS (type,
            0) / TARGET_CHAR_BIT);
  else
    return valaddr;
}
