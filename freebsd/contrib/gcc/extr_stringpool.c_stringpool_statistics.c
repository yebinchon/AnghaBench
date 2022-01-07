
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ht_dump_statistics (int ) ;
 int ident_hash ;

void
stringpool_statistics (void)
{
  ht_dump_statistics (ident_hash);
}
