; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_flush_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_mgr = type { i32 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.net_lro_desc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lro_flush_pkt(%struct.net_lro_mgr* %0, %struct.iphdr* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.net_lro_mgr*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.net_lro_desc*, align 8
  store %struct.net_lro_mgr* %0, %struct.net_lro_mgr** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  %8 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %4, align 8
  %9 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %4, align 8
  %10 = getelementptr inbounds %struct.net_lro_mgr, %struct.net_lro_mgr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %14 = call %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr* %8, i32 %11, %struct.iphdr* %12, %struct.tcphdr* %13)
  store %struct.net_lro_desc* %14, %struct.net_lro_desc** %7, align 8
  %15 = load %struct.net_lro_desc*, %struct.net_lro_desc** %7, align 8
  %16 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.net_lro_mgr*, %struct.net_lro_mgr** %4, align 8
  %21 = load %struct.net_lro_desc*, %struct.net_lro_desc** %7, align 8
  %22 = call i32 @lro_flush(%struct.net_lro_mgr* %20, %struct.net_lro_desc* %21)
  br label %23

23:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.net_lro_desc* @lro_get_desc(%struct.net_lro_mgr*, i32, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i32 @lro_flush(%struct.net_lro_mgr*, %struct.net_lro_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
