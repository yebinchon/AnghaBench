; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_get_initial_def_for_reduction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_get_initial_def_for_reduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@dconst0 = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @get_initial_def_for_reduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_initial_def_for_reduction(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @vinfo_for_stmt(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @STMT_VINFO_VECTYPE(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @TYPE_MODE(i32 %22)
  %24 = call i32 @GET_MODE_NUNITS(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 1)
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @NULL_TREE, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @INTEGRAL_TYPE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @SCALAR_FLOAT_TYPE_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %3
  %40 = phi i1 [ true, %3 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %61 [
    i32 128, label %44
    i32 132, label %44
    i32 129, label %44
    i32 130, label %58
    i32 131, label %58
  ]

44:                                               ; preds = %39, %39, %39
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @INTEGRAL_TYPE_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @build_int_cst(i32 %49, i32 0)
  store i32 %50, i32* %13, align 4
  br label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @dconst0, align 4
  %54 = call i32 @build_real(i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %63

58:                                               ; preds = %39, %39
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %63

61:                                               ; preds = %39
  %62 = call i32 (...) @gcc_unreachable()
  br label %63

63:                                               ; preds = %61, %58, %55
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %74, %63
  %67 = load i32, i32* %17, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @tree_cons(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %17, align 4
  br label %66

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32, i32* @NULL_TREE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @tree_cons(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @gcc_assert(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @TREE_CODE(i32 %95)
  %97 = load i64, i64* @INTEGER_CST, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @TREE_CODE(i32 %100)
  %102 = load i64, i64* @REAL_CST, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %89
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @build_vector(i32 %105, i32 %106)
  store i32 %107, i32* %14, align 4
  br label %112

108:                                              ; preds = %99
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @build_constructor_from_list(i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @NULL_TREE, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  br label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @vect_init_vector(i32 %122, i32 %123)
  ret i32 %124
}

declare dso_local i32 @vinfo_for_stmt(i32) #1

declare dso_local i32 @STMT_VINFO_VECTYPE(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_vector(i32, i32) #1

declare dso_local i32 @build_constructor_from_list(i32, i32) #1

declare dso_local i32 @vect_init_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
