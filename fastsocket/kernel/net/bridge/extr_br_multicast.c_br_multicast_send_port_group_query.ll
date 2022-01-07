; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_port_group_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_port_group_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port_group = type { i64, i32, i32, %struct.net_bridge_port* }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i64, i64 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port_group*)* @br_multicast_send_port_group_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_send_port_group_query(%struct.net_bridge_port_group* %0) #0 {
  %2 = alloca %struct.net_bridge_port_group*, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge_port_group* %0, %struct.net_bridge_port_group** %2, align 8
  %6 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %6, i32 0, i32 3
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  store %struct.net_bridge_port* %8, %struct.net_bridge_port** %3, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 0
  %11 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  store %struct.net_bridge* %11, %struct.net_bridge** %4, align 8
  %12 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %13 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %2, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %13, i32 0, i32 2
  %15 = call %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge* %12, i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @br_deliver(%struct.net_bridge_port* %20, %struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %2, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %33, i32 0, i32 1
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %37 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @mod_timer(i32* %34, i64 %39)
  br label %41

41:                                               ; preds = %32, %23
  ret void
}

declare dso_local %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge*, i32*) #1

declare dso_local i32 @br_deliver(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
