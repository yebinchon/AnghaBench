
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qstr {char* len; int name; } ;
struct dlm_protocol_version {int dummy; } ;
struct dlm_ctxt {int dummy; } ;


 int ENOMEM ;
 struct dlm_ctxt* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct dlm_ctxt*) ;
 int PTR_ERR (struct dlm_ctxt*) ;
 int crc32_le (int ,int ,char*) ;
 struct dlm_ctxt* dlm_register_domain (char*,int ,struct dlm_protocol_version*) ;
 int kfree (char*) ;
 char* kmalloc (char*,int ) ;
 int mlog_errno (int ) ;
 int snprintf (char*,char*,char*,char*,int ) ;

struct dlm_ctxt *user_dlm_register_context(struct qstr *name,
        struct dlm_protocol_version *proto)
{
 struct dlm_ctxt *dlm;
 u32 dlm_key;
 char *domain;

 domain = kmalloc(name->len + 1, GFP_NOFS);
 if (!domain) {
  mlog_errno(-ENOMEM);
  return ERR_PTR(-ENOMEM);
 }

 dlm_key = crc32_le(0, name->name, name->len);

 snprintf(domain, name->len + 1, "%.*s", name->len, name->name);

 dlm = dlm_register_domain(domain, dlm_key, proto);
 if (IS_ERR(dlm))
  mlog_errno(PTR_ERR(dlm));

 kfree(domain);
 return dlm;
}
