; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_4__ = type { %struct.loop* }

@VECTOR_TYPE = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@chrec_not_analyzed_yet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32)* @analyze_scalar_evolution_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_scalar_evolution_1(%struct.loop* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.loop*, %struct.loop** %5, align 8
  %15 = icmp eq %struct.loop* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @TREE_CODE(i32 %17)
  %19 = load i32, i32* @VECTOR_TYPE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @chrec_dont_know, align 4
  store i32 %22, i32* %4, align 4
  br label %150

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @TREE_CODE(i32 %24)
  %26 = load i32, i32* @SSA_NAME, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.loop*, %struct.loop** %5, align 8
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @interpret_rhs_modify_expr(%struct.loop* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %150

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SSA_NAME_DEF_STMT(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.TYPE_4__* @bb_for_stmt(i32 %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %10, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.loop*, %struct.loop** %43, align 8
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi %struct.loop* [ %44, %41 ], [ null, %45 ]
  store %struct.loop* %47, %struct.loop** %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.loop*, %struct.loop** %5, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = call i32 @flow_bb_inside_loop_p(%struct.loop* %51, %struct.TYPE_4__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %7, align 4
  br label %134

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @chrec_not_analyzed_yet, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load %struct.loop*, %struct.loop** %5, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.loop*, %struct.loop** %64, align 8
  %66 = icmp ne %struct.loop* %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.loop*, %struct.loop** %5, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.loop*, %struct.loop** %70, align 8
  %72 = call %struct.loop* @find_common_loop(%struct.loop* %68, %struct.loop* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.loop*, %struct.loop** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @compute_scalar_evolution_in_loop(%struct.loop* %72, %struct.loop* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %67, %61
  br label %134

79:                                               ; preds = %57
  %80 = load %struct.loop*, %struct.loop** %5, align 8
  %81 = load %struct.loop*, %struct.loop** %11, align 8
  %82 = icmp ne %struct.loop* %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.loop*, %struct.loop** %11, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @chrec_not_analyzed_yet, align 4
  %87 = call i32 @analyze_scalar_evolution_1(%struct.loop* %84, i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.loop*, %struct.loop** %5, align 8
  %89 = load %struct.loop*, %struct.loop** %11, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @compute_scalar_evolution_in_loop(%struct.loop* %88, %struct.loop* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %134

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @TREE_CODE(i32 %93)
  switch i32 %94, label %131 [
    i32 129, label %95
    i32 128, label %118
  ]

95:                                               ; preds = %92
  %96 = load %struct.loop*, %struct.loop** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @TREE_OPERAND(i32 %98, i32 1)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @interpret_rhs_modify_expr(%struct.loop* %96, i32 %97, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @POINTER_TYPE_P(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @automatically_generated_chrec_p(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pointer_used_p(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @fold_used_pointer(i32 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %109, %105, %95
  br label %133

118:                                              ; preds = %92
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @loop_phi_node_p(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.loop*, %struct.loop** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @interpret_loop_phi(%struct.loop* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  br label %130

126:                                              ; preds = %118
  %127 = load %struct.loop*, %struct.loop** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @interpret_condition_phi(%struct.loop* %127, i32 %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %133

131:                                              ; preds = %92
  %132 = load i32, i32* @chrec_dont_know, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %130, %117
  br label %134

134:                                              ; preds = %133, %83, %78, %55
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @chrec_dont_know, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = load %struct.loop*, %struct.loop** %5, align 8
  %142 = load %struct.loop*, %struct.loop** %11, align 8
  %143 = icmp eq %struct.loop* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @set_scalar_evolution(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %28, %21
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @interpret_rhs_modify_expr(%struct.loop*, i32, i32, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local %struct.TYPE_4__* @bb_for_stmt(i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, %struct.TYPE_4__*) #1

declare dso_local i32 @compute_scalar_evolution_in_loop(%struct.loop*, %struct.loop*, i32) #1

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @automatically_generated_chrec_p(i32) #1

declare dso_local i32 @pointer_used_p(i32) #1

declare dso_local i32 @fold_used_pointer(i32, i32) #1

declare dso_local i32 @loop_phi_node_p(i32) #1

declare dso_local i32 @interpret_loop_phi(%struct.loop*, i32) #1

declare dso_local i32 @interpret_condition_phi(%struct.loop*, i32) #1

declare dso_local i32 @set_scalar_evolution(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
