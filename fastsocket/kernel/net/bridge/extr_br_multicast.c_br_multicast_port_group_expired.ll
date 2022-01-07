; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_port_group_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_port_group_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port_group = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_bridge* }
%struct.net_bridge = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_multicast_port_group_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_port_group_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_port_group*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.net_bridge_port_group*
  store %struct.net_bridge_port_group* %7, %struct.net_bridge_port_group** %3, align 8
  %8 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.net_bridge*, %struct.net_bridge** %11, align 8
  store %struct.net_bridge* %12, %struct.net_bridge** %4, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_running(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %22, i32 0, i32 1
  %24 = call i64 @timer_pending(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %27, i32 0, i32 0
  %29 = call i64 @hlist_unhashed(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %1
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %34 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %35 = call i32 @br_multicast_del_pg(%struct.net_bridge* %33, %struct.net_bridge_port_group* %34)
  br label %36

36:                                               ; preds = %32, %31
  %37 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %38 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @br_multicast_del_pg(%struct.net_bridge*, %struct.net_bridge_port_group*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
