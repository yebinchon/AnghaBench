; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_strip_float_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_strip_float_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i32* null, align 8
@double_type_node = common dso_local global i32* null, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @strip_float_extensions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @TREE_CODE(i32* %9)
  %11 = load i64, i64* @REAL_CST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  store i32* null, i32** %8, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @TREE_REAL_CST(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @TREE_TYPE(i32* %16)
  %18 = call i64 @TYPE_PRECISION(i32* %17)
  %19 = load i32*, i32** @float_type_node, align 8
  %20 = call i64 @TYPE_PRECISION(i32* %19)
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32*, i32** @float_type_node, align 8
  %24 = call i32 @TYPE_MODE(i32* %23)
  %25 = call i64 @exact_real_truncate(i32 %24, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** @float_type_node, align 8
  store i32* %28, i32** %8, align 8
  br label %44

29:                                               ; preds = %22, %13
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @TREE_TYPE(i32* %30)
  %32 = call i64 @TYPE_PRECISION(i32* %31)
  %33 = load i32*, i32** @double_type_node, align 8
  %34 = call i64 @TYPE_PRECISION(i32* %33)
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32*, i32** @double_type_node, align 8
  %38 = call i32 @TYPE_MODE(i32* %37)
  %39 = call i64 @exact_real_truncate(i32 %38, i32* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** @double_type_node, align 8
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %41, %36, %29
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @TYPE_MODE(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @real_value_truncate(i32 %50, i32 %51)
  %53 = call i32* @build_real(i32* %48, i32 %52)
  store i32* %53, i32** %2, align 8
  br label %90

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @TREE_CODE(i32* %56)
  %58 = load i64, i64* @NOP_EXPR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @TREE_CODE(i32* %61)
  %63 = load i64, i64* @CONVERT_EXPR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32*, i32** %3, align 8
  store i32* %66, i32** %2, align 8
  br label %90

67:                                               ; preds = %60, %55
  %68 = load i32*, i32** %3, align 8
  %69 = call i32* @TREE_OPERAND(i32* %68, i32 0)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @TREE_TYPE(i32* %70)
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32* @TREE_TYPE(i32* %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @FLOAT_TYPE_P(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = load i32*, i32** %3, align 8
  store i32* %78, i32** %2, align 8
  br label %90

79:                                               ; preds = %67
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @TYPE_PRECISION(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @TYPE_PRECISION(i32* %82)
  %84 = icmp sgt i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32*, i32** %3, align 8
  store i32* %86, i32** %2, align 8
  br label %90

87:                                               ; preds = %79
  %88 = load i32*, i32** %4, align 8
  %89 = call i32* @strip_float_extensions(i32* %88)
  store i32* %89, i32** %2, align 8
  br label %90

90:                                               ; preds = %87, %85, %77, %65, %47
  %91 = load i32*, i32** %2, align 8
  ret i32* %91
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @TREE_REAL_CST(i32*) #1

declare dso_local i64 @TYPE_PRECISION(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @exact_real_truncate(i32, i32*) #1

declare dso_local i32 @TYPE_MODE(i32*) #1

declare dso_local i32* @build_real(i32*, i32) #1

declare dso_local i32 @real_value_truncate(i32, i32) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @FLOAT_TYPE_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
