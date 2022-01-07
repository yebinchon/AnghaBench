
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_8__ {size_t str_hashsz; size_t str_size; int str_nstrs; TYPE_2__** str_hash; scalar_t__ str_nbufs; int str_ptr; } ;
typedef TYPE_1__ strtab_t ;
struct TYPE_9__ {size_t str_off; size_t str_len; struct TYPE_9__* str_next; scalar_t__ str_buf; int str_data; } ;
typedef TYPE_2__ strhash_t ;


 scalar_t__ strtab_compare (TYPE_1__*,TYPE_2__*,char const*,size_t) ;
 int strtab_copyin (TYPE_1__*,char const*,size_t) ;
 size_t strtab_hash (char const*,size_t*) ;
 TYPE_2__* xmalloc (int) ;

size_t
strtab_insert(strtab_t *sp, const char *str)
{
 strhash_t *hp;
 size_t len;
 ulong_t h;

 if (str == ((void*)0) || str[0] == '\0')
  return (0);

 h = strtab_hash(str, &len) % sp->str_hashsz;





 for (hp = sp->str_hash[h]; hp != ((void*)0); hp = hp->str_next) {
  if (strtab_compare(sp, hp, str, len + 1) == 0)
   return (hp->str_off);
 }





 hp = xmalloc(sizeof (strhash_t));

 hp->str_data = sp->str_ptr;
 hp->str_buf = sp->str_nbufs - 1;
 hp->str_off = sp->str_size;
 hp->str_len = len;
 hp->str_next = sp->str_hash[h];

 sp->str_hash[h] = hp;





 strtab_copyin(sp, str, len + 1);
 sp->str_nstrs++;
 sp->str_size += len + 1;

 return (hp->str_off);
}
