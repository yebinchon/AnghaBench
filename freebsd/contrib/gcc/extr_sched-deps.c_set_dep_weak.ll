; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_set_dep_weak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_set_dep_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_DEP_WEAK = common dso_local global i64 0, align 8
@MAX_DEP_WEAK = common dso_local global i64 0, align 8
@BEGIN_DATA_BITS_OFFSET = common dso_local global i32 0, align 4
@BE_IN_DATA_BITS_OFFSET = common dso_local global i32 0, align 4
@BEGIN_CONTROL_BITS_OFFSET = common dso_local global i32 0, align 4
@BE_IN_CONTROL_BITS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dep_weak(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* @MIN_DEP_WEAK, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MAX_DEP_WEAK, align 8
  %13 = icmp sle i64 %11, %12
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %51 [
    i32 130, label %23
    i32 128, label %30
    i32 131, label %37
    i32 129, label %44
  ]

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @BEGIN_DATA_BITS_OFFSET, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %14
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @BE_IN_DATA_BITS_OFFSET, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %14
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @BEGIN_CONTROL_BITS_OFFSET, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %14
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @BE_IN_CONTROL_BITS_OFFSET, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %14
  %52 = call i32 (...) @gcc_unreachable()
  br label %53

53:                                               ; preds = %51, %44, %37, %30, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
