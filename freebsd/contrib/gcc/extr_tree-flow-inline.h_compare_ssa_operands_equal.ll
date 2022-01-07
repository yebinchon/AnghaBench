; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_compare_ssa_operands_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_compare_ssa_operands_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @compare_ssa_operands_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_ssa_operands_equal(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %93

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @stmt_ann(i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @stmt_ann(i64 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @op_iter_init_tree(i32* %8, i64 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @op_iter_done(i32* %8)
  store i32 %48, i32* %4, align 4
  br label %93

49:                                               ; preds = %41
  br label %52

50:                                               ; preds = %36
  %51 = call i32 @clear_and_done_ssa_iter(i32* %8)
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @op_iter_init_tree(i32* %9, i64 %56, i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call i32 @op_iter_done(i32* %9)
  store i32 %62, i32* %4, align 4
  br label %93

63:                                               ; preds = %55
  br label %66

64:                                               ; preds = %52
  %65 = call i32 @clear_and_done_ssa_iter(i32* %9)
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %81, %66
  %68 = call i32 @op_iter_done(i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = call i32 @op_iter_done(i32* %9)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ]
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %93

81:                                               ; preds = %76
  %82 = call i64 @op_iter_next_tree(i32* %8)
  store i64 %82, i64* %10, align 8
  %83 = call i64 @op_iter_next_tree(i32* %9)
  store i64 %83, i64* %11, align 8
  br label %67

84:                                               ; preds = %74
  %85 = call i32 @op_iter_done(i32* %8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call i32 @op_iter_done(i32* %9)
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i1 [ false, %84 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %80, %61, %47, %19
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @stmt_ann(i64) #1

declare dso_local i64 @op_iter_init_tree(i32*, i64, i32) #1

declare dso_local i32 @op_iter_done(i32*) #1

declare dso_local i32 @clear_and_done_ssa_iter(i32*) #1

declare dso_local i64 @op_iter_next_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
