; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_constant_expression_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_constant_expression_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@VECTOR_CST = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8
@warn_overflow = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"overflow in constant expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @constant_expression_warning(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @INTEGER_CST, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @REAL_CST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @VECTOR_CST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @COMPLEX_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17, %12, %7, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @TREE_CONSTANT_OVERFLOW(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* @warn_overflow, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i64, i64* @pedantic, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @pedwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29, %26, %22, %17
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
