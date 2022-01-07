
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
struct _Elftc_String_Table_Bucket {int dummy; } ;
struct TYPE_7__ {int st_len; char const* st_string_pool; struct _Elftc_String_Table_Bucket* st_buckets; } ;
typedef TYPE_1__ Elftc_String_Table ;


 int ELFTC_STRING_TABLE_CLEAR_COMPACTION_FLAG (TYPE_1__*) ;
 int ELFTC_STRING_TABLE_COMPACTION_FLAG ;
 size_t ELFTC_STRING_TABLE_LENGTH (TYPE_1__*) ;
 int ELFTC_STRING_TABLE_UPDATE_LENGTH (TYPE_1__*,size_t) ;
 int SLIST_REMOVE (struct _Elftc_String_Table_Bucket*,struct _Elftc_String_Table_Entry*,int ,int ) ;
 int _Elftc_String_Table_Entry ;
 int assert (int) ;
 struct _Elftc_String_Table_Entry* elftc_string_table_find_hash_entry (TYPE_1__*,char*,int*) ;
 int free (struct _Elftc_String_Table_Entry*) ;
 int memmove (char*,char*,size_t) ;
 int ste_next ;
 int strlen (char*) ;

const char *
elftc_string_table_image(Elftc_String_Table *st, size_t *size)
{
 char *r, *s, *end;
 struct _Elftc_String_Table_Entry *ste;
 struct _Elftc_String_Table_Bucket *head;
 size_t copied, offset, length, newsize;
 int hashindex;






 if ((st->st_len & ELFTC_STRING_TABLE_COMPACTION_FLAG) == 0) {
  if (size)
   *size = ELFTC_STRING_TABLE_LENGTH(st);
  return (st->st_string_pool);
 }




 assert(*st->st_string_pool == '\0');

 newsize = 1;
 end = st->st_string_pool + ELFTC_STRING_TABLE_LENGTH(st);

 for (r = s = st->st_string_pool + 1;
      s < end;
      s += length, r += copied) {

  copied = 0;
  length = strlen(s) + 1;

  ste = elftc_string_table_find_hash_entry(st, s,
      &hashindex);
  head = &st->st_buckets[hashindex];

  assert(ste != ((void*)0));


  if (ste->ste_idx < 0) {
   SLIST_REMOVE(head, ste, _Elftc_String_Table_Entry,
       ste_next);
   free(ste);
   continue;
  }


  offset = newsize;
  newsize += length;
  copied = length;

  if (r == s)
   continue;

  memmove(r, s, copied);


  ste->ste_idx = offset;
 }

 ELFTC_STRING_TABLE_CLEAR_COMPACTION_FLAG(st);
 ELFTC_STRING_TABLE_UPDATE_LENGTH(st, newsize);

 if (size)
  *size = newsize;

 return (st->st_string_pool);
}
