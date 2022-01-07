
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {int st_nbuckets; int * st_buckets; } ;
typedef TYPE_1__ Elftc_String_Table ;


 int SLIST_INSERT_HEAD (int *,struct _Elftc_String_Table_Entry*,int ) ;
 int assert (int) ;
 size_t elftc_string_table_add_to_pool (TYPE_1__*,char const*) ;
 struct _Elftc_String_Table_Entry* elftc_string_table_find_hash_entry (TYPE_1__*,char const*,int*) ;
 int free (struct _Elftc_String_Table_Entry*) ;
 struct _Elftc_String_Table_Entry* malloc (int) ;
 int ste_next ;

size_t
elftc_string_table_insert(Elftc_String_Table *st, const char *string)
{
 struct _Elftc_String_Table_Entry *ste;
 ssize_t idx;
 int hashindex;

 hashindex = 0;

 ste = elftc_string_table_find_hash_entry(st, string, &hashindex);

 assert(hashindex >= 0 && hashindex < st->st_nbuckets);

 if (ste == ((void*)0)) {
  if ((ste = malloc(sizeof(*ste))) == ((void*)0))
   return (0);
  if ((ste->ste_idx = elftc_string_table_add_to_pool(st,
      string)) == 0) {
   free(ste);
   return (0);
  }

  SLIST_INSERT_HEAD(&st->st_buckets[hashindex], ste, ste_next);
 }

 idx = ste->ste_idx;
 if (idx < 0)
  ste->ste_idx = idx = -idx;

 return (idx);
}
