; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_rx_sock = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s(%p) %-8.8s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @ccid3_hc_rx_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_rx_set_state(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %7)
  store %struct.ccid3_hc_rx_sock* %8, %struct.ccid3_hc_rx_sock** %5, align 8
  %9 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %10 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @dccp_role(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ccid3_rx_state_name(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ccid3_rx_state_name(i32 %17)
  %19 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.sock* %14, i32 %16, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %27 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @ccid3_rx_state_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
