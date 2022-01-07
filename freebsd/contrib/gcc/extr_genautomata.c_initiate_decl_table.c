
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int htab_del ;
struct TYPE_2__ {int mode; } ;


 int decl_eq_p ;
 int decl_hash ;
 int decl_table ;
 int dm_unit ;
 int htab_create (int,int ,int ,int ) ;
 TYPE_1__ work_decl ;

__attribute__((used)) static void
initiate_decl_table (void)
{
  work_decl.mode = dm_unit;
  decl_table = htab_create (10, decl_hash, decl_eq_p, (htab_del) 0);
}
