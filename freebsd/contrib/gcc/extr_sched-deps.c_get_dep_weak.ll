; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_get_dep_weak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_get_dep_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BEGIN_DATA_BITS_OFFSET = common dso_local global i32 0, align 4
@BE_IN_DATA_BITS_OFFSET = common dso_local global i32 0, align 4
@BEGIN_CONTROL_BITS_OFFSET = common dso_local global i32 0, align 4
@BE_IN_CONTROL_BITS_OFFSET = common dso_local global i32 0, align 4
@MIN_DEP_WEAK = common dso_local global i32 0, align 4
@MAX_DEP_WEAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dep_weak(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 130, label %9
    i32 128, label %13
    i32 131, label %17
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @BEGIN_DATA_BITS_OFFSET, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @BE_IN_DATA_BITS_OFFSET, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @BEGIN_CONTROL_BITS_OFFSET, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @BE_IN_CONTROL_BITS_OFFSET, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = call i32 (...) @gcc_unreachable()
  br label %27

27:                                               ; preds = %25, %21, %17, %13, %9
  %28 = load i32, i32* @MIN_DEP_WEAK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MAX_DEP_WEAK, align 4
  %34 = icmp sle i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
