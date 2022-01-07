
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ulong_t ;
typedef int ssize_t ;
struct TYPE_8__ {size_t str_hashsz; size_t str_size; TYPE_2__** str_hash; int str_nstrs; scalar_t__ str_nbufs; int str_ptr; } ;
typedef TYPE_1__ dt_strtab_t ;
struct TYPE_9__ {size_t str_off; size_t str_len; struct TYPE_9__* str_next; scalar_t__ str_buf; int str_data; } ;
typedef TYPE_2__ dt_strhash_t ;


 int dt_strtab_copyin (TYPE_1__*,char const*,size_t) ;
 size_t dt_strtab_hash (char const*,size_t*) ;
 int dt_strtab_index (TYPE_1__*,char const*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

ssize_t
dt_strtab_insert(dt_strtab_t *sp, const char *str)
{
 dt_strhash_t *hp;
 size_t len;
 ssize_t off;
 ulong_t h;

 if ((off = dt_strtab_index(sp, str)) != -1)
  return (off);

 h = dt_strtab_hash(str, &len) % sp->str_hashsz;





 if ((hp = malloc(sizeof (dt_strhash_t))) == ((void*)0))
  return (-1L);

 hp->str_data = sp->str_ptr;
 hp->str_buf = sp->str_nbufs - 1;
 hp->str_off = sp->str_size;
 hp->str_len = len;
 hp->str_next = sp->str_hash[h];





 if (dt_strtab_copyin(sp, str, len + 1) == -1) {
  free(hp);
  return (-1L);
 }

 sp->str_nstrs++;
 sp->str_size += len + 1;
 sp->str_hash[h] = hp;

 return (hp->str_off);
}
