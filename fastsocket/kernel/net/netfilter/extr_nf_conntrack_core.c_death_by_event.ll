; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_death_by_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_death_by_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IPCT_DESTROY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPS_DYING_BIT = common dso_local global i32 0, align 4
@nf_conntrack_lock = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @death_by_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_by_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.net*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.nf_conn*
  store %struct.nf_conn* %7, %struct.nf_conn** %3, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = call %struct.net* @nf_ct_net(%struct.nf_conn* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load i32, i32* @IPCT_DESTROY, align 4
  %11 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %12 = call i64 @nf_conntrack_event(i32 %10, %struct.nf_conn* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i64, i64* @jiffies, align 8
  %16 = call i32 (...) @random32()
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %15, %22
  %24 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %25 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 2
  %29 = call i32 @add_timer(%struct.TYPE_6__* %28)
  br label %46

30:                                               ; preds = %1
  %31 = load i32, i32* @IPS_DYING_BIT, align 4
  %32 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %33 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %32, i32 0, i32 1
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = call i32 @spin_lock(i32* @nf_conntrack_lock)
  %36 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @hlist_nulls_del(i32* %41)
  %43 = call i32 @spin_unlock(i32* @nf_conntrack_lock)
  %44 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %45 = call i32 @nf_ct_put(%struct.nf_conn* %44)
  br label %46

46:                                               ; preds = %30, %14
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i64 @nf_conntrack_event(i32, %struct.nf_conn*) #1

declare dso_local i32 @random32(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_nulls_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
