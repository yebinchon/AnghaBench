
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int st_nbuckets; } ;
typedef TYPE_1__ Elftc_String_Table ;


 int assert (int) ;
 struct _Elftc_String_Table_Entry* elftc_string_table_find_hash_entry (TYPE_1__*,char const*,int*) ;

size_t
elftc_string_table_lookup(Elftc_String_Table *st, const char *string)
{
 struct _Elftc_String_Table_Entry *ste;
 ssize_t idx;
 int hashindex;

 ste = elftc_string_table_find_hash_entry(st, string, &hashindex);

 assert(hashindex >= 0 && hashindex < st->st_nbuckets);

 if (ste == ((void*)0) || (idx = ste->ste_idx) < 0)
  return (0);

 return (idx);
}
