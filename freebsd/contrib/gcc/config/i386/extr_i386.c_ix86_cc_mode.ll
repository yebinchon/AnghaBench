; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCZmode = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@CCGOCmode = common dso_local global i32 0, align 4
@CCGCmode = common dso_local global i32 0, align 4
@CCNOmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_cc_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @GET_MODE(i32 %8)
  %10 = call i64 @SCALAR_FLOAT_MODE_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ix86_fp_compare_mode(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %39 [
    i32 138, label %17
    i32 129, label %17
    i32 136, label %19
    i32 134, label %19
    i32 130, label %19
    i32 132, label %19
    i32 137, label %21
    i32 131, label %21
    i32 135, label %29
    i32 133, label %29
    i32 128, label %37
  ]

17:                                               ; preds = %15, %15
  %18 = load i32, i32* @CCZmode, align 4
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %15, %15, %15, %15
  %20 = load i32, i32* @CCmode, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %15, %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @const0_rtx, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CCGOCmode, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i32, i32* @CCGCmode, align 4
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %15, %15
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @const0_rtx, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @CCNOmode, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @CCGCmode, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %15
  %38 = load i32, i32* @CCmode, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %15
  %40 = call i32 (...) @gcc_unreachable()
  br label %41

41:                                               ; preds = %12, %17, %19, %25, %27, %33, %35, %37, %39
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @ix86_fp_compare_mode(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
