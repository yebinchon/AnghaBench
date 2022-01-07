; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_group_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_group_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_entry = type { i64, i32, i32, %struct.net_bridge* }
%struct.net_bridge = type { i64, i64 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_mdb_entry*)* @br_multicast_send_group_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_send_group_query(%struct.net_bridge_mdb_entry* %0) #0 {
  %2 = alloca %struct.net_bridge_mdb_entry*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge_mdb_entry* %0, %struct.net_bridge_mdb_entry** %2, align 8
  %5 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %5, i32 0, i32 3
  %7 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  store %struct.net_bridge* %7, %struct.net_bridge** %3, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %9 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %9, i32 0, i32 2
  %11 = call %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge* %8, i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @netif_rx(%struct.sk_buff* %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %2, align 8
  %20 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %2, align 8
  %29 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %28, i32 0, i32 1
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @mod_timer(i32* %29, i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  ret void
}

declare dso_local %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge*, i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
