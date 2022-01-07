; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_win_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_win_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid3_hc_tx_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccid3_hc_tx_sock*, i32)* @ccid3_hc_tx_update_win_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_tx_update_win_count(%struct.ccid3_hc_tx_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccid3_hc_tx_sock* %0, %struct.ccid3_hc_tx_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %9 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ktime_us_delta(i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 4, %12
  %14 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %15 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %23 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @min(i32 %24, i32 5)
  %26 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %27 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %33 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
