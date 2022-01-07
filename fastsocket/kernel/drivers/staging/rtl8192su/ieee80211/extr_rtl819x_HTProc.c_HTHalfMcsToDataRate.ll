; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTHalfMcsToDataRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTHalfMcsToDataRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }

@MCS_DATA_RATE = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTHalfMcsToDataRate(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %8 = call i64 @IsHTHalfNmode40Bandwidth(%struct.ieee80211_device* %7)
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @IsHTHalfNmodeSGI(%struct.ieee80211_device* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i32***, i32**** @MCS_DATA_RATE, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32**, i32*** %20, i64 %21
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, 127
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i64 @IsHTHalfNmode40Bandwidth(%struct.ieee80211_device*) #1

declare dso_local i64 @IsHTHalfNmodeSGI(%struct.ieee80211_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
