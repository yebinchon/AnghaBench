; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_is_multivariate_chrec_rec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_is_multivariate_chrec_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @is_multivariate_chrec_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_multivariate_chrec_rec(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @CHREC_VARIABLE(i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %37

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @CHREC_LEFT(i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @is_multivariate_chrec_rec(i64 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @CHREC_RIGHT(i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @is_multivariate_chrec_rec(i64 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ true, %21 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %20, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @CHREC_LEFT(i64) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
