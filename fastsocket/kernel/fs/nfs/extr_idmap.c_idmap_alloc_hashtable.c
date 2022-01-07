
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {int * h_entries; } ;


 int GFP_KERNEL ;
 int IDMAP_HASH_SZ ;
 int * kcalloc (int ,int,int ) ;

__attribute__((used)) static void
idmap_alloc_hashtable(struct idmap_hashtable *h)
{
 if (h->h_entries != ((void*)0))
  return;
 h->h_entries = kcalloc(IDMAP_HASH_SZ,
   sizeof(*h->h_entries),
   GFP_KERNEL);
}
