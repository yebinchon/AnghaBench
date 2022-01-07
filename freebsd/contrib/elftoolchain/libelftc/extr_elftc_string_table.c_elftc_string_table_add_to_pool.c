
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t st_string_pool_size; char* st_string_pool; } ;
typedef TYPE_1__ Elftc_String_Table ;


 size_t ELFTC_STRING_TABLE_LENGTH (TYPE_1__*) ;
 scalar_t__ ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT ;
 int ELFTC_STRING_TABLE_UPDATE_LENGTH (TYPE_1__*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;
 size_t roundup (scalar_t__,scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static int
elftc_string_table_add_to_pool(Elftc_String_Table *st, const char *string)
{
 char *newpool;
 size_t len, newsize, stlen;

 len = strlen(string) + 1;
 stlen = ELFTC_STRING_TABLE_LENGTH(st);


 if (stlen + len >= st->st_string_pool_size) {
  newsize = roundup(st->st_string_pool_size +
      ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT,
      ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT);
  if ((newpool = realloc(st->st_string_pool, newsize)) ==
      ((void*)0))
   return (0);
  st->st_string_pool = newpool;
  st->st_string_pool_size = newsize;
 }

 memcpy(st->st_string_pool + stlen, string, len);
 ELFTC_STRING_TABLE_UPDATE_LENGTH(st, stlen + len);

 return (stlen);
}
