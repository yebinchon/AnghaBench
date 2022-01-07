
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,long,long,int ) ;
 int htab_collisions (int ) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_size (int ) ;
 int restrict_base_for_decl ;
 int stderr ;

__attribute__((used)) static void
print_restrict_base_statistics (void)
{
  if (htab_elements (restrict_base_for_decl) != 0)
    fprintf (stderr,
      "RESTRICT_BASE    hash: size %ld, %ld elements, %f collisions\n",
      (long) htab_size (restrict_base_for_decl),
      (long) htab_elements (restrict_base_for_decl),
      htab_collisions (restrict_base_for_decl));
}
