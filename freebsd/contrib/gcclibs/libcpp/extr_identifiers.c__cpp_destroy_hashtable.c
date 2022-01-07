
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash_ob; int hash_table; scalar_t__ our_hashtable; } ;
typedef TYPE_1__ cpp_reader ;


 int ht_destroy (int ) ;
 int obstack_free (int *,int ) ;

void
_cpp_destroy_hashtable (cpp_reader *pfile)
{
  if (pfile->our_hashtable)
    {
      ht_destroy (pfile->hash_table);
      obstack_free (&pfile->hash_ob, 0);
    }
}
