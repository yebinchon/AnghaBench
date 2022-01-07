; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_group_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_group_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_entry = type { i32, i32, i32, i32*, i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32, %struct.net_bridge_mdb_htable*, i32 }
%struct.net_bridge_mdb_htable = type { i64, i32 }

@br_multicast_free_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_multicast_group_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_group_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_mdb_entry*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_mdb_htable*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.net_bridge_mdb_entry*
  store %struct.net_bridge_mdb_entry* %8, %struct.net_bridge_mdb_entry** %3, align 8
  %9 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %9, i32 0, i32 6
  %11 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  store %struct.net_bridge* %11, %struct.net_bridge** %4, align 8
  %12 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netif_running(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %22 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %21, i32 0, i32 5
  %23 = call i64 @timer_pending(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %57

26:                                               ; preds = %20
  %27 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %36 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %35, i32 0, i32 1
  %37 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %36, align 8
  store %struct.net_bridge_mdb_htable* %37, %struct.net_bridge_mdb_htable** %5, align 8
  %38 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %5, align 8
  %42 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = call i32 @hlist_del_rcu(i32* %44)
  %46 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %5, align 8
  %47 = getelementptr inbounds %struct.net_bridge_mdb_htable, %struct.net_bridge_mdb_htable* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %51 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %50, i32 0, i32 2
  %52 = call i32 @del_timer(i32* %51)
  %53 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %54 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %53, i32 0, i32 1
  %55 = load i32, i32* @br_multicast_free_group, align 4
  %56 = call i32 @call_rcu_bh(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %34, %33, %25
  %58 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %59 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
