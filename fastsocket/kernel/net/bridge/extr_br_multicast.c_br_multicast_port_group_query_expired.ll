; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_port_group_query_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_port_group_query_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port_group = type { i64, i32, %struct.net_bridge_port* }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_multicast_port_group_query_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_port_group_query_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_port_group*, align 8
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.net_bridge_port_group*
  store %struct.net_bridge_port_group* %8, %struct.net_bridge_port_group** %3, align 8
  %9 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %9, i32 0, i32 2
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  store %struct.net_bridge_port* %11, %struct.net_bridge_port** %4, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 0
  %14 = load %struct.net_bridge*, %struct.net_bridge** %13, align 8
  store %struct.net_bridge* %14, %struct.net_bridge** %5, align 8
  %15 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_running(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %24, i32 0, i32 1
  %26 = call i64 @hlist_unhashed(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %23, %1
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %39 = call i32 @br_multicast_send_port_group_query(%struct.net_bridge_port_group* %38)
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @br_multicast_send_port_group_query(%struct.net_bridge_port_group*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
