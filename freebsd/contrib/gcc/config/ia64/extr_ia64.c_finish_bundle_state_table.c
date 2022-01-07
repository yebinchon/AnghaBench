
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bundle_state_table ;
 int htab_delete (int ) ;

__attribute__((used)) static void
finish_bundle_state_table (void)
{
  htab_delete (bundle_state_table);
}
