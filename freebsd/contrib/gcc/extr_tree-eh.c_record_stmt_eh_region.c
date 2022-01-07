
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct eh_region {int dummy; } ;


 int add_stmt_to_eh_region (int ,int ) ;
 int get_eh_region_number (struct eh_region*) ;

__attribute__((used)) static void
record_stmt_eh_region (struct eh_region *region, tree t)
{
  if (!region)
    return;

  add_stmt_to_eh_region (t, get_eh_region_number (region));
}
