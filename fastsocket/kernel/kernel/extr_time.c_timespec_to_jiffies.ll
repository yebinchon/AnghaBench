; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_to_jiffies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_to_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

@TICK_NSEC = common dso_local global i32 0, align 4
@MAX_SEC_IN_JIFFIES = common dso_local global i64 0, align 8
@SEC_CONVERSION = common dso_local global i64 0, align 8
@NSEC_CONVERSION = common dso_local global i64 0, align 8
@NSEC_JIFFIE_SC = common dso_local global i64 0, align 8
@SEC_JIFFIE_SC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timespec_to_jiffies(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %5 = load %struct.timespec*, %struct.timespec** %2, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.timespec*, %struct.timespec** %2, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TICK_NSEC, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MAX_SEC_IN_JIFFIES, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @MAX_SEC_IN_JIFFIES, align 8
  store i64 %19, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @SEC_CONVERSION, align 8
  %23 = mul i64 %21, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @NSEC_CONVERSION, align 8
  %26 = mul i64 %24, %25
  %27 = load i64, i64* @NSEC_JIFFIE_SC, align 8
  %28 = load i64, i64* @SEC_JIFFIE_SC, align 8
  %29 = sub i64 %27, %28
  %30 = lshr i64 %26, %29
  %31 = add i64 %23, %30
  %32 = load i64, i64* @SEC_JIFFIE_SC, align 8
  %33 = lshr i64 %31, %32
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
