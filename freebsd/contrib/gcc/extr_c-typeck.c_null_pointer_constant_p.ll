; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_null_pointer_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_null_pointer_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@TYPE_UNQUALIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @null_pointer_constant_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_pointer_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @INTEGER_CST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @integer_zerop(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @INTEGRAL_TYPE_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @POINTER_TYPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i64 @VOID_TYPE_P(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = call i64 @TYPE_QUALS(i32 %34)
  %36 = load i64, i64* @TYPE_UNQUALIFIED, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %32, %27, %22
  %39 = phi i1 [ false, %27 ], [ false, %22 ], [ %37, %32 ]
  br label %40

40:                                               ; preds = %38, %18
  %41 = phi i1 [ true, %18 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %14, %10, %1
  %43 = phi i1 [ false, %14 ], [ false, %10 ], [ false, %1 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @VOID_TYPE_P(i32) #1

declare dso_local i64 @TYPE_QUALS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
