
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct netlbl_audit {int dummy; } ;
struct cipso_v4_doi {size_t doi; size_t type; int* tags; int list; int refcount; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_MAC_CIPSOV4_ADD ;
 scalar_t__ CIPSO_V4_DOI_UNKNOWN ;






 size_t CIPSO_V4_TAG_MAXCNT ;


 int EEXIST ;
 int EINVAL ;
 int atomic_set (int *,int) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,size_t,char const*,int) ;
 int cipso_v4_doi_list ;
 int cipso_v4_doi_list_lock ;
 int * cipso_v4_doi_search (scalar_t__) ;
 int list_add_tail_rcu (int *,int *) ;
 struct audit_buffer* netlbl_audit_start (int ,struct netlbl_audit*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cipso_v4_doi_add(struct cipso_v4_doi *doi_def,
       struct netlbl_audit *audit_info)
{
 int ret_val = -EINVAL;
 u32 iter;
 u32 doi;
 u32 doi_type;
 struct audit_buffer *audit_buf;

 doi = doi_def->doi;
 doi_type = doi_def->type;

 if (doi_def == ((void*)0) || doi_def->doi == CIPSO_V4_DOI_UNKNOWN)
  goto doi_add_return;
 for (iter = 0; iter < CIPSO_V4_TAG_MAXCNT; iter++) {
  switch (doi_def->tags[iter]) {
  case 128:
   break;
  case 129:
  case 132:
   if (doi_def->type != 134)
    goto doi_add_return;
   break;
  case 130:
   if (doi_def->type != 135)
    goto doi_add_return;
   break;
  case 131:
   if (iter == 0)
    goto doi_add_return;
   break;
  default:
   goto doi_add_return;
  }
 }

 atomic_set(&doi_def->refcount, 1);

 spin_lock(&cipso_v4_doi_list_lock);
 if (cipso_v4_doi_search(doi_def->doi) != ((void*)0)) {
  spin_unlock(&cipso_v4_doi_list_lock);
  ret_val = -EEXIST;
  goto doi_add_return;
 }
 list_add_tail_rcu(&doi_def->list, &cipso_v4_doi_list);
 spin_unlock(&cipso_v4_doi_list_lock);
 ret_val = 0;

doi_add_return:
 audit_buf = netlbl_audit_start(AUDIT_MAC_CIPSOV4_ADD, audit_info);
 if (audit_buf != ((void*)0)) {
  const char *type_str;
  switch (doi_type) {
  case 133:
   type_str = "trans";
   break;
  case 134:
   type_str = "pass";
   break;
  case 135:
   type_str = "local";
   break;
  default:
   type_str = "(unknown)";
  }
  audit_log_format(audit_buf,
     " cipso_doi=%u cipso_type=%s res=%u",
     doi, type_str, ret_val == 0 ? 1 : 0);
  audit_log_end(audit_buf);
 }

 return ret_val;
}
