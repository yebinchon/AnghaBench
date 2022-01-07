
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int address_space_name_to_int (char*) ;
 int push_type_int (int ) ;

void
push_type_address_space (char *string)
{
  push_type_int (address_space_name_to_int (string));
}
