
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct errormap {int list; int namelen; int * name; } ;


 int ERRHASHSZ ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 struct errormap* errmap ;
 int * hash_errmap ;
 int hlist_add_head (int *,int *) ;
 int jhash (int *,int ,int ) ;
 int strlen (int *) ;

int p9_error_init(void)
{
 struct errormap *c;
 int bucket;


 for (bucket = 0; bucket < ERRHASHSZ; bucket++)
  INIT_HLIST_HEAD(&hash_errmap[bucket]);


 for (c = errmap; c->name != ((void*)0); c++) {
  c->namelen = strlen(c->name);
  bucket = jhash(c->name, c->namelen, 0) % ERRHASHSZ;
  INIT_HLIST_NODE(&c->list);
  hlist_add_head(&c->list, &hash_errmap[bucket]);
 }

 return 1;
}
