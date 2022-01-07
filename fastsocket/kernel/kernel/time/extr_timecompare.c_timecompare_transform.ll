; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timecompare.c_timecompare_transform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timecompare.c_timecompare_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecompare = type { i32, i64, i64 }

@TIMECOMPARE_SKEW_RESOLUTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timecompare_transform(%struct.timecompare* %0, i64 %1) #0 {
  %3 = alloca %struct.timecompare*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timecompare* %0, %struct.timecompare** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %8 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %13 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = trunc i64 %15 to i32
  %17 = load %struct.timecompare*, %struct.timecompare** %3, align 8
  %18 = getelementptr inbounds %struct.timecompare, %struct.timecompare* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = load i32, i32* @TIMECOMPARE_SKEW_RESOLUTION, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ns_to_ktime(i64 %26)
  ret i32 %27
}

declare dso_local i32 @ns_to_ktime(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
