
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int dummy; } ;
struct event_key {int key; } ;


 char* get_exit_reason (struct perf_kvm_stat*,int ) ;
 int scnprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void exit_event_decode_key(struct perf_kvm_stat *kvm,
      struct event_key *key,
      char decode[20])
{
 const char *exit_reason = get_exit_reason(kvm, key->key);

 scnprintf(decode, 20, "%s", exit_reason);
}
