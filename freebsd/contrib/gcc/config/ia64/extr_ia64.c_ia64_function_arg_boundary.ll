; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFmode = common dso_local global i32 0, align 4
@TARGET_HPUX = common dso_local global i64 0, align 8
@TARGET_ILP32 = common dso_local global i64 0, align 8
@PARM_BOUNDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_function_arg_boundary(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TFmode, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i64, i64* @TARGET_HPUX, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, i64* @TARGET_ILP32, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @PARM_BOUNDARY, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %12, %9, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @TYPE_ALIGN(i64 %22)
  %24 = load i32, i32* @PARM_BOUNDARY, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @PARM_BOUNDARY, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @GET_MODE_BITSIZE(i32 %32)
  %34 = load i32, i32* @PARM_BOUNDARY, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @PARM_BOUNDARY, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %36, %29, %26, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
