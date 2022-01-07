; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i64, i64, i32, i32, i64, i32 }
%struct.net_bridge_port = type { i32 }
%struct.br_ip = type { i8*, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, i64)* @br_multicast_send_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_send_query(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i64 %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.br_ip, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netif_running(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 4
  %27 = call i64 @timer_pending(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %14, %3
  br label %69

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.br_ip, %struct.br_ip* %8, i32 0, i32 1
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load i32, i32* @ETH_P_IP, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = getelementptr inbounds %struct.br_ip, %struct.br_ip* %8, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %38 = call i32 @__br_multicast_send_query(%struct.net_bridge* %36, %struct.net_bridge_port* %37, %struct.br_ip* %8)
  %39 = load i64, i64* @jiffies, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %47 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  br label %53

49:                                               ; preds = %30
  %50 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %51 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %58 = icmp ne %struct.net_bridge_port* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %61 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %60, i32 0, i32 0
  br label %65

62:                                               ; preds = %53
  %63 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 1
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32* [ %61, %59 ], [ %64, %62 ]
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @mod_timer(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %29
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @__br_multicast_send_query(%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
