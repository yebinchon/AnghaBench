
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {struct cache_head* next; } ;
struct cache_detail {int hash_lock; int entries; scalar_t__ (* match ) (struct cache_head*,struct cache_head*) ;int (* init ) (struct cache_head*,struct cache_head*) ;struct cache_head* (* alloc ) () ;struct cache_head** hash_table; } ;


 int cache_get (struct cache_head*) ;
 int cache_init (struct cache_head*) ;
 scalar_t__ cache_is_expired (struct cache_detail*,struct cache_head*) ;
 int cache_put (struct cache_head*,struct cache_detail*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ stub1 (struct cache_head*,struct cache_head*) ;
 struct cache_head* stub2 () ;
 int stub3 (struct cache_head*,struct cache_head*) ;
 scalar_t__ stub4 (struct cache_head*,struct cache_head*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct cache_head *sunrpc_cache_lookup(struct cache_detail *detail,
           struct cache_head *key, int hash)
{
 struct cache_head **head, **hp;
 struct cache_head *new = ((void*)0), *freeme = ((void*)0);

 head = &detail->hash_table[hash];

 read_lock(&detail->hash_lock);

 for (hp=head; *hp != ((void*)0) ; hp = &(*hp)->next) {
  struct cache_head *tmp = *hp;
  if (detail->match(tmp, key)) {
   if (cache_is_expired(detail, tmp))

    break;
   cache_get(tmp);
   read_unlock(&detail->hash_lock);
   return tmp;
  }
 }
 read_unlock(&detail->hash_lock);


 new = detail->alloc();
 if (!new)
  return ((void*)0);




 cache_init(new);
 detail->init(new, key);

 write_lock(&detail->hash_lock);


 for (hp=head; *hp != ((void*)0) ; hp = &(*hp)->next) {
  struct cache_head *tmp = *hp;
  if (detail->match(tmp, key)) {
   if (cache_is_expired(detail, tmp)) {
    *hp = tmp->next;
    tmp->next = ((void*)0);
    detail->entries --;
    freeme = tmp;
    break;
   }
   cache_get(tmp);
   write_unlock(&detail->hash_lock);
   cache_put(new, detail);
   return tmp;
  }
 }
 new->next = *head;
 *head = new;
 detail->entries++;
 cache_get(new);
 write_unlock(&detail->hash_lock);

 if (freeme)
  cache_put(freeme, detail);
 return new;
}
