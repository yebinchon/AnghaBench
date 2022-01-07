; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_first_li.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_first_li.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_rx_sock = type { i64, i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"No RTT estimate available, using fallback RTT\0A\00", align 1
@DCCP_FALLBACK_RTT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"X_recv==0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"stored value of X_recv is zero\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s(%p), receive rate=%u bytes/s, implied loss rate=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*)* @ccid3_first_li to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccid3_first_li(%struct.sock* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %9)
  store %struct.ccid3_hc_rx_sock* %10, %struct.ccid3_hc_rx_sock** %4, align 8
  %11 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %12 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @DCCP_FALLBACK_RTT, align 8
  %18 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %19 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %22 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @net_timedelta(i32 %23)
  %25 = call i64 @ktime_to_us(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %27 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i8* @scaled_div32(i8* %28, i64 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %37 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 4294967295, i64* %2, align 8
  br label %71

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %45 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %48 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @scaled_div(i32 %46, i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @scaled_div32(i8* %52, i64 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @tfrc_calc_x_reverse_lookup(i8* %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @dccp_role(%struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %58, %struct.sock* %59, i64 %60, i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %43
  br label %69

66:                                               ; preds = %43
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @scaled_div(i32 1, i64 %67)
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i64 [ 4294967295, %65 ], [ %68, %66 ]
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %69, %40
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @net_timedelta(i32) #1

declare dso_local i8* @scaled_div32(i8*, i64) #1

declare dso_local i32 @DCCP_BUG(i8*) #1

declare dso_local i64 @scaled_div(i32, i64) #1

declare dso_local i64 @tfrc_calc_x_reverse_lookup(i8*) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, %struct.sock*, i64, i64) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
