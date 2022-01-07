
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reference_matches {int dummy; } ;


 struct reference_matches* build_reference_table () ;
 int find_references_in_function () ;
 struct reference_matches* ref_table ;

__attribute__((used)) static inline struct reference_matches *
reference_table (bool build)
{
  if (ref_table || !build)
    return ref_table;

  ref_table = build_reference_table ();
  find_references_in_function ();
  return ref_table;
}
