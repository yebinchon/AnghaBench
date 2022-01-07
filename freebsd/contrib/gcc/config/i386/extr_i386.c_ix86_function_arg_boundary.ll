; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_arg_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_arg_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARM_BOUNDARY = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_function_arg_boundary(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @TYPE_ALIGN(i64 %9)
  store i32 %10, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @GET_MODE_ALIGNMENT(i32 %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PARM_BOUNDARY, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @TARGET_64BIT, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @TARGET_SSE, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %27, i32* %5, align 4
  br label %46

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @SSE_REG_MODE_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %45

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @contains_128bit_aligned_vector_p(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %48, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 128, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @SSE_REG_MODE_P(i32) #1

declare dso_local i32 @contains_128bit_aligned_vector_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
