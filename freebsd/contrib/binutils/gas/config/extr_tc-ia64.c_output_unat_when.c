
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_rec_list ;


 int * alloc_record (int ) ;
 int unat_when ;

__attribute__((used)) static unw_rec_list *
output_unat_when ()
{
  unw_rec_list *ptr = alloc_record (unat_when);
  return ptr;
}
