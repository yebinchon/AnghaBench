
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dlm_protocol_version {int dummy; } ;
struct dlm_ctxt {scalar_t__ dlm_state; struct dlm_protocol_version fs_locking_proto; int dlm_locking_proto; int list; int num_joins; } ;


 scalar_t__ DLM_CTXT_JOINED ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int EPROTO ;
 int ERESTARTSYS ;
 struct dlm_ctxt* ERR_PTR (int) ;
 int ML_ERROR ;
 scalar_t__ O2NM_MAX_NAME_LEN ;
 int __dlm_get (struct dlm_ctxt*) ;
 struct dlm_ctxt* __dlm_lookup_domain (char const*) ;
 int current ;
 struct dlm_ctxt* dlm_alloc_ctxt (char const*,int ) ;
 int dlm_domain_events ;
 int dlm_domain_lock ;
 int dlm_domains ;
 int dlm_free_ctxt_mem (struct dlm_ctxt*) ;
 int dlm_join_domain (struct dlm_ctxt*) ;
 int dlm_protocol ;
 scalar_t__ dlm_protocol_compare (struct dlm_protocol_version*,struct dlm_protocol_version*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_wait_on_domain_helper (char const*) ;
 int list_add_tail (int *,int *) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int o2hb_check_local_node_heartbeating () ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strlen (char const*) ;
 int wait_event_interruptible (int ,int ) ;

struct dlm_ctxt * dlm_register_domain(const char *domain,
          u32 key,
          struct dlm_protocol_version *fs_proto)
{
 int ret;
 struct dlm_ctxt *dlm = ((void*)0);
 struct dlm_ctxt *new_ctxt = ((void*)0);

 if (strlen(domain) > O2NM_MAX_NAME_LEN) {
  ret = -ENAMETOOLONG;
  mlog(ML_ERROR, "domain name length too long\n");
  goto leave;
 }

 if (!o2hb_check_local_node_heartbeating()) {
  mlog(ML_ERROR, "the local node has not been configured, or is "
       "not heartbeating\n");
  ret = -EPROTO;
  goto leave;
 }

 mlog(0, "register called for domain \"%s\"\n", domain);

retry:
 dlm = ((void*)0);
 if (signal_pending(current)) {
  ret = -ERESTARTSYS;
  mlog_errno(ret);
  goto leave;
 }

 spin_lock(&dlm_domain_lock);

 dlm = __dlm_lookup_domain(domain);
 if (dlm) {
  if (dlm->dlm_state != DLM_CTXT_JOINED) {
   spin_unlock(&dlm_domain_lock);

   mlog(0, "This ctxt is not joined yet!\n");
   wait_event_interruptible(dlm_domain_events,
       dlm_wait_on_domain_helper(
        domain));
   goto retry;
  }

  if (dlm_protocol_compare(&dlm->fs_locking_proto, fs_proto)) {
   mlog(ML_ERROR,
        "Requested locking protocol version is not "
        "compatible with already registered domain "
        "\"%s\"\n", domain);
   ret = -EPROTO;
   goto leave;
  }

  __dlm_get(dlm);
  dlm->num_joins++;

  spin_unlock(&dlm_domain_lock);

  ret = 0;
  goto leave;
 }


 if (!new_ctxt) {
  spin_unlock(&dlm_domain_lock);

  new_ctxt = dlm_alloc_ctxt(domain, key);
  if (new_ctxt)
   goto retry;

  ret = -ENOMEM;
  mlog_errno(ret);
  goto leave;
 }


 dlm = new_ctxt;
 new_ctxt = ((void*)0);


 list_add_tail(&dlm->list, &dlm_domains);
 spin_unlock(&dlm_domain_lock);





 dlm->dlm_locking_proto = dlm_protocol;
 dlm->fs_locking_proto = *fs_proto;

 ret = dlm_join_domain(dlm);
 if (ret) {
  mlog_errno(ret);
  dlm_put(dlm);
  goto leave;
 }


 *fs_proto = dlm->fs_locking_proto;

 ret = 0;
leave:
 if (new_ctxt)
  dlm_free_ctxt_mem(new_ctxt);

 if (ret < 0)
  dlm = ERR_PTR(ret);

 return dlm;
}
