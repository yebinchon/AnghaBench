; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_send_feedback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_send_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ccid3_hc_rx_sock = type { i64, i32, i64, i32, i32, i32 }
%struct.dccp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TFRC_RSTATE_TERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"delta (%ld) <= 0\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Interval %ldusec, X_recv=%u, 1/p=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32)* @ccid3_hc_rx_send_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_rx_send_feedback(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %11)
  store %struct.ccid3_hc_rx_sock* %12, %struct.ccid3_hc_rx_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %13)
  store %struct.dccp_sock* %14, %struct.dccp_sock** %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %16 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TFRC_RSTATE_TERM, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %84

24:                                               ; preds = %3
  %25 = call i32 (...) @ktime_get_real()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %59 [
    i32 130, label %27
    i32 129, label %32
    i32 128, label %39
  ]

27:                                               ; preds = %24
  %28 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %29 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %28, i32 0, i32 5
  store i32 0, i32* %29, align 8
  %30 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %31 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 8
  br label %60

32:                                               ; preds = %24
  %33 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %34 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %60

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %24, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %42 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ktime_us_delta(i32 %40, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %52 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @scaled_div32(i64 %53, i64 %54)
  %56 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %57 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %47
  br label %60

59:                                               ; preds = %24
  br label %84

60:                                               ; preds = %58, %37, %27
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %63 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %66 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %64, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %71 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %77 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %79 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %81 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = call i32 @dccp_send_ack(%struct.sock* %82)
  br label %84

84:                                               ; preds = %60, %59, %23
  ret void
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @DCCP_BUG(i8*, i64) #1

declare dso_local i32 @scaled_div32(i64, i64) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i64, i32, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
