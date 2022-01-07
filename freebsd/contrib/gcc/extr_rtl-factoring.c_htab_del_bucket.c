
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_hash_bucket ;
struct TYPE_3__ {scalar_t__ seq_candidates; } ;


 int free (TYPE_1__*) ;
 int htab_delete (scalar_t__) ;

__attribute__((used)) static void
htab_del_bucket (void *p)
{
  p_hash_bucket bucket = (p_hash_bucket) p;

  if (bucket->seq_candidates)
    htab_delete (bucket->seq_candidates);

  free (bucket);
}
