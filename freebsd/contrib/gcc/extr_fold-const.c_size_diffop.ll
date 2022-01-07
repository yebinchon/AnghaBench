; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_size_diffop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_size_diffop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_TYPE = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@bitsizetype = common dso_local global i64 0, align 8
@sbitsizetype = common dso_local global i64 0, align 8
@ssizetype = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @size_diffop(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @INTEGER_TYPE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TYPE_IS_SIZETYPE(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = icmp eq i64 %19, %21
  br label %23

23:                                               ; preds = %18, %14, %2
  %24 = phi i1 [ false, %14 ], [ false, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @TYPE_UNSIGNED(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @MINUS_EXPR, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @size_binop(i32 %31, i64 %32, i64 %33)
  store i64 %34, i64* %3, align 8
  br label %94

35:                                               ; preds = %23
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @bitsizetype, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @sbitsizetype, align 8
  br label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @ssizetype, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @INTEGER_CST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @INTEGER_CST, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @MINUS_EXPR, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @fold_convert(i64 %56, i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @fold_convert(i64 %59, i64 %60)
  %62 = call i64 @size_binop(i32 %55, i64 %58, i64 %61)
  store i64 %62, i64* %3, align 8
  br label %94

63:                                               ; preds = %49
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @tree_int_cst_equal(i64 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @build_int_cst(i64 %69, i32 0)
  store i64 %70, i64* %3, align 8
  br label %94

71:                                               ; preds = %63
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @tree_int_cst_lt(i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* @MINUS_EXPR, align 4
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @size_binop(i32 %78, i64 %79, i64 %80)
  %82 = call i64 @fold_convert(i64 %77, i64 %81)
  store i64 %82, i64* %3, align 8
  br label %94

83:                                               ; preds = %71
  %84 = load i32, i32* @MINUS_EXPR, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @build_int_cst(i64 %85, i32 0)
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @MINUS_EXPR, align 4
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @size_binop(i32 %88, i64 %89, i64 %90)
  %92 = call i64 @fold_convert(i64 %87, i64 %91)
  %93 = call i64 @size_binop(i32 %84, i64 %86, i64 %92)
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %83, %76, %68, %54, %30
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
