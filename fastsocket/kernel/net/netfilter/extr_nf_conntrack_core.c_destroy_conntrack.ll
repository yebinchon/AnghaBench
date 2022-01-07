; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_destroy_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_destroy_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack = type { i32 }
%struct.nf_conn = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"destroy_conntrack(%p)\0A\00", align 1
@nf_conntrack_lock = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@delete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"destroy_conntrack: returning ct=%p to slab\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack*)* @destroy_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_conntrack(%struct.nf_conntrack* %0) #0 {
  %2 = alloca %struct.nf_conntrack*, align 8
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_conntrack_l4proto*, align 8
  store %struct.nf_conntrack* %0, %struct.nf_conntrack** %2, align 8
  %6 = load %struct.nf_conntrack*, %struct.nf_conntrack** %2, align 8
  %7 = bitcast %struct.nf_conntrack* %6 to %struct.nf_conn*
  store %struct.nf_conn* %7, %struct.nf_conn** %3, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = call %struct.net* @nf_ct_net(%struct.nf_conn* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %10)
  %12 = load %struct.nf_conntrack*, %struct.nf_conntrack** %2, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack, %struct.nf_conntrack* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @NF_CT_ASSERT(i32 %16)
  %18 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %19 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %18, i32 0, i32 2
  %20 = call i32 @timer_pending(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @NF_CT_ASSERT(i32 %23)
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %27 = call i32 @nf_ct_l3num(%struct.nf_conn* %26)
  %28 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %29 = call i32 @nf_ct_protonum(%struct.nf_conn* %28)
  %30 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %27, i32 %29)
  store %struct.nf_conntrack_l4proto* %30, %struct.nf_conntrack_l4proto** %5, align 8
  %31 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %5, align 8
  %32 = icmp ne %struct.nf_conntrack_l4proto* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %5, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %34, i32 0, i32 0
  %36 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %35, align 8
  %37 = icmp ne i32 (%struct.nf_conn.0*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %5, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %39, i32 0, i32 0
  %41 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %40, align 8
  %42 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %43 = bitcast %struct.nf_conn* %42 to %struct.nf_conn.0*
  %44 = call i32 %41(%struct.nf_conn.0* %43)
  br label %45

45:                                               ; preds = %38, %33, %1
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = call i32 @spin_lock_bh(i32* @nf_conntrack_lock)
  %48 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %49 = call i32 @nf_ct_remove_expectations(%struct.nf_conn* %48)
  %50 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %51 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %45
  %54 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %55 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @hlist_nulls_unhashed(i32* %59)
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @hlist_nulls_del_rcu(i32* %67)
  br label %69

69:                                               ; preds = %53, %45
  %70 = load %struct.net*, %struct.net** %4, align 8
  %71 = load i32, i32* @delete, align 4
  %72 = call i32 @NF_CT_STAT_INC(%struct.net* %70, i32 %71)
  %73 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %74 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %75 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %80 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @nf_ct_put(i64 %81)
  br label %83

83:                                               ; preds = %78, %69
  %84 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %84)
  %86 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %87 = call i32 @nf_conntrack_free(%struct.nf_conn* %86)
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nf_ct_remove_expectations(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_nulls_unhashed(i32*) #1

declare dso_local i32 @hlist_nulls_del_rcu(i32*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_put(i64) #1

declare dso_local i32 @nf_conntrack_free(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
