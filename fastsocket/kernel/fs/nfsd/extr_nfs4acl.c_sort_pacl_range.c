
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_entry {scalar_t__ e_id; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;



__attribute__((used)) static void
sort_pacl_range(struct posix_acl *pacl, int start, int end) {
 int sorted = 0, i;
 struct posix_acl_entry tmp;



 while (!sorted) {
  sorted = 1;
  for (i = start; i < end; i++) {
   if (pacl->a_entries[i].e_id
     > pacl->a_entries[i+1].e_id) {
    sorted = 0;
    tmp = pacl->a_entries[i];
    pacl->a_entries[i] = pacl->a_entries[i+1];
    pacl->a_entries[i+1] = tmp;
   }
  }
 }
}
