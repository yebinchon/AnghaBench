
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlist {int dummy; } ;
struct magic_set {int ** mlist; } ;
struct magic_map {int dummy; } ;
struct magic {int dummy; } ;


 size_t MAGIC_SETS ;
 int add_mlist (int *,struct magic_map*,size_t) ;
 struct magic_map* apprentice_buf (struct magic_set*,struct magic*,size_t) ;
 int file_oomem (struct magic_set*,int) ;
 int file_reset (struct magic_set*,int ) ;
 int init_file_tables () ;
 int * mlist_alloc () ;
 int mlist_free (int *) ;

int
buffer_apprentice(struct magic_set *ms, struct magic **bufs,
    size_t *sizes, size_t nbufs)
{
 size_t i, j;
 struct mlist *ml;
 struct magic_map *map;

 if (nbufs == 0)
  return -1;

 (void)file_reset(ms, 0);

 init_file_tables();

 for (i = 0; i < MAGIC_SETS; i++) {
  mlist_free(ms->mlist[i]);
  if ((ms->mlist[i] = mlist_alloc()) == ((void*)0)) {
   file_oomem(ms, sizeof(*ms->mlist[i]));
   goto fail;
  }
 }

 for (i = 0; i < nbufs; i++) {
  map = apprentice_buf(ms, bufs[i], sizes[i]);
  if (map == ((void*)0))
   goto fail;

  for (j = 0; j < MAGIC_SETS; j++) {
   if (add_mlist(ms->mlist[j], map, j) == -1) {
    file_oomem(ms, sizeof(*ml));
    goto fail;
   }
  }
 }

 return 0;
fail:
 for (i = 0; i < MAGIC_SETS; i++) {
  mlist_free(ms->mlist[i]);
  ms->mlist[i] = ((void*)0);
 }
 return -1;
}
