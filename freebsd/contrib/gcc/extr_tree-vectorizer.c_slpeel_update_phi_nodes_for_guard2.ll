; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phi_nodes_for_guard2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phi_nodes_for_guard2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.loop = type { %struct.TYPE_17__*, i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.loop*, i32, %struct.TYPE_18__**)* @slpeel_update_phi_nodes_for_guard2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slpeel_update_phi_nodes_for_guard2(%struct.TYPE_17__* %0, %struct.loop* %1, i32 %2, %struct.TYPE_18__** %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_18__** %3, %struct.TYPE_18__*** %8, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %15, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %28 = call %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_18__* %27, i32 0)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %16, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %17, align 8
  %32 = load %struct.loop*, %struct.loop** %6, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = call %struct.TYPE_18__* @split_edge(%struct.TYPE_17__* %34)
  %36 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %36, align 8
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = load %struct.loop*, %struct.loop** %6, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @add_bb_to_loop(%struct.TYPE_18__* %38, i32 %41)
  %43 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = call %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_18__* %44, i32 0)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %18, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %47 = call i64 @phi_nodes(%struct.TYPE_18__* %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %185, %4
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %188

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %55 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %53, %struct.TYPE_17__* %54)
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %19, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @SSA_NAME, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %185

61:                                               ; preds = %51
  %62 = load i64, i64* %19, align 8
  %63 = call i64 @get_current_def(i64 %62)
  store i64 %63, i64* %20, align 8
  %64 = load i64, i64* @NULL_TREE, align 8
  store i64 %64, i64* %23, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @PHI_RESULT(i64 %65)
  %67 = call i32 @SSA_NAME_VAR(i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %69 = call i64 @create_phi_node(i32 %67, %struct.TYPE_18__* %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %19, align 8
  store i64 %70, i64* %21, align 8
  %71 = load i64, i64* @NULL_TREE, align 8
  store i64 %71, i64* %22, align 8
  %72 = load i64, i64* %20, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load i64, i64* %20, align 8
  store i64 %75, i64* %21, align 8
  %76 = load i64, i64* %21, align 8
  %77 = call i64 @get_current_def(i64 %76)
  store i64 %77, i64* %22, align 8
  br label %78

78:                                               ; preds = %74, %61
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %19, align 8
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %21, align 8
  store i64 %83, i64* %14, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load i64, i64* %21, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %19, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* %22, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i64, i64* %22, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %96 = call i32 @add_phi_arg(i64 %93, i64 %94, %struct.TYPE_17__* %95)
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = call i32 @add_phi_arg(i64 %97, i64 %98, %struct.TYPE_17__* %99)
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %103 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %101, %struct.TYPE_17__* %102)
  %104 = load i64, i64* %19, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @gcc_assert(i32 %106)
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @PHI_RESULT(i64 %112)
  %114 = call i32 @SET_PHI_ARG_DEF(i64 %108, i32 %111, i32 %113)
  %115 = load i64, i64* %10, align 8
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @PHI_RESULT(i64 %116)
  %118 = call i32 @SSA_NAME_VAR(i32 %117)
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = call i64 @create_phi_node(i32 %118, %struct.TYPE_18__* %120)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.loop*, %struct.loop** %6, align 8
  %125 = getelementptr inbounds %struct.loop, %struct.loop* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = call i32 @add_phi_arg(i64 %122, i64 %123, %struct.TYPE_17__* %126)
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %130 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %128, %struct.TYPE_17__* %129)
  %131 = load i64, i64* %14, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @gcc_assert(i32 %133)
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @PHI_RESULT(i64 %139)
  %141 = call i32 @SET_PHI_ARG_DEF(i64 %135, i32 %138, i32 %140)
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* %22, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %92
  br label %185

146:                                              ; preds = %92
  %147 = load i64, i64* %13, align 8
  store i64 %147, i64* %23, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @PHI_RESULT(i64 %148)
  %150 = call i32 @SSA_NAME_VAR(i32 %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = call i64 @create_phi_node(i32 %150, %struct.TYPE_18__* %153)
  store i64 %154, i64* %10, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @EDGE_COUNT(i32 %159)
  %161 = icmp eq i32 %160, 1
  %162 = zext i1 %161 to i32
  %163 = call i32 @gcc_assert(i32 %162)
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %23, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = call %struct.TYPE_17__* @EDGE_PRED(%struct.TYPE_18__* %168, i32 0)
  %170 = call i32 @add_phi_arg(i64 %164, i64 %165, %struct.TYPE_17__* %169)
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %171, %struct.TYPE_17__* %172)
  %174 = load i64, i64* %13, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @gcc_assert(i32 %176)
  %178 = load i64, i64* %12, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @PHI_RESULT(i64 %182)
  %184 = call i32 @SET_PHI_ARG_DEF(i64 %178, i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %146, %145, %60
  %186 = load i64, i64* %11, align 8
  %187 = call i64 @PHI_CHAIN(i64 %186)
  store i64 %187, i64* %11, align 8
  br label %48

188:                                              ; preds = %48
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %191 = call i64 @phi_nodes(%struct.TYPE_18__* %190)
  %192 = call i32 @phi_reverse(i64 %191)
  %193 = call i32 @set_phi_nodes(%struct.TYPE_18__* %189, i32 %192)
  ret void
}

declare dso_local %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @split_edge(%struct.TYPE_17__*) #1

declare dso_local i32 @add_bb_to_loop(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @phi_nodes(%struct.TYPE_18__*) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_17__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_current_def(i64) #1

declare dso_local i64 @create_phi_node(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i32 @add_phi_arg(i64, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_PHI_ARG_DEF(i64, i32, i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_17__* @EDGE_PRED(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @set_phi_nodes(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @phi_reverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
