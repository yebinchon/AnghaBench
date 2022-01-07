; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.h_ccid_hc_rx_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.h_ccid_hc_rx_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.tcp_info*)* }
%struct.sock = type { i32 }
%struct.tcp_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccid*, %struct.sock*, %struct.tcp_info*)* @ccid_hc_rx_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid_hc_rx_get_info(%struct.ccid* %0, %struct.sock* %1, %struct.tcp_info* %2) #0 {
  %4 = alloca %struct.ccid*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tcp_info*, align 8
  store %struct.ccid* %0, %struct.ccid** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.tcp_info* %2, %struct.tcp_info** %6, align 8
  %7 = load %struct.ccid*, %struct.ccid** %4, align 8
  %8 = getelementptr inbounds %struct.ccid, %struct.ccid* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.sock*, %struct.tcp_info*)*, i32 (%struct.sock*, %struct.tcp_info*)** %10, align 8
  %12 = icmp ne i32 (%struct.sock*, %struct.tcp_info*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.ccid*, %struct.ccid** %4, align 8
  %15 = getelementptr inbounds %struct.ccid, %struct.ccid* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock*, %struct.tcp_info*)*, i32 (%struct.sock*, %struct.tcp_info*)** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.tcp_info*, %struct.tcp_info** %6, align 8
  %21 = call i32 %18(%struct.sock* %19, %struct.tcp_info* %20)
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
