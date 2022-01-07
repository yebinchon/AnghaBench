; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_empty_loop_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_empty_loop_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.tree_niter_desc = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@SSA_OP_VIRTUAL_DEFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*)* @empty_loop_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_loop_p(%struct.loop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.tree_niter_desc, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  %12 = load %struct.loop*, %struct.loop** %3, align 8
  %13 = call %struct.TYPE_10__* @single_dom_exit(%struct.loop* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load %struct.loop*, %struct.loop** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call i32 @number_of_iterations_exit(%struct.loop* %18, %struct.TYPE_10__* %19, %struct.tree_niter_desc* %5, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %138

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @phi_nodes(i32 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %47, %23
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @PHI_RESULT(i64 %32)
  %34 = call i32 @is_gimple_reg(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %38, %struct.TYPE_10__* %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.loop*, %struct.loop** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @expr_invariant_in_loop_p(%struct.loop* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %138

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @PHI_CHAIN(i64 %48)
  store i64 %49, i64* %6, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.loop*, %struct.loop** %3, align 8
  %52 = call %struct.TYPE_11__** @get_loop_body(%struct.loop* %51)
  store %struct.TYPE_11__** %52, %struct.TYPE_11__*** %8, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %132, %50
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.loop*, %struct.loop** %3, align 8
  %56 = getelementptr inbounds %struct.loop, %struct.loop* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %135

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %72 = call i32 @free(%struct.TYPE_11__** %71)
  store i32 0, i32* %2, align 4
  br label %138

73:                                               ; preds = %59
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = call i32 @bsi_start(%struct.TYPE_11__* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %129, %73
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @bsi_end_p(i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %131

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @bsi_stmt(i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* @SSA_OP_VIRTUAL_DEFS, align 4
  %90 = call i32 @ZERO_SSA_OPERANDS(i64 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i64, i64* %11, align 8
  %94 = call %struct.TYPE_12__* @stmt_ann(i64 %93)
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %85
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %100 = call i32 @free(%struct.TYPE_11__** %99)
  store i32 0, i32* %2, align 4
  br label %138

101:                                              ; preds = %92
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @TREE_CODE(i64 %102)
  switch i32 %103, label %127 [
    i32 128, label %104
    i32 129, label %104
    i32 130, label %111
    i32 131, label %119
  ]

104:                                              ; preds = %101, %101
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @get_call_expr_in(i64 %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %128

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %101, %110
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @TREE_SIDE_EFFECTS(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %117 = call i32 @free(%struct.TYPE_11__** %116)
  store i32 0, i32* %2, align 4
  br label %138

118:                                              ; preds = %111
  br label %128

119:                                              ; preds = %101
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @ASM_VOLATILE_P(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %125 = call i32 @free(%struct.TYPE_11__** %124)
  store i32 0, i32* %2, align 4
  br label %138

126:                                              ; preds = %119
  br label %128

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127, %126, %118, %109
  br label %129

129:                                              ; preds = %128
  %130 = call i32 @bsi_next(i32* %9)
  br label %80

131:                                              ; preds = %80
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %53

135:                                              ; preds = %53
  %136 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %137 = call i32 @free(%struct.TYPE_11__** %136)
  store i32 1, i32* %2, align 4
  br label %138

138:                                              ; preds = %135, %123, %115, %98, %70, %45, %22, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_10__* @single_dom_exit(%struct.loop*) #1

declare dso_local i32 @number_of_iterations_exit(%struct.loop*, %struct.TYPE_10__*, %struct.tree_niter_desc*, i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_10__*) #1

declare dso_local i32 @expr_invariant_in_loop_p(%struct.loop*, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local %struct.TYPE_11__** @get_loop_body(%struct.loop*) #1

declare dso_local i32 @free(%struct.TYPE_11__**) #1

declare dso_local i32 @bsi_start(%struct.TYPE_11__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @ZERO_SSA_OPERANDS(i64, i32) #1

declare dso_local %struct.TYPE_12__* @stmt_ann(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @get_call_expr_in(i64) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i32 @ASM_VOLATILE_P(i64) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
