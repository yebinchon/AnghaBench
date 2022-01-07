
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand_struct {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kmem_cache_free (int ,struct sighand_struct*) ;
 int sighand_cachep ;

void __cleanup_sighand(struct sighand_struct *sighand)
{
 if (atomic_dec_and_test(&sighand->count))
  kmem_cache_free(sighand_cachep, sighand);
}
