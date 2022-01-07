
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {scalar_t__ flag; } ;


 int META_free ;
 int mempool_free (struct metapage*,int ) ;
 int metapage_mempool ;
 int set_bit (int ,scalar_t__*) ;

__attribute__((used)) static inline void free_metapage(struct metapage *mp)
{
 mp->flag = 0;
 set_bit(META_free, &mp->flag);

 mempool_free(mp, metapage_mempool);
}
