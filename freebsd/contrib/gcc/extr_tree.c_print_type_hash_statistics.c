
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,long,long,int ) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;
 int stderr ;
 int type_hash_table ;

__attribute__((used)) static void
print_type_hash_statistics (void)
{
  fprintf (stderr, "Type hash: size %ld, %ld elements, %f collisions\n",
    (long) htab_size (type_hash_table),
    (long) htab_elements (type_hash_table),
    htab_collisions (type_hash_table));
}
