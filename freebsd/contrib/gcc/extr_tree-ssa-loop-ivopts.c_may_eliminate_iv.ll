; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_may_eliminate_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_may_eliminate_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.iv_use = type { i64 }
%struct.iv_cand = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@INTEGER_CST = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32*)* @may_eliminate_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_eliminate_iv(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivopts_data*, align 8
  %7 = alloca %struct.iv_use*, align 8
  %8 = alloca %struct.iv_cand*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.loop*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %6, align 8
  store %struct.iv_use* %1, %struct.iv_use** %7, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %19 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %18, i32 0, i32 0
  %20 = load %struct.loop*, %struct.loop** %19, align 8
  store %struct.loop* %20, %struct.loop** %17, align 8
  %21 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %22 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @INTEGER_CST, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

30:                                               ; preds = %4
  %31 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %32 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bb_for_stmt(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %36 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @last_stmt(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  %42 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %43 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @COND_EXPR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %30
  store i32 0, i32* %5, align 4
  br label %132

49:                                               ; preds = %41
  %50 = load i32, i32* @CDI_DOMINATORS, align 4
  %51 = load %struct.loop*, %struct.loop** %17, align 8
  %52 = getelementptr inbounds %struct.loop, %struct.loop* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dominated_by_p(i32 %50, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %132

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_5__* @EDGE_SUCC(i32 %59, i32 0)
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %11, align 8
  %61 = load %struct.loop*, %struct.loop** %17, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @flow_bb_inside_loop_p(%struct.loop* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.TYPE_5__* @EDGE_SUCC(i32 %68, i32 1)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %11, align 8
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.loop*, %struct.loop** %17, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @flow_bb_inside_loop_p(%struct.loop* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %132

78:                                               ; preds = %70
  %79 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = call i32 @niter_for_exit(%struct.ivopts_data* %79, %struct.TYPE_5__* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %132

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @TREE_TYPE(i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %89 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @iv_period(%struct.TYPE_6__* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %132

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @TREE_TYPE(i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @TREE_TYPE(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @TYPE_PRECISION(i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = call i64 @TYPE_PRECISION(i32 %102)
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %14, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i32, i32* @GE_EXPR, align 4
  %111 = load i32, i32* @boolean_type_node, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @fold_convert(i32 %112, i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @fold_convert(i32 %115, i32 %116)
  %118 = call i32 @fold_build2(i32 %110, i32 %111, i32 %114, i32 %117)
  %119 = call i32 @integer_nonzerop(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %132

122:                                              ; preds = %109
  %123 = load %struct.loop*, %struct.loop** %17, align 8
  %124 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %125 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %126 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @cand_value_at(%struct.loop* %123, %struct.iv_cand* %124, i64 %127, i32 %128)
  %130 = call i32 @fold_affine_expr(i32 %129)
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %122, %121, %94, %84, %77, %57, %48, %29
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @bb_for_stmt(i64) #1

declare dso_local i64 @last_stmt(i32) #1

declare dso_local i32 @dominated_by_p(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @EDGE_SUCC(i32, i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local i32 @niter_for_exit(%struct.ivopts_data*, %struct.TYPE_5__*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @iv_period(%struct.TYPE_6__*) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @integer_nonzerop(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @fold_affine_expr(i32) #1

declare dso_local i32 @cand_value_at(%struct.loop*, %struct.iv_cand*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
