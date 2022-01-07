; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_try_combine_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_try_combine_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@VALUE_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @try_combine_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_combine_conversion(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @NOP_EXPR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @CONVERT_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12, %1
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_OPERAND(i64 %18, i32 0)
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @VALUE_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 0)
  %26 = call i32 @VALUE_HANDLE_VUSES(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %17, %12
  store i32 0, i32* %2, align 4
  br label %70

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @TREE_TYPE(i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_OPERAND(i64 %34, i32 0)
  %36 = call %struct.TYPE_4__* @VALUE_HANDLE_EXPR_SET(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @fold_unary(i64 %31, i32 %33, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %70

45:                                               ; preds = %29
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @STRIP_USELESS_TYPE_CONVERSION(i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @VALUE_HANDLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @is_gimple_min_invariant(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @vn_lookup(i64 %57, i32* null)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %56, %52, %45
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = load i64*, i64** %3, align 8
  store i64 %67, i64* %68, align 8
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %62, %59
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %44, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @VALUE_HANDLE_VUSES(i64) #1

declare dso_local i64 @fold_unary(i64, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local %struct.TYPE_4__* @VALUE_HANDLE_EXPR_SET(i64) #1

declare dso_local i32 @STRIP_USELESS_TYPE_CONVERSION(i64) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @vn_lookup(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
