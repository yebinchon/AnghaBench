
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Elftc_String_Table_Entry {scalar_t__ ste_idx; } ;
typedef scalar_t__ ssize_t ;
typedef int Elftc_String_Table ;


 int ELFTC_FAILURE ;
 size_t ELFTC_STRING_TABLE_LENGTH (int *) ;
 int ELFTC_STRING_TABLE_SET_COMPACTION_FLAG (int *) ;
 int ELFTC_SUCCESS ;
 int assert (int) ;
 struct _Elftc_String_Table_Entry* elftc_string_table_find_hash_entry (int *,char const*,int *) ;

int
elftc_string_table_remove(Elftc_String_Table *st, const char *string)
{
 struct _Elftc_String_Table_Entry *ste;
 ssize_t idx;

 ste = elftc_string_table_find_hash_entry(st, string, ((void*)0));

 if (ste == ((void*)0) || (idx = ste->ste_idx) < 0)
  return (ELFTC_FAILURE);

 assert(idx > 0 && (size_t)idx < ELFTC_STRING_TABLE_LENGTH(st));

 ste->ste_idx = -idx;

 ELFTC_STRING_TABLE_SET_COMPACTION_FLAG(st);

 return (ELFTC_SUCCESS);
}
