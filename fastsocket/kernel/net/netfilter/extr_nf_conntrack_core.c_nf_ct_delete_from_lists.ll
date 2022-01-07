; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_delete_from_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_delete_from_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { i32 }

@nf_conntrack_lock = common dso_local global i32 0, align 4
@delete_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_delete_from_lists(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %5 = call %struct.net* @nf_ct_net(%struct.nf_conn* %4)
  store %struct.net* %5, %struct.net** %3, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = call i32 @nf_ct_helper_destroy(%struct.nf_conn* %6)
  %8 = call i32 @spin_lock_bh(i32* @nf_conntrack_lock)
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load i32, i32* @delete_list, align 4
  %11 = call i32 @NF_CT_STAT_INC(%struct.net* %9, i32 %10)
  %12 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %13 = call i32 @clean_from_lists(%struct.nf_conn* %12)
  %14 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_helper_destroy(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

declare dso_local i32 @clean_from_lists(%struct.nf_conn*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
