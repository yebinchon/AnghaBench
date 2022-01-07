; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_integer_nonzerop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_integer_nonzerop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @integer_nonzerop(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @STRIP_NOPS(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @INTEGER_CST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @TREE_INT_CST_LOW(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @TREE_INT_CST_HIGH(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @COMPLEX_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @TREE_REALPART(i32 %23)
  %25 = call i32 @integer_nonzerop(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @TREE_IMAGPART(i32 %28)
  %30 = call i32 @integer_nonzerop(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i1 [ false, %17 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %13, %9
  %37 = phi i1 [ true, %13 ], [ true, %9 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_INT_CST_LOW(i32) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
