; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_const_double_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_const_double_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @const_double_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @GET_MODE(i32 %6)
  %8 = load i64, i64* @VOIDmode, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GET_MODE_CLASS(i32 %16)
  %18 = load i64, i64* @MODE_INT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %57

26:                                               ; preds = %20, %15, %10, %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @CONST_DOUBLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @VOIDmode, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @GET_MODE(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = load i64, i64* @VOIDmode, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %47, %41, %36
  %53 = phi i1 [ true, %41 ], [ true, %36 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %31
  %55 = phi i1 [ false, %31 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
