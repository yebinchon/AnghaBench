
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int dummy; } ;


 int JBD_POISON_FREE ;
 int atomic_dec (int *) ;
 int journal_head_cache ;
 int kmem_cache_free (int ,struct journal_head*) ;
 int memset (struct journal_head*,int ,int) ;
 int nr_journal_heads ;

__attribute__((used)) static void journal_free_journal_head(struct journal_head *jh)
{




 kmem_cache_free(journal_head_cache, jh);
}
