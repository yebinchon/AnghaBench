
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct request_key_auth {int callout_len; int pid; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {char* description; TYPE_1__ payload; } ;


 scalar_t__ key_is_instantiated (struct key const*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void request_key_auth_describe(const struct key *key,
          struct seq_file *m)
{
 struct request_key_auth *rka = key->payload.data;

 seq_puts(m, "key:");
 seq_puts(m, key->description);
 if (key_is_instantiated(key))
  seq_printf(m, " pid:%d ci:%zu", rka->pid, rka->callout_len);
}
