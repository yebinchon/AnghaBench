
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct keyring_list {int maxkeys; int nkeys; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {char* description; TYPE_1__ payload; } ;


 scalar_t__ key_is_instantiated (struct key const*) ;
 struct keyring_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void keyring_describe(const struct key *keyring, struct seq_file *m)
{
 struct keyring_list *klist;

 if (keyring->description)
  seq_puts(m, keyring->description);
 else
  seq_puts(m, "[anon]");

 if (key_is_instantiated(keyring)) {
  rcu_read_lock();
  klist = rcu_dereference(keyring->payload.subscriptions);
  if (klist)
   seq_printf(m, ": %u/%u", klist->nkeys, klist->maxkeys);
  else
   seq_puts(m, ": empty");
  rcu_read_unlock();
 }
}
