
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pstore_info {int name; int read_mutex; struct module* owner; } ;
struct module {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ PSTORE_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ backend ;
 scalar_t__ jiffies ;
 int kmsg_dump_register (int *) ;
 int mutex_init (int *) ;
 int pr_info (char*,int ) ;
 struct pstore_info* psinfo ;
 int pstore_dumper ;
 int pstore_get_records (int ) ;
 scalar_t__ pstore_is_mounted () ;
 int pstore_lock ;
 TYPE_1__ pstore_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 int try_module_get (struct module*) ;

int pstore_register(struct pstore_info *psi)
{
 struct module *owner = psi->owner;

 if (backend && strcmp(backend, psi->name))
  return -EPERM;

 spin_lock(&pstore_lock);
 if (psinfo) {
  spin_unlock(&pstore_lock);
  return -EBUSY;
 }

 psinfo = psi;
 mutex_init(&psinfo->read_mutex);
 spin_unlock(&pstore_lock);

 if (owner && !try_module_get(owner)) {
  psinfo = ((void*)0);
  return -EINVAL;
 }

 if (pstore_is_mounted())
  pstore_get_records(0);

 kmsg_dump_register(&pstore_dumper);

 pstore_timer.expires = jiffies + PSTORE_INTERVAL;
 add_timer(&pstore_timer);

 pr_info("pstore: Registered %s as persistent store backend\n",
  psi->name);

 return 0;
}
