; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_assert_no_overflow_lt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_assert_no_overflow_lt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.tree_niter_desc = type { i8* }

@INTEGER_CST = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i8* null, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.tree_niter_desc*, i8*)* @assert_no_overflow_lt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_no_overflow_lt(i8* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, %struct.tree_niter_desc* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.tree_niter_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store %struct.tree_niter_desc* %3, %struct.tree_niter_desc** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i8* @TREE_TYPE(i8* %17)
  store i8* %18, i8** %16, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @nonzero_p(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %156

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @TREE_CODE(i8* %33)
  %35 = load i64, i64* @INTEGER_CST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load i32, i32* @MINUS_EXPR, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @TYPE_MAX_VALUE(i8* %41)
  %43 = call i8* @fold_convert(i8* %40, i8* %42)
  %44 = load i8*, i8** %16, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @fold_convert(i8* %44, i8* %47)
  %49 = call i8* @fold_build2(i32 %38, i8* %39, i8* %43, i8* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @fold_build2(i32 %50, i8* %51, i8* %52, i8* %53)
  store i8* %54, i8** %15, align 8
  br label %62

55:                                               ; preds = %30
  %56 = load i32, i32* @MINUS_EXPR, align 4
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i8* @build_int_cst(i8* %59, i32 1)
  %61 = call i8* @fold_build2(i32 %56, i8* %57, i8* %58, i8* %60)
  store i8* %61, i8** %15, align 8
  br label %62

62:                                               ; preds = %55, %37
  %63 = load i32, i32* @MINUS_EXPR, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @TYPE_MAX_VALUE(i8* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = call i8* @fold_convert(i8* %67, i8* %68)
  %70 = call i8* @fold_build2(i32 %63, i8* %64, i8* %66, i8* %69)
  store i8* %70, i8** %12, align 8
  %71 = load i32, i32* @LE_EXPR, align 4
  %72 = load i8*, i8** @boolean_type_node, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i8* @fold_build2(i32 %71, i8* %72, i8* %75, i8* %76)
  store i8* %77, i8** %14, align 8
  br label %132

78:                                               ; preds = %5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %156

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @TREE_CODE(i8* %87)
  %89 = load i64, i64* @INTEGER_CST, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i32, i32* @MINUS_EXPR, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @fold_convert(i8* %94, i8* %97)
  %99 = load i8*, i8** %16, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i8* @TYPE_MIN_VALUE(i8* %100)
  %102 = call i8* @fold_convert(i8* %99, i8* %101)
  %103 = call i8* @fold_build2(i32 %92, i8* %93, i8* %98, i8* %102)
  store i8* %103, i8** %13, align 8
  %104 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @fold_build2(i32 %104, i8* %105, i8* %106, i8* %107)
  store i8* %108, i8** %15, align 8
  br label %116

109:                                              ; preds = %84
  %110 = load i32, i32* @MINUS_EXPR, align 4
  %111 = load i8*, i8** %16, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = call i8* @build_int_cst(i8* %113, i32 1)
  %115 = call i8* @fold_build2(i32 %110, i8* %111, i8* %112, i8* %114)
  store i8* %115, i8** %15, align 8
  br label %116

116:                                              ; preds = %109, %91
  %117 = load i32, i32* @PLUS_EXPR, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i8* @TYPE_MIN_VALUE(i8* %119)
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = call i8* @fold_convert(i8* %121, i8* %122)
  %124 = call i8* @fold_build2(i32 %117, i8* %118, i8* %120, i8* %123)
  store i8* %124, i8** %12, align 8
  %125 = load i32, i32* @GE_EXPR, align 4
  %126 = load i8*, i8** @boolean_type_node, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i8* @fold_build2(i32 %125, i8* %126, i8* %129, i8* %130)
  store i8* %131, i8** %14, align 8
  br label %132

132:                                              ; preds = %116, %62
  %133 = load i8*, i8** %14, align 8
  %134 = call i64 @zero_p(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %156

137:                                              ; preds = %132
  %138 = load i8*, i8** %14, align 8
  %139 = call i64 @nonzero_p(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %143 = load i8*, i8** @boolean_type_node, align 8
  %144 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %145 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = call i8* @fold_build2(i32 %142, i8* %143, i8* %146, i8* %147)
  %149 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %150 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %141, %137
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  store i32 1, i32* %6, align 4
  br label %156

156:                                              ; preds = %151, %136, %83, %29
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @nonzero_p(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @fold_convert(i8*, i8*) #1

declare dso_local i8* @TYPE_MAX_VALUE(i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i8* @TYPE_MIN_VALUE(i8*) #1

declare dso_local i64 @zero_p(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
