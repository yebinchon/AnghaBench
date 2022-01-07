
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_kvm_stat {int exit_reasons_size; int exit_reasons_isa; struct exit_reasons_table* exit_reasons; } ;
struct exit_reasons_table {scalar_t__ exit_code; char const* reason; } ;


 int pr_err (char*,unsigned long long,int ) ;

__attribute__((used)) static const char *get_exit_reason(struct perf_kvm_stat *kvm, u64 exit_code)
{
 int i = kvm->exit_reasons_size;
 struct exit_reasons_table *tbl = kvm->exit_reasons;

 while (i--) {
  if (tbl->exit_code == exit_code)
   return tbl->reason;
  tbl++;
 }

 pr_err("unknown kvm exit code:%lld on %s\n",
  (unsigned long long)exit_code, kvm->exit_reasons_isa);
 return "UNKNOWN";
}
