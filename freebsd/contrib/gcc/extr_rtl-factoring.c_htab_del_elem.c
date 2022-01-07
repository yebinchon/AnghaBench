
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_hash_elem ;


 int free (int ) ;

__attribute__((used)) static void
htab_del_elem (void *p)
{
  p_hash_elem elem = (p_hash_elem) p;
  free (elem);
}
