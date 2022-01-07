
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_SIZE ;
 int collisions ;
 int gcc_assert (int) ;
 scalar_t__* hash_tab ;
 int hashstr (char const*,int ) ;
 scalar_t__ next_index ;
 int strlen (char const*) ;

__attribute__((used)) static void
add_hash (const char *fname)
{
  int i, i0;


  i = hashstr (fname, strlen (fname)) % HASH_SIZE;
  i0 = i;
  if (hash_tab[i] != 0)
    {
      collisions++;
      for (;;)
 {
   i = (i+1) % HASH_SIZE;
   gcc_assert (i != i0);
   if (hash_tab[i] == 0)
     break;
 }
    }
  hash_tab[i] = next_index;

  next_index++;
}
