; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_simple_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_simple_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simple_operand_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_operand_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @STRIP_NOPS(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @CONSTANT_CLASS_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @SSA_NAME, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %49, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @DECL_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TREE_ADDRESSABLE(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @TREE_THIS_VOLATILE(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @DECL_NONLOCAL(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @TREE_PUBLIC(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @DECL_EXTERNAL(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @TREE_STATIC(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @DECL_REGISTER(i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ true, %37 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %33, %29, %25, %21, %17, %13
  %48 = phi i1 [ false, %33 ], [ false, %29 ], [ false, %25 ], [ false, %21 ], [ false, %17 ], [ false, %13 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %8, %1
  %50 = phi i1 [ true, %8 ], [ true, %1 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @CONSTANT_CLASS_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @TREE_ADDRESSABLE(i32) #1

declare dso_local i32 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @DECL_NONLOCAL(i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_REGISTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
