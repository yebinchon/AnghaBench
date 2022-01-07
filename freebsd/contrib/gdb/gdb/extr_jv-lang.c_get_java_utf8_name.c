
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct obstack {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ TYPE_LENGTH (int ) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 char* obstack_alloc (struct obstack*,int) ;
 int read_memory (scalar_t__,char*,int) ;
 scalar_t__ value_as_long (struct value*) ;
 struct value* value_struct_elt (struct value**,int *,char*,int *,char*) ;

char *
get_java_utf8_name (struct obstack *obstack, struct value *name)
{
  char *chrs;
  struct value *temp = name;
  int name_length;
  CORE_ADDR data_addr;
  temp = value_struct_elt (&temp, ((void*)0), "length", ((void*)0), "structure");
  name_length = (int) value_as_long (temp);
  data_addr = VALUE_ADDRESS (temp) + VALUE_OFFSET (temp)
    + TYPE_LENGTH (VALUE_TYPE (temp));
  chrs = obstack_alloc (obstack, name_length + 1);
  chrs[name_length] = '\0';
  read_memory (data_addr, chrs, name_length);
  return chrs;
}
