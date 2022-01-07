
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dlm_node_iter {int node_map; } ;
struct dlm_migrate_request {int new_master; int master; int namelen; int name; } ;
struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int name; int key; int spinlock; int domain_map; } ;
typedef int migrate ;


 int BUG () ;
 int DLM_MIGRATE_REQUEST_MSG ;
 int DLM_MIGRATE_RESPONSE_MASTERY_REF ;
 int ML_ERROR ;
 int clear_bit (int,int ) ;
 int dlm_is_host_down (int) ;
 int dlm_lockres_set_refmap_bit (int,struct dlm_lock_resource*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_migrate_request*,int ,int) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int o2net_send_message (int ,int ,struct dlm_migrate_request*,int,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int dlm_do_migrate_request(struct dlm_ctxt *dlm,
      struct dlm_lock_resource *res,
      u8 master, u8 new_master,
      struct dlm_node_iter *iter)
{
 struct dlm_migrate_request migrate;
 int ret, skip, status = 0;
 int nodenum;

 memset(&migrate, 0, sizeof(migrate));
 migrate.namelen = res->lockname.len;
 memcpy(migrate.name, res->lockname.name, migrate.namelen);
 migrate.new_master = new_master;
 migrate.master = master;

 ret = 0;


 while ((nodenum = dlm_node_iter_next(iter)) >= 0) {
  if (nodenum == master ||
      nodenum == new_master)
   continue;


  spin_lock(&dlm->spinlock);
  skip = (!test_bit(nodenum, dlm->domain_map));
  spin_unlock(&dlm->spinlock);
  if (skip) {
   clear_bit(nodenum, iter->node_map);
   continue;
  }

  ret = o2net_send_message(DLM_MIGRATE_REQUEST_MSG, dlm->key,
      &migrate, sizeof(migrate), nodenum,
      &status);
  if (ret < 0) {
   mlog(0, "migrate_request returned %d!\n", ret);
   if (!dlm_is_host_down(ret)) {
    mlog(ML_ERROR, "unhandled error=%d!\n", ret);
    BUG();
   }
   clear_bit(nodenum, iter->node_map);
   ret = 0;
  } else if (status < 0) {
   mlog(0, "migrate request (node %u) returned %d!\n",
        nodenum, status);
   ret = status;
  } else if (status == DLM_MIGRATE_RESPONSE_MASTERY_REF) {



   mlog(0, "%s:%.*s: need ref for node %u\n",
        dlm->name, res->lockname.len, res->lockname.name,
        nodenum);
   spin_lock(&res->spinlock);
   dlm_lockres_set_refmap_bit(nodenum, res);
   spin_unlock(&res->spinlock);
  }
 }

 if (ret < 0)
  mlog_errno(ret);

 mlog(0, "returning ret=%d\n", ret);
 return ret;
}
