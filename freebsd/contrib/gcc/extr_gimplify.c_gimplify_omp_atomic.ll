; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@GS_UNHANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @gimplify_omp_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_omp_atomic(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @TREE_OPERAND(i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = call i32 @TYPE_MAIN_VARIANT(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @TYPE_SIZE_UNIT(i32 %22)
  %24 = call i32 @tree_low_cst(i32 %23, i32 1)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @exact_log2(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %102

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %32, label %102

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 0)
  %35 = call i64 @DECL_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @TREE_OPERAND(i32 %38, i32 0)
  %40 = call i32 @DECL_ALIGN_UNIT(i32 %39)
  store i32 %40, i32* %11, align 4
  br label %63

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @COMPONENT_REF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 1)
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @FIELD_DECL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 0)
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  %58 = call i32 @DECL_ALIGN_UNIT(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %47, %41
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @TYPE_ALIGN_UNIT(i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @exact_log2(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @INTEGRAL_TYPE_P(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @POINTER_TYPE_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72, %68
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @gimplify_omp_atomic_fetch_op(i32* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @GS_UNHANDLED, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %108

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @gimplify_omp_atomic_pipeline(i32* %89, i32* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @GS_UNHANDLED, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %108

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %63
  br label %102

102:                                              ; preds = %101, %29, %2
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @gimplify_omp_atomic_mutex(i32* %103, i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %98, %85
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @DECL_ALIGN_UNIT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_ALIGN_UNIT(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @gimplify_omp_atomic_fetch_op(i32*, i32, i32, i32) #1

declare dso_local i32 @gimplify_omp_atomic_pipeline(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gimplify_omp_atomic_mutex(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
