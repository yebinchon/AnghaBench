; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_field_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_field_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@TARGET_ALIGN_DOUBLE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DCmode = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@MODE_COMPLEX_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_field_alignment(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* @TARGET_64BIT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @TARGET_ALIGN_DOUBLE, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @ARRAY_TYPE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @get_inner_array_type(i32 %23)
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %29 = call i32 @TYPE_MODE(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DFmode, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DCmode, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @GET_MODE_CLASS(i32 %38)
  %40 = load i64, i64* @MODE_INT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @GET_MODE_CLASS(i32 %43)
  %45 = load i64, i64* @MODE_COMPLEX_INT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37, %33, %27
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @MIN(i32 32, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @get_inner_array_type(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
