; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_calc_global_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_calc_global_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_load_update = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@calc_load_tasks = common dso_local global i32 0, align 4
@FIXED_1 = common dso_local global i64 0, align 8
@avenrun = common dso_local global i32* null, align 8
@EXP_1 = common dso_local global i32 0, align 4
@EXP_5 = common dso_local global i32 0, align 4
@EXP_15 = common dso_local global i32 0, align 4
@LOAD_FREQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_global_load() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @calc_load_update, align 4
  %4 = add nsw i32 %3, 10
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %1, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @time_before(i32 %6, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %51

11:                                               ; preds = %0
  %12 = call i64 @atomic_long_read(i32* @calc_load_tasks)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @FIXED_1, align 8
  %18 = mul nsw i64 %16, %17
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i64 [ %18, %15 ], [ 0, %19 ]
  store i64 %21, i64* %2, align 8
  %22 = load i32*, i32** @avenrun, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EXP_1, align 4
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @calc_load(i32 %24, i32 %25, i64 %26)
  %28 = load i32*, i32** @avenrun, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** @avenrun, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXP_5, align 4
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @calc_load(i32 %32, i32 %33, i64 %34)
  %36 = load i32*, i32** @avenrun, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** @avenrun, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EXP_15, align 4
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @calc_load(i32 %40, i32 %41, i64 %42)
  %44 = load i32*, i32** @avenrun, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @LOAD_FREQ, align 8
  %47 = load i32, i32* @calc_load_update, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @calc_load_update, align 4
  br label %51

51:                                               ; preds = %20, %10
  ret void
}

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @calc_load(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
