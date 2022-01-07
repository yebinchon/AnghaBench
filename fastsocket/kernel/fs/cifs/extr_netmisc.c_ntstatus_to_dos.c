
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u8 ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;
struct TYPE_2__ {scalar_t__ ntstatus; int dos_code; int dos_class; } ;


 int ERRHRD ;
 int ERRgeneral ;
 TYPE_1__* ntstatus_to_dos_map ;

__attribute__((used)) static void
ntstatus_to_dos(__u32 ntstatus, __u8 *eclass, __u16 *ecode)
{
 int i;
 if (ntstatus == 0) {
  *eclass = 0;
  *ecode = 0;
  return;
 }
 for (i = 0; ntstatus_to_dos_map[i].ntstatus; i++) {
  if (ntstatus == ntstatus_to_dos_map[i].ntstatus) {
   *eclass = ntstatus_to_dos_map[i].dos_class;
   *ecode = ntstatus_to_dos_map[i].dos_code;
   return;
  }
 }
 *eclass = ERRHRD;
 *ecode = ERRgeneral;
}
