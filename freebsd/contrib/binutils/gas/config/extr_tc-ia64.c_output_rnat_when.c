
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_rec_list ;


 int * alloc_record (int ) ;
 int rnat_when ;

__attribute__((used)) static unw_rec_list *
output_rnat_when ()
{
  unw_rec_list *ptr = alloc_record (rnat_when);
  return ptr;
}
