; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_can_merge_blocks_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_can_merge_blocks_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }

@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_16__* null, align 8
@LABEL_EXPR = common dso_local global i64 0, align 8
@current_loops = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)* @tree_can_merge_blocks_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_can_merge_blocks_p(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i32 @single_succ_p(%struct.TYPE_16__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call %struct.TYPE_17__* @single_succ_edge(%struct.TYPE_16__* %14)
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EDGE_ABNORMAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %131

22:                                               ; preds = %13
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = call %struct.TYPE_16__* @single_succ(%struct.TYPE_16__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = icmp ne %struct.TYPE_16__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %131

28:                                               ; preds = %22
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @single_pred_p(%struct.TYPE_16__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %131

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @EXIT_BLOCK_PTR, align 8
  %36 = icmp eq %struct.TYPE_16__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %131

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i64 @last_stmt(%struct.TYPE_16__* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @stmt_ends_bb_p(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %131

48:                                               ; preds = %43, %38
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @LABEL_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @LABEL_EXPR_LABEL(i64 %57)
  %59 = call i64 @DECL_NONLOCAL(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %131

62:                                               ; preds = %56, %51, %48
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = call i64 @phi_nodes(%struct.TYPE_16__* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = call i64 (...) @need_ssa_update_p()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %131

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @PHI_RESULT(i64 %76)
  %78 = call i32 @is_gimple_reg(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @PHI_RESULT(i64 %81)
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @PHI_ARG_DEF(i64 %83, i32 0)
  %85 = call i32 @may_propagate_copy(i32 %82, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %131

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @PHI_CHAIN(i64 %90)
  store i64 %91, i64* %8, align 8
  br label %72

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call i32 @bsi_start(%struct.TYPE_16__* %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %116, %93
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @bsi_end_p(i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @bsi_stmt(i32 %102)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @LABEL_EXPR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %118

109:                                              ; preds = %101
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @LABEL_EXPR_LABEL(i64 %110)
  %112 = call i32 @DECL_ARTIFICIAL(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %131

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  %117 = call i32 @bsi_next(i32* %7)
  br label %96

118:                                              ; preds = %108, %96
  %119 = load i64, i64* @current_loops, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = icmp eq %struct.TYPE_16__* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %121, %118
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %129, %114, %87, %70, %61, %47, %37, %32, %27, %21, %12
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @single_succ_p(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @single_succ_edge(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @single_succ(%struct.TYPE_16__*) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_16__*) #1

declare dso_local i64 @last_stmt(%struct.TYPE_16__*) #1

declare dso_local i64 @stmt_ends_bb_p(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NONLOCAL(i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i64) #1

declare dso_local i64 @phi_nodes(%struct.TYPE_16__*) #1

declare dso_local i64 @need_ssa_update_p(...) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i32 @may_propagate_copy(i32, i32) #1

declare dso_local i32 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @bsi_start(%struct.TYPE_16__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @DECL_ARTIFICIAL(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
