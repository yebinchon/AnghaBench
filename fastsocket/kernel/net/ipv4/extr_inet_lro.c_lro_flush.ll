; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_mgr = type { i32 }
%struct.net_lro_desc = type { i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@LRO_F_NAPI = common dso_local global i32 0, align 4
@flushed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_lro_mgr*, %struct.net_lro_desc*)* @lro_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_flush(%struct.net_lro_mgr* %0, %struct.net_lro_desc* %1) #0 {
  %3 = alloca %struct.net_lro_mgr*, align 8
  %4 = alloca %struct.net_lro_desc*, align 8
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %3, align 8
  store %struct.net_lro_desc* %1, %struct.net_lro_desc** %4, align 8
  %5 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %6 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %11 = call i32 @lro_update_tcp_ip_header(%struct.net_lro_desc* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %14 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %17 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @skb_shinfo(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %22 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %12
  %26 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %3, align 8
  %27 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LRO_F_NAPI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %34 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %37 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %40 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vlan_hwaccel_receive_skb(i32 %35, i64 %38, i32 %41)
  br label %54

43:                                               ; preds = %25
  %44 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %45 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %48 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %51 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vlan_hwaccel_rx(i32 %46, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %43, %32
  br label %73

55:                                               ; preds = %12
  %56 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %3, align 8
  %57 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LRO_F_NAPI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %64 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netif_receive_skb(i32 %65)
  br label %72

67:                                               ; preds = %55
  %68 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %69 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_rx(i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %3, align 8
  %75 = load i32, i32* @flushed, align 4
  %76 = call i32 @LRO_INC_STATS(%struct.net_lro_mgr* %74, i32 %75)
  %77 = load %struct.net_lro_desc*, %struct.net_lro_desc** %4, align 8
  %78 = call i32 @lro_clear_desc(%struct.net_lro_desc* %77)
  ret void
}

declare dso_local i32 @lro_update_tcp_ip_header(%struct.net_lro_desc*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(i32, i64, i32) #1

declare dso_local i32 @vlan_hwaccel_rx(i32, i64, i32) #1

declare dso_local i32 @netif_receive_skb(i32) #1

declare dso_local i32 @netif_rx(i32) #1

declare dso_local i32 @LRO_INC_STATS(%struct.net_lro_mgr*, i32) #1

declare dso_local i32 @lro_clear_desc(%struct.net_lro_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
