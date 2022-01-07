; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_real_onep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_real_onep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@dconst1 = common dso_local global i32 0, align 4
@COMPLEX_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @real_onep(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @STRIP_NOPS(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @REAL_CST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_REAL_CST(i32 %10)
  %12 = load i32, i32* @dconst1, align 4
  %13 = call i64 @REAL_VALUES_EQUAL(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @COMPLEX_CST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @TREE_REALPART(i32 %21)
  %23 = call i32 @real_onep(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @TREE_IMAGPART(i32 %26)
  %28 = call i64 @real_zerop(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = phi i1 [ false, %20 ], [ false, %15 ], [ %29, %25 ]
  br label %32

32:                                               ; preds = %30, %9
  %33 = phi i1 [ true, %9 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @REAL_VALUES_EQUAL(i32, i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
