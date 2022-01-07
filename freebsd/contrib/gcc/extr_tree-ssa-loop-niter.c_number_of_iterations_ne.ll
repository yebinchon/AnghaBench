; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_ne.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.tree_niter_desc = type { i8*, i8*, i32, i8*, %struct.TYPE_3__ }

@NE_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i8* null, align 8
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, i8*, %struct.tree_niter_desc*, i32)* @number_of_iterations_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number_of_iterations_ne(i8* %0, %struct.TYPE_3__* %1, i8* %2, %struct.tree_niter_desc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tree_niter_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.tree_niter_desc* %3, %struct.tree_niter_desc** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @unsigned_type_for(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %23 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = bitcast %struct.TYPE_3__* %23 to i8*
  %26 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %29 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @NE_EXPR, align 4
  %31 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %32 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @tree_int_cst_sign_bit(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %5
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @NEGATE_EXPR, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @fold_build1(i32 %40, i8* %41, i8* %44)
  %46 = call i8* @fold_convert(i8* %39, i8* %45)
  store i8* %46, i8** %13, align 8
  %47 = load i32, i32* @MINUS_EXPR, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @fold_convert(i8* %49, i8* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @fold_convert(i8* %54, i8* %55)
  %57 = call i8* @fold_build2(i32 %47, i8* %48, i8* %53, i8* %56)
  store i8* %57, i8** %14, align 8
  br label %75

58:                                               ; preds = %5
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @fold_convert(i8* %59, i8* %62)
  store i8* %63, i8** %13, align 8
  %64 = load i32, i32* @MINUS_EXPR, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @fold_convert(i8* %66, i8* %67)
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @fold_convert(i8* %69, i8* %72)
  %74 = call i8* @fold_build2(i32 %64, i8* %65, i8* %68, i8* %73)
  store i8* %74, i8** %14, align 8
  br label %75

75:                                               ; preds = %58, %38
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @integer_onep(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %82 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  store i32 1, i32* %6, align 4
  br label %152

83:                                               ; preds = %75
  %84 = load i8*, i8** %13, align 8
  %85 = call i8* @num_ending_zeros(i8* %84)
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @TYPE_PRECISION(i8* %87)
  %89 = load i8*, i8** %16, align 8
  %90 = call i64 @tree_low_cst(i8* %89, i32 1)
  %91 = sub nsw i64 %88, %90
  %92 = call i8* @build_low_bits_mask(i8* %86, i64 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i32, i32* @LSHIFT_EXPR, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i8* @build_int_cst(i8* %95, i32 1)
  %97 = load i8*, i8** %16, align 8
  %98 = call i8* @fold_binary_to_constant(i32 %93, i8* %94, i8* %96, i8* %97)
  store i8* %98, i8** %15, align 8
  %99 = load i32, i32* @RSHIFT_EXPR, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = call i8* @fold_binary_to_constant(i32 %99, i8* %100, i8* %101, i8* %102)
  store i8* %103, i8** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %83
  %107 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i8* @fold_build2(i32 %107, i8* %108, i8* %109, i8* %110)
  store i8* %111, i8** %17, align 8
  %112 = load i32, i32* @EQ_EXPR, align 4
  %113 = load i8*, i8** @boolean_type_node, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* @build_int_cst(i8* %115, i32 0)
  %117 = call i8* @fold_build2(i32 %112, i8* %113, i8* %114, i8* %116)
  store i8* %117, i8** %17, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call i32 @nonzero_p(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %106
  %122 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %123 = load i8*, i8** @boolean_type_node, align 8
  %124 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %125 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i8* @fold_build2(i32 %122, i8* %123, i8* %126, i8* %127)
  %129 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %130 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %121, %106
  br label %132

132:                                              ; preds = %131, %83
  %133 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = call i8* @fold_build2(i32 %133, i8* %134, i8* %135, i8* %136)
  store i8* %137, i8** %14, align 8
  %138 = load i32, i32* @MULT_EXPR, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %19, align 8
  %143 = call i8* @inverse(i8* %141, i8* %142)
  %144 = call i8* @fold_build2(i32 %138, i8* %139, i8* %140, i8* %143)
  store i8* %144, i8** %18, align 8
  %145 = load i32, i32* @BIT_AND_EXPR, align 4
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = call i8* @fold_build2(i32 %145, i8* %146, i8* %147, i8* %148)
  %150 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %151 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  store i32 1, i32* %6, align 4
  br label %152

152:                                              ; preds = %132, %79
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i8* @unsigned_type_for(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tree_int_cst_sign_bit(i8*) #1

declare dso_local i8* @fold_convert(i8*, i8*) #1

declare dso_local i8* @fold_build1(i32, i8*, i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i64 @integer_onep(i8*) #1

declare dso_local i8* @num_ending_zeros(i8*) #1

declare dso_local i8* @build_low_bits_mask(i8*, i64) #1

declare dso_local i64 @TYPE_PRECISION(i8*) #1

declare dso_local i64 @tree_low_cst(i8*, i32) #1

declare dso_local i8* @fold_binary_to_constant(i32, i8*, i8*, i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i32 @nonzero_p(i8*) #1

declare dso_local i8* @inverse(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
