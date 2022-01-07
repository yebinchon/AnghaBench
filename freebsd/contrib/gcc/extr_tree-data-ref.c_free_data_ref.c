
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data_reference_p ;


 int DR_FREE_ACCESS_FNS (int ) ;
 int free (int ) ;

__attribute__((used)) static void
free_data_ref (data_reference_p dr)
{
  DR_FREE_ACCESS_FNS (dr);
  free (dr);
}
