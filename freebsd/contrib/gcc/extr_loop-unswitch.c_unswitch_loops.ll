; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i64 }

@NULL_RTX = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unswitch_loops(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %2, align 8
  %6 = load %struct.loops*, %struct.loops** %2, align 8
  %7 = getelementptr inbounds %struct.loops, %struct.loops* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load %struct.loops*, %struct.loops** %2, align 8
  %15 = getelementptr inbounds %struct.loops, %struct.loops* %14, i32 0, i32 1
  %16 = load %struct.loop**, %struct.loop*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.loop*, %struct.loop** %16, i64 %18
  %20 = load %struct.loop*, %struct.loop** %19, align 8
  store %struct.loop* %20, %struct.loop** %5, align 8
  %21 = load %struct.loop*, %struct.loop** %5, align 8
  %22 = icmp ne %struct.loop* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %35

24:                                               ; preds = %13
  %25 = load %struct.loop*, %struct.loop** %5, align 8
  %26 = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %35

30:                                               ; preds = %24
  %31 = load %struct.loops*, %struct.loops** %2, align 8
  %32 = load %struct.loop*, %struct.loop** %5, align 8
  %33 = load i32, i32* @NULL_RTX, align 4
  %34 = call i32 @unswitch_single_loop(%struct.loops* %31, %struct.loop* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30, %29, %23
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %9
  %39 = call i32 (...) @iv_analysis_done()
  ret void
}

declare dso_local i32 @unswitch_single_loop(%struct.loops*, %struct.loop*, i32, i32) #1

declare dso_local i32 @iv_analysis_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
