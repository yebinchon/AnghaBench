; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_start_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_start_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace = type { i32, i32, i64 }

@UTRACE_INTERRUPT = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.utrace*)* @start_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_report(%struct.utrace* %0) #0 {
  %2 = alloca %struct.utrace*, align 8
  %3 = alloca i32, align 4
  store %struct.utrace* %0, %struct.utrace** %2, align 8
  %4 = load %struct.utrace*, %struct.utrace** %2, align 8
  %5 = getelementptr inbounds %struct.utrace, %struct.utrace* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.utrace*, %struct.utrace** %2, align 8
  %8 = getelementptr inbounds %struct.utrace, %struct.utrace* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @UTRACE_INTERRUPT, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UTRACE_RESUME, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15, %1
  %20 = load %struct.utrace*, %struct.utrace** %2, align 8
  %21 = getelementptr inbounds %struct.utrace, %struct.utrace* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.utrace*, %struct.utrace** %2, align 8
  %24 = call i32 @splice_attaching(%struct.utrace* %23)
  %25 = load %struct.utrace*, %struct.utrace** %2, align 8
  %26 = getelementptr inbounds %struct.utrace, %struct.utrace* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @UTRACE_INTERRUPT, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @UTRACE_RESUME, align 4
  %33 = load %struct.utrace*, %struct.utrace** %2, align 8
  %34 = getelementptr inbounds %struct.utrace, %struct.utrace* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %19
  %36 = load %struct.utrace*, %struct.utrace** %2, align 8
  %37 = getelementptr inbounds %struct.utrace, %struct.utrace* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %15, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @splice_attaching(%struct.utrace*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
