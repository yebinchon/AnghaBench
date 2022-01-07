; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dccp_sock = type { i64, i32 }
%struct.ccid3_hc_tx_sock = type { i32, i64, i64, i64, i32, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TFRC_INITIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SYN RTT = %uus\0A\00", align 1
@DCCP_FALLBACK_RTT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"delay=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s(%p) - Illegal state TERM\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @ccid3_hc_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_tx_send_packet(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %10)
  store %struct.dccp_sock* %11, %struct.dccp_sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %12)
  store %struct.ccid3_hc_tx_sock* %13, %struct.ccid3_hc_tx_sock** %7, align 8
  %14 = call i8* (...) @ktime_get_real()
  store i8* %14, i8** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBADMSG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %27 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %121 [
    i32 129, label %29
    i32 130, label %90
    i32 131, label %90
    i32 128, label %114
  ]

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %32 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %31, i32 0, i32 10
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @TFRC_INITIAL_TIMEOUT, align 4
  %35 = call i64 @usecs_to_jiffies(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @sk_reset_timer(%struct.sock* %30, i32* %32, i64 %36)
  %38 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %39 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %38, i32 0, i32 6
  store i32 0, i32* %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %42 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %41, i32 0, i32 9
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %45 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %50 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %52 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %29
  %56 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %57 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %61 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %64 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call i64 @rfc3390_initial_rate(%struct.sock* %65)
  %67 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %68 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %71 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  br label %85

72:                                               ; preds = %29
  %73 = load i64, i64* @DCCP_FALLBACK_RTT, align 8
  %74 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %75 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %77 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %80 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %82 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 %83, 6
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %72, %55
  %86 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %87 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %86)
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = call i32 @ccid3_hc_tx_set_state(%struct.sock* %88, i32 130)
  br label %121

90:                                               ; preds = %25, %25
  %91 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %92 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @ktime_us_delta(i8* %93, i8* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %101 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = icmp sge i32 %103, 1000
  br i1 %104, label %105, label %110

105:                                              ; preds = %90
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = sdiv i64 %107, 1000
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %3, align 4
  br label %139

110:                                              ; preds = %90
  %111 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @ccid3_hc_tx_update_win_count(%struct.ccid3_hc_tx_sock* %111, i8* %112)
  br label %121

114:                                              ; preds = %25
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = call i32 @dccp_role(%struct.sock* %115)
  %117 = load %struct.sock*, %struct.sock** %4, align 8
  %118 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %116, %struct.sock* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %139

121:                                              ; preds = %25, %110, %85
  %122 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %123 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  %124 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %125 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %131 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %134 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @ktime_add_us(i8* %132, i32 %135)
  %137 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %138 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %121, %114, %105, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i8* @ktime_get_real(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i64) #1

declare dso_local i64 @rfc3390_initial_rate(%struct.sock*) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

declare dso_local i32 @ccid3_hc_tx_set_state(%struct.sock*, i32) #1

declare dso_local i32 @ktime_us_delta(i8*, i8*) #1

declare dso_local i32 @ccid3_hc_tx_update_win_count(%struct.ccid3_hc_tx_sock*, i8*) #1

declare dso_local i32 @DCCP_BUG(i8*, i32, %struct.sock*) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @ktime_add_us(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
