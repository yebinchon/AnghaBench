; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_cleanup_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_cleanup_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NF_CT_EXT_NAT = common dso_local global i32 0, align 4
@IPS_SRC_NAT_DONE = common dso_local global i32 0, align 4
@nf_nat_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @nf_nat_cleanup_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_nat_cleanup_conntrack(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.nf_conn_nat*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %5 = load i32, i32* @NF_CT_EXT_NAT, align 4
  %6 = call %struct.nf_conn_nat* @nf_ct_ext_find(%struct.nf_conn* %4, i32 %5)
  store %struct.nf_conn_nat* %6, %struct.nf_conn_nat** %3, align 8
  %7 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %3, align 8
  %8 = icmp eq %struct.nf_conn_nat* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %3, align 8
  %11 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %29

15:                                               ; preds = %9
  %16 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %3, align 8
  %17 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPS_SRC_NAT_DONE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @NF_CT_ASSERT(i32 %22)
  %24 = call i32 @spin_lock_bh(i32* @nf_nat_lock)
  %25 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %3, align 8
  %26 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %25, i32 0, i32 0
  %27 = call i32 @hlist_del_rcu(i32* %26)
  %28 = call i32 @spin_unlock_bh(i32* @nf_nat_lock)
  br label %29

29:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.nf_conn_nat* @nf_ct_ext_find(%struct.nf_conn*, i32) #1

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
