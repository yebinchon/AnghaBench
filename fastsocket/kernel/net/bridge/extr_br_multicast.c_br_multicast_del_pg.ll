; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_del_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_del_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, %struct.net_bridge_mdb_htable* }
%struct.net_bridge_mdb_htable = type { i32 }
%struct.net_bridge_port_group = type { i32, i32, i32, i32, %struct.net_bridge_port_group*, i32 }
%struct.net_bridge_mdb_entry = type { i32, i64, i32, %struct.net_bridge_port_group* }

@br_multicast_free_pg = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port_group*)* @br_multicast_del_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_del_pg(%struct.net_bridge* %0, %struct.net_bridge_port_group* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_bridge_port_group*, align 8
  %5 = alloca %struct.net_bridge_mdb_htable*, align 8
  %6 = alloca %struct.net_bridge_mdb_entry*, align 8
  %7 = alloca %struct.net_bridge_port_group*, align 8
  %8 = alloca %struct.net_bridge_port_group**, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.net_bridge_port_group* %1, %struct.net_bridge_port_group** %4, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 1
  %11 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %10, align 8
  store %struct.net_bridge_mdb_htable* %11, %struct.net_bridge_mdb_htable** %5, align 8
  %12 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %5, align 8
  %13 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %13, i32 0, i32 5
  %15 = call %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge_mdb_htable* %12, i32* %14)
  store %struct.net_bridge_mdb_entry* %15, %struct.net_bridge_mdb_entry** %6, align 8
  %16 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %17 = icmp ne %struct.net_bridge_mdb_entry* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %25 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %24, i32 0, i32 3
  store %struct.net_bridge_port_group** %25, %struct.net_bridge_port_group*** %8, align 8
  br label %26

26:                                               ; preds = %79, %23
  %27 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %8, align 8
  %28 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %27, align 8
  store %struct.net_bridge_port_group* %28, %struct.net_bridge_port_group** %7, align 8
  %29 = icmp ne %struct.net_bridge_port_group* %28, null
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %32 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %4, align 8
  %33 = icmp ne %struct.net_bridge_port_group* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %79

35:                                               ; preds = %30
  %36 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %36, i32 0, i32 4
  %38 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %37, align 8
  %39 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %8, align 8
  store %struct.net_bridge_port_group* %38, %struct.net_bridge_port_group** %39, align 8
  %40 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %40, i32 0, i32 3
  %42 = call i32 @hlist_del_init(i32* %41)
  %43 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %44 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %43, i32 0, i32 2
  %45 = call i32 @del_timer(i32* %44)
  %46 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %47 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %46, i32 0, i32 1
  %48 = call i32 @del_timer(i32* %47)
  %49 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %49, i32 0, i32 0
  %51 = load i32, i32* @br_multicast_free_pg, align 4
  %52 = call i32 @call_rcu_bh(i32* %50, i32 %51)
  %53 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %54 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %53, i32 0, i32 3
  %55 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %54, align 8
  %56 = icmp ne %struct.net_bridge_port_group* %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %35
  %58 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %59 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %64 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @netif_running(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %6, align 8
  %75 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %74, i32 0, i32 0
  %76 = load i32, i32* @jiffies, align 4
  %77 = call i32 @mod_timer(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %67, %62, %57, %35
  br label %84

79:                                               ; preds = %34
  %80 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %7, align 8
  %81 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %80, i32 0, i32 4
  store %struct.net_bridge_port_group** %81, %struct.net_bridge_port_group*** %8, align 8
  br label %26

82:                                               ; preds = %26
  %83 = call i64 @WARN_ON(i32 1)
  br label %84

84:                                               ; preds = %82, %78, %22
  ret void
}

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge_mdb_htable*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
