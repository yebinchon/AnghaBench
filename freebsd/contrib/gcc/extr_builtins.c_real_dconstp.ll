; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_real_dconstp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_real_dconstp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @real_dconstp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @real_dconstp(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @STRIP_NOPS(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @REAL_CST, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_REAL_CST(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @REAL_VALUES_EQUAL(i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %15, %11, %2
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @COMPLEX_CST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_REALPART(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @real_dconstp(i32 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_IMAGPART(i32 %34)
  %36 = call i64 @real_zerop(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %27, %22
  %39 = phi i1 [ false, %27 ], [ false, %22 ], [ %37, %33 ]
  br label %40

40:                                               ; preds = %38, %15
  %41 = phi i1 [ true, %15 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

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
