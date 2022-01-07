; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_idx_analyze_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_idx_analyze_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_data = type { i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MISALIGNED_INDIRECT_REF = common dso_local global i64 0, align 8
@ALIGN_INDIRECT_REF = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @idx_analyze_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idx_analyze_ref(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ar_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.ar_data*
  store %struct.ar_data* %17, %struct.ar_data** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @MISALIGNED_INDIRECT_REF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @ALIGN_INDIRECT_REF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %121

28:                                               ; preds = %22
  %29 = load %struct.ar_data*, %struct.ar_data** %8, align 8
  %30 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ar_data*, %struct.ar_data** %8, align 8
  %33 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @simple_iv(i32 %31, i32 %34, i32 %36, %struct.TYPE_3__* %15, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %121

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @zero_p(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %57

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @cst_and_fits_in_hwi(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %121

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @int_cst_value(i32 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @TREE_CODE(i32 %58)
  %60 = load i64, i64* @PLUS_EXPR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = call i64 @cst_and_fits_in_hwi(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @TREE_OPERAND(i32 %68, i32 1)
  %70 = call i32 @int_cst_value(i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @TREE_OPERAND(i32 %71, i32 0)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %67, %62, %57
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @cst_and_fits_in_hwi(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @int_cst_value(i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @TREE_TYPE(i32 %82)
  %84 = call i32 @build_int_cst(i32 %83, i32 0)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %77, %73
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @TREE_CODE(i32 %86)
  %88 = load i64, i64* @ARRAY_REF, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @array_ref_element_size(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @cst_and_fits_in_hwi(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %121

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @int_cst_value(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %97, %85
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.ar_data*, %struct.ar_data** %8, align 8
  %109 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.ar_data*, %struct.ar_data** %8, align 8
  %115 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %106, %96, %53, %39, %27
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @simple_iv(i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @zero_p(i32) #1

declare dso_local i64 @cst_and_fits_in_hwi(i32) #1

declare dso_local i32 @int_cst_value(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @array_ref_element_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
