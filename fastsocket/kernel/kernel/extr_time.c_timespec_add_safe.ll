; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_add_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_add_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@TIME_T_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @timespec_add_safe(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %15, %17
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %20, %22
  %24 = call i32 @set_normalized_timespec(%struct.timespec* %5, i64 %18, i64 %23)
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %4
  %37 = load i64, i64* @TIME_T_MAX, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = bitcast %struct.timespec* %5 to { i64, i64 }*
  %41 = load { i64, i64 }, { i64, i64 }* %40, align 8
  ret { i64, i64 } %41
}

declare dso_local i32 @set_normalized_timespec(%struct.timespec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
