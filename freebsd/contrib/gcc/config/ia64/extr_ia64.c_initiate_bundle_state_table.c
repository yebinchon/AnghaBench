
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_del ;


 int bundle_state_eq_p ;
 int bundle_state_hash ;
 int bundle_state_table ;
 int htab_create (int,int ,int ,int ) ;

__attribute__((used)) static void
initiate_bundle_state_table (void)
{
  bundle_state_table = htab_create (50, bundle_state_hash, bundle_state_eq_p,
        (htab_del) 0);
}
