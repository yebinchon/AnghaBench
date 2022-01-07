; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_overflow_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_overflow_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_evaluation = common dso_local global i64 0, align 8
@OPT_Woverflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"integer overflow in expression\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"floating point overflow in expression\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"vector overflow in expression\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"complex integer overflow in expression\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"complex floating point overflow in expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @overflow_warning(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @skip_evaluation, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %36 [
    i32 130, label %9
    i32 129, label %12
    i32 128, label %15
    i32 131, label %18
  ]

9:                                                ; preds = %6
  %10 = load i32, i32* @OPT_Woverflow, align 4
  %11 = call i32 @warning(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

12:                                               ; preds = %6
  %13 = load i32, i32* @OPT_Woverflow, align 4
  %14 = call i32 @warning(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %37

15:                                               ; preds = %6
  %16 = load i32, i32* @OPT_Woverflow, align 4
  %17 = call i32 @warning(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %37

18:                                               ; preds = %6
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @TREE_REALPART(i32 %19)
  %21 = call i32 @TREE_CODE(i32 %20)
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @OPT_Woverflow, align 4
  %25 = call i32 @warning(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %35

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @TREE_REALPART(i32 %27)
  %29 = call i32 @TREE_CODE(i32 %28)
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @OPT_Woverflow, align 4
  %33 = call i32 @warning(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %23
  br label %37

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %5, %36, %35, %15, %12, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @TREE_REALPART(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
