
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int TARGET_CHAR_BIT ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 TYPE_1__* TYPE_FIELDS (struct type*) ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (int ) ;
 int TYPE_NFIELDS (struct type*) ;
 scalar_t__ strcmp (char*,char*) ;

int
is_pascal_string_type (struct type *type,int *length_pos,
                       int *length_size, int *string_pos, int *char_size,
         char **arrayname)
{
  if (TYPE_CODE (type) == TYPE_CODE_STRUCT)
    {


      if (TYPE_NFIELDS (type) == 2
          && strcmp (TYPE_FIELDS (type)[0].name, "length") == 0
          && strcmp (TYPE_FIELDS (type)[1].name, "st") == 0)
        {
          if (length_pos)
     *length_pos = TYPE_FIELD_BITPOS (type, 0) / TARGET_CHAR_BIT;
          if (length_size)
     *length_size = TYPE_LENGTH (TYPE_FIELD_TYPE (type, 0));
          if (string_pos)
     *string_pos = TYPE_FIELD_BITPOS (type, 1) / TARGET_CHAR_BIT;
          if (char_size)
     *char_size = 1;
    if (arrayname)
     *arrayname = TYPE_FIELDS (type)[1].name;
         return 2;
        };


      if (TYPE_NFIELDS (type) == 3
          && strcmp (TYPE_FIELDS (type)[0].name, "Capacity") == 0
          && strcmp (TYPE_FIELDS (type)[1].name, "length") == 0)
        {
          if (length_pos)
     *length_pos = TYPE_FIELD_BITPOS (type, 1) / TARGET_CHAR_BIT;
          if (length_size)
     *length_size = TYPE_LENGTH (TYPE_FIELD_TYPE (type, 1));
          if (string_pos)
     *string_pos = TYPE_FIELD_BITPOS (type, 2) / TARGET_CHAR_BIT;

          if (char_size)
     *char_size = 1;
    if (arrayname)
     *arrayname = TYPE_FIELDS (type)[2].name;
         return 3;
        };
    }
  return 0;
}
