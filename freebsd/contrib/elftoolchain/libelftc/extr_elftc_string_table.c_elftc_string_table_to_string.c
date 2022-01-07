
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* st_string_pool; } ;
typedef TYPE_1__ Elftc_String_Table ;


 int EINVAL ;
 size_t ELFTC_STRING_TABLE_LENGTH (TYPE_1__*) ;
 int errno ;

const char *
elftc_string_table_to_string(Elftc_String_Table *st, size_t offset)
{
 const char *s;

 s = st->st_string_pool + offset;







 if (offset == 0 || offset >= ELFTC_STRING_TABLE_LENGTH(st) ||
     *s == '\0' || *(s - 1) != '\0') {
  errno = EINVAL;
  return (((void*)0));
 }

 return (s);
}
