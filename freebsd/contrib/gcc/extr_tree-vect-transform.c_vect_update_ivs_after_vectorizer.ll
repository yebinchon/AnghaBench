; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_update_ivs_after_vectorizer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_update_ivs_after_vectorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.loop = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vect_update_ivs_after_vectorizer: phi: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"virtual phi. skip.\00", align 1
@vect_reduction_def = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"reduc phi. skip.\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.TYPE_5__*)* @vect_update_ivs_after_vectorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vect_update_ivs_after_vectorizer(i32 %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.loop* @LOOP_VINFO_LOOP(i32 %21)
  store %struct.loop* %22, %struct.loop** %7, align 8
  %23 = load %struct.loop*, %struct.loop** %7, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @single_pred_p(i32 %31)
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load %struct.loop*, %struct.loop** %7, align 8
  %35 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @phi_nodes(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @phi_nodes(i32 %38)
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %153, %3
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %158

48:                                               ; preds = %46
  store i64 0, i64* %12, align 8
  %49 = load i32, i32* @REPORT_DETAILS, align 4
  %50 = call i64 @vect_print_dump_info(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @vect_dump, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @vect_dump, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @TDF_SLIM, align 4
  %58 = call i32 @print_generic_expr(i32 %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @PHI_RESULT(i64 %60)
  %62 = call i32 @SSA_NAME_VAR(i32 %61)
  %63 = call i32 @is_gimple_reg(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @REPORT_DETAILS, align 4
  %67 = call i64 @vect_print_dump_info(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @vect_dump, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  br label %153

73:                                               ; preds = %59
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @vinfo_for_stmt(i64 %74)
  %76 = call i64 @STMT_VINFO_DEF_TYPE(i32 %75)
  %77 = load i64, i64* @vect_reduction_def, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* @REPORT_DETAILS, align 4
  %81 = call i64 @vect_print_dump_info(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @vect_dump, align 4
  %85 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %79
  br label %153

87:                                               ; preds = %73
  %88 = load %struct.loop*, %struct.loop** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @PHI_RESULT(i64 %89)
  %91 = call i64 @analyze_scalar_evolution(%struct.loop* %88, i32 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @gcc_assert(i32 %93)
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.loop*, %struct.loop** %7, align 8
  %97 = getelementptr inbounds %struct.loop, %struct.loop* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @evolution_part_in_loop_num(i64 %95, i32 %98)
  %100 = call i64 @unshare_expr(i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @NULL_TREE, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @gcc_assert(i32 %104)
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @tree_is_chrec(i64 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @gcc_assert(i32 %110)
  %112 = load i64, i64* %13, align 8
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.loop*, %struct.loop** %7, align 8
  %115 = getelementptr inbounds %struct.loop, %struct.loop* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @initial_condition_in_loop_num(i64 %113, i32 %116)
  %118 = call i64 @unshare_expr(i32 %117)
  store i64 %118, i64* %14, align 8
  %119 = load i32, i32* @PLUS_EXPR, align 4
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @TREE_TYPE(i64 %120)
  %122 = load i32, i32* @MULT_EXPR, align 4
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @TREE_TYPE(i64 %123)
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i64 @build2(i32 %122, i32 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %14, align 8
  %129 = call i64 @build2(i32 %119, i32 %121, i64 %127, i64 %128)
  store i64 %129, i64* %18, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @TREE_TYPE(i64 %130)
  %132 = call i64 @create_tmp_var(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i64 %132, i64* %16, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @add_referenced_var(i64 %133)
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i64 @force_gimple_operand(i64 %135, i64* %17, i32 0, i64 %136)
  store i64 %137, i64* %19, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @bsi_last(i32 %138)
  store i32 %139, i32* %20, align 4
  %140 = load i64, i64* %17, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %87
  %143 = load i64, i64* %17, align 8
  %144 = load i32, i32* @BSI_SAME_STMT, align 4
  %145 = call i32 @bsi_insert_before(i32* %20, i64 %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %87
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* %19, align 8
  %152 = call i32 @SET_PHI_ARG_DEF(i64 %147, i32 %150, i64 %151)
  br label %153

153:                                              ; preds = %146, %86, %72
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @PHI_CHAIN(i64 %154)
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i64 @PHI_CHAIN(i64 %156)
  store i64 %157, i64* %10, align 8
  br label %40

158:                                              ; preds = %46
  ret void
}

declare dso_local %struct.loop* @LOOP_VINFO_LOOP(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @single_pred_p(i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_expr(i32, i64, i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i64 @STMT_VINFO_DEF_TYPE(i32) #1

declare dso_local i32 @vinfo_for_stmt(i64) #1

declare dso_local i64 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local i64 @unshare_expr(i32) #1

declare dso_local i32 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i32 @tree_is_chrec(i64) #1

declare dso_local i32 @initial_condition_in_loop_num(i64, i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @add_referenced_var(i64) #1

declare dso_local i64 @force_gimple_operand(i64, i64*, i32, i64) #1

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i64, i32) #1

declare dso_local i32 @SET_PHI_ARG_DEF(i64, i32, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
