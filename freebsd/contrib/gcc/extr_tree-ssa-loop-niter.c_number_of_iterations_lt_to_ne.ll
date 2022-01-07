; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_lt_to_ne.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_lt_to_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.tree_niter_desc = type { i8*, i8* }

@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i8* null, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i8* null, align 8
@GT_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.tree_niter_desc*, i8**, i8*)* @number_of_iterations_lt_to_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number_of_iterations_lt_to_ne(i8* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, %struct.tree_niter_desc* %3, i8** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.tree_niter_desc*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store %struct.tree_niter_desc* %3, %struct.tree_niter_desc** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = call i8* @TREE_TYPE(i8* %20)
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i8**, i8*** %12, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i8* @fold_build2(i32 %22, i8* %23, i8* %25, i8* %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** @boolean_true_node, align 8
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i64 @TREE_CODE(i8* %29)
  %31 = load i64, i64* @INTEGER_CST, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %173

34:                                               ; preds = %6
  %35 = load i8*, i8** %15, align 8
  %36 = call i64 @nonzero_p(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @MINUS_EXPR, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i8* @fold_build2(i32 %39, i8* %40, i8* %41, i8* %42)
  store i8* %43, i8** %15, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i8* @fold_convert(i8* %45, i8* %46)
  store i8* %47, i8** %16, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @nonzero_p(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %15, align 8
  %60 = call i64 @zero_p(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @MINUS_EXPR, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @TYPE_MAX_VALUE(i8* %65)
  %67 = load i8*, i8** %16, align 8
  %68 = call i8* @fold_build2(i32 %63, i8* %64, i8* %66, i8* %67)
  store i8* %68, i8** %18, align 8
  %69 = load i32, i32* @LE_EXPR, align 4
  %70 = load i8*, i8** @boolean_type_node, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = call i8* @fold_build2(i32 %69, i8* %70, i8* %73, i8* %74)
  store i8* %75, i8** %17, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = call i64 @zero_p(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %173

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %58, %53
  %82 = load i32, i32* @GT_EXPR, align 4
  %83 = load i8*, i8** @boolean_type_node, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @PLUS_EXPR, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i8* @fold_build2(i32 %87, i8* %88, i8* %91, i8* %92)
  %94 = call i8* @fold_build2(i32 %82, i8* %83, i8* %86, i8* %93)
  store i8* %94, i8** %19, align 8
  br label %137

95:                                               ; preds = %44
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @zero_p(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @PLUS_EXPR, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i8* @TYPE_MIN_VALUE(i8* %107)
  %109 = load i8*, i8** %16, align 8
  %110 = call i8* @fold_build2(i32 %105, i8* %106, i8* %108, i8* %109)
  store i8* %110, i8** %18, align 8
  %111 = load i32, i32* @GE_EXPR, align 4
  %112 = load i8*, i8** @boolean_type_node, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = call i8* @fold_build2(i32 %111, i8* %112, i8* %115, i8* %116)
  store i8* %117, i8** %17, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call i64 @zero_p(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %173

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %100, %95
  %124 = load i32, i32* @GT_EXPR, align 4
  %125 = load i8*, i8** @boolean_type_node, align 8
  %126 = load i32, i32* @MINUS_EXPR, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = call i8* @fold_build2(i32 %126, i8* %127, i8* %130, i8* %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @fold_build2(i32 %124, i8* %125, i8* %132, i8* %135)
  store i8* %136, i8** %19, align 8
  br label %137

137:                                              ; preds = %123, %81
  %138 = load i8*, i8** %17, align 8
  %139 = call i64 @nonzero_p(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %143 = load i8*, i8** @boolean_type_node, align 8
  %144 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %11, align 8
  %145 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = call i8* @fold_build2(i32 %142, i8* %143, i8* %146, i8* %147)
  %149 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %11, align 8
  %150 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %141, %137
  %152 = load i8*, i8** %19, align 8
  %153 = call i64 @zero_p(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %157 = load i8*, i8** @boolean_type_node, align 8
  %158 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %11, align 8
  %159 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = call i8* @fold_build2(i32 %156, i8* %157, i8* %160, i8* %161)
  %163 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %11, align 8
  %164 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %155, %151
  %166 = load i32, i32* @PLUS_EXPR, align 4
  %167 = load i8*, i8** %14, align 8
  %168 = load i8**, i8*** %12, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = call i8* @fold_build2(i32 %166, i8* %167, i8* %169, i8* %170)
  %172 = load i8**, i8*** %12, align 8
  store i8* %171, i8** %172, align 8
  store i32 1, i32* %7, align 4
  br label %173

173:                                              ; preds = %165, %121, %79, %33
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @nonzero_p(i8*) #1

declare dso_local i8* @fold_convert(i8*, i8*) #1

declare dso_local i64 @zero_p(i8*) #1

declare dso_local i8* @TYPE_MAX_VALUE(i8*) #1

declare dso_local i8* @TYPE_MIN_VALUE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
