
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct genl_family {scalar_t__ id; int maxattr; int family_list; int * attrbuf; int name; int mcast_groups; int ops_list; } ;


 int CTRL_CMD_NEWFAMILY ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ GENL_ID_GENERATE ;
 scalar_t__ GENL_MAX_ID ;
 scalar_t__ GENL_MIN_ID ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int genl_ctrl_event (int ,struct genl_family*) ;
 int genl_family_chain (scalar_t__) ;
 scalar_t__ genl_family_find_byid (scalar_t__) ;
 scalar_t__ genl_family_find_byname (int ) ;
 scalar_t__ genl_generate_id () ;
 int genl_lock () ;
 int genl_unlock () ;
 int * kmalloc (int,int ) ;
 int list_add_tail (int *,int ) ;

int genl_register_family(struct genl_family *family)
{
 int err = -EINVAL;

 if (family->id && family->id < GENL_MIN_ID)
  goto errout;

 if (family->id > GENL_MAX_ID)
  goto errout;

 INIT_LIST_HEAD(&family->ops_list);
 INIT_LIST_HEAD(&family->mcast_groups);

 genl_lock();

 if (genl_family_find_byname(family->name)) {
  err = -EEXIST;
  goto errout_locked;
 }

 if (genl_family_find_byid(family->id)) {
  err = -EEXIST;
  goto errout_locked;
 }

 if (family->id == GENL_ID_GENERATE) {
  u16 newid = genl_generate_id();

  if (!newid) {
   err = -ENOMEM;
   goto errout_locked;
  }

  family->id = newid;
 }

 if (family->maxattr) {
  family->attrbuf = kmalloc((family->maxattr+1) *
     sizeof(struct nlattr *), GFP_KERNEL);
  if (family->attrbuf == ((void*)0)) {
   err = -ENOMEM;
   goto errout_locked;
  }
 } else
  family->attrbuf = ((void*)0);

 list_add_tail(&family->family_list, genl_family_chain(family->id));
 genl_unlock();

 genl_ctrl_event(CTRL_CMD_NEWFAMILY, family);

 return 0;

errout_locked:
 genl_unlock();
errout:
 return err;
}
