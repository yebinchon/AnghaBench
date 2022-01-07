
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;


 scalar_t__ FUID_INDEX (scalar_t__) ;
 scalar_t__ FUID_RID (scalar_t__) ;
 int idx_tree ;
 int printf (char*,char const*,int ,...) ;
 char* zfs_fuid_idx_domain (int *,scalar_t__) ;

__attribute__((used)) static void
print_idstr(uint64_t id, const char *id_type)
{
 if (FUID_INDEX(id)) {
  char *domain;

  domain = zfs_fuid_idx_domain(&idx_tree, FUID_INDEX(id));
  (void) printf("\t%s     %llx [%s-%d]\n", id_type,
      (u_longlong_t)id, domain, (int)FUID_RID(id));
 } else {
  (void) printf("\t%s     %llu\n", id_type, (u_longlong_t)id);
 }

}
