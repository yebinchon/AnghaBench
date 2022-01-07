; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_size_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_size_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @size_binop(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @TREE_TYPE(i64 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @error_mark_node, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i64, i64* @error_mark_node, align 8
  store i64 %19, i64* %4, align 8
  br label %94

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @INTEGER_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @TYPE_IS_SIZETYPE(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = icmp eq i64 %30, %32
  br label %34

34:                                               ; preds = %29, %25, %20
  %35 = phi i1 [ false, %25 ], [ false, %20 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @INTEGER_CST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %34
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @INTEGER_CST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PLUS_EXPR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @integer_zerop(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %4, align 8
  br label %94

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MINUS_EXPR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PLUS_EXPR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @integer_zerop(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %4, align 8
  br label %94

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MULT_EXPR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @integer_onep(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %4, align 8
  br label %94

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @int_const_binop(i32 %84, i64 %85, i64 %86, i32 0)
  store i64 %87, i64* %4, align 8
  br label %94

88:                                               ; preds = %42, %34
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i64 @fold_build2(i32 %89, i64 %90, i64 %91, i64 %92)
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %88, %83, %79, %69, %55, %18
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @integer_onep(i64) #1

declare dso_local i64 @int_const_binop(i32, i64, i64, i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
