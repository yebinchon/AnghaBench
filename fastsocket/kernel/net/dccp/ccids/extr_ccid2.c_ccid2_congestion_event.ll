; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_congestion_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_congestion_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_seq = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Multiple losses in an RTT---treating as one\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ccid2_seq*)* @ccid2_congestion_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_congestion_event(%struct.sock* %0, %struct.ccid2_seq* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ccid2_seq*, align 8
  %5 = alloca %struct.ccid2_hc_tx_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ccid2_seq* %1, %struct.ccid2_seq** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %6)
  store %struct.ccid2_hc_tx_sock* %7, %struct.ccid2_hc_tx_sock** %5, align 8
  %8 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %9 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %12 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @time_before(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @ccid2_pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %21 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %23 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = udiv i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ %25, %27 ], [ 1, %28 ]
  %31 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %32 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %34 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %35, i32 2)
  %37 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %38 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %44 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %29
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %50 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %48, i32 %51)
  br label %53

53:                                               ; preds = %16, %47, %29
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @ccid2_pr_debug(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @ccid2_change_l_ack_ratio(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
