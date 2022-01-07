; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_change_l_ack_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_change_l_ack_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Limiting Ack Ratio (%u) to %u\0A\00", align 1
@DCCPF_ACK_RATIO_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"changing local ack ratio to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @ccid2_change_l_ack_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_change_l_ack_ratio(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %7)
  store %struct.dccp_sock* %8, %struct.dccp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_2__* @ccid2_hc_tx_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @DIV_ROUND_UP(i32 %12, i32 2)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @DCCPF_ACK_RATIO_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @DCCPF_ACK_RATIO_MAX, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @ccid2_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_2__* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @DCCP_WARN(i8*, i64, i64) #1

declare dso_local i32 @ccid2_pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
