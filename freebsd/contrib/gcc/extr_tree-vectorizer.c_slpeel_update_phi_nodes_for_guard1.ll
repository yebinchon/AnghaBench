; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phi_nodes_for_guard1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phi_nodes_for_guard1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.loop = type { %struct.TYPE_8__*, i32, i32, i32 }

@vect_vnames_to_rename = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.loop*, i32, i32*, i32*)* @slpeel_update_phi_nodes_for_guard1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slpeel_update_phi_nodes_for_guard1(%struct.TYPE_8__* %0, %struct.loop* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.loop* %1, %struct.loop** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call %struct.TYPE_8__* @EDGE_SUCC(i32 %27, i32 0)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %18, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.loop*, %struct.loop** %7, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %20, align 4
  %35 = load %struct.loop*, %struct.loop** %7, align 8
  %36 = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @split_edge(%struct.TYPE_8__* %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.loop*, %struct.loop** %7, align 8
  %43 = getelementptr inbounds %struct.loop, %struct.loop* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @add_bb_to_loop(i32 %41, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_8__* @EDGE_SUCC(i32 %47, i32 0)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %21, align 8
  %49 = load i32, i32* %20, align 4
  %50 = call i64 @phi_nodes(i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %19, align 4
  %52 = call i64 @phi_nodes(i32 %51)
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %173, %5
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %178

61:                                               ; preds = %59
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @PHI_RESULT(i64 %62)
  store i64 %63, i64* %23, align 8
  %64 = load i64, i64* %23, align 8
  %65 = call i32 @SSA_NAME_VAR(i64 %64)
  %66 = call i32 @is_gimple_reg(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @vect_vnames_to_rename, align 4
  %70 = load i64, i64* %23, align 8
  %71 = call i32 @SSA_NAME_VERSION(i64 %70)
  %72 = call i32 @bitmap_set_bit(i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @PHI_RESULT(i64 %74)
  %76 = call i32 @SSA_NAME_VAR(i64 %75)
  %77 = load i32, i32* %17, align 4
  %78 = call i64 @create_phi_node(i32 %76, i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.loop*, %struct.loop** %7, align 8
  %81 = getelementptr inbounds %struct.loop, %struct.loop* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_8__* @EDGE_SUCC(i32 %82, i32 0)
  %84 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %79, %struct.TYPE_8__* %83)
  store i64 %84, i64* %16, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.loop*, %struct.loop** %7, align 8
  %87 = call %struct.TYPE_8__* @loop_preheader_edge(%struct.loop* %86)
  %88 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %85, %struct.TYPE_8__* %87)
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %92 = call i32 @add_phi_arg(i64 %89, i64 %90, %struct.TYPE_8__* %91)
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = call i32 @add_phi_arg(i64 %93, i64 %94, %struct.TYPE_8__* %95)
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %99 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %97, %struct.TYPE_8__* %98)
  %100 = load i64, i64* %16, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %73
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %105 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %103, %struct.TYPE_8__* %104)
  %106 = load i64, i64* %15, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %102, %73
  %109 = phi i1 [ true, %73 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @gcc_assert(i32 %110)
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @PHI_RESULT(i64 %116)
  %118 = call i32 @SET_PHI_ARG_DEF(i64 %112, i32 %115, i64 %117)
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i64 @PHI_RESULT(i64 %120)
  %122 = call i32 @SSA_NAME_VAR(i64 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @create_phi_node(i32 %122, i32 %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.loop*, %struct.loop** %7, align 8
  %129 = getelementptr inbounds %struct.loop, %struct.loop* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = call i32 @add_phi_arg(i64 %126, i64 %127, %struct.TYPE_8__* %130)
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %134 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %132, %struct.TYPE_8__* %133)
  %135 = load i64, i64* %16, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @gcc_assert(i32 %137)
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %12, align 8
  %144 = call i64 @PHI_RESULT(i64 %143)
  %145 = call i32 @SET_PHI_ARG_DEF(i64 %139, i32 %142, i64 %144)
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %108
  %149 = load i64, i64* %16, align 8
  store i64 %149, i64* %22, align 8
  br label %157

150:                                              ; preds = %108
  %151 = load i64, i64* %16, align 8
  %152 = call i64 @get_current_def(i64 %151)
  store i64 %152, i64* %22, align 8
  %153 = load i64, i64* %22, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %173

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %148
  %158 = load i64, i64* %22, align 8
  %159 = call i64 @get_current_def(i64 %158)
  %160 = load i64, i64* @NULL_TREE, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @gcc_assert(i32 %162)
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %12, align 8
  %166 = call i64 @PHI_RESULT(i64 %165)
  %167 = call i32 @set_current_def(i64 %164, i64 %166)
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %22, align 8
  %171 = call i32 @SSA_NAME_VERSION(i64 %170)
  %172 = call i32 @bitmap_set_bit(i32 %169, i32 %171)
  br label %173

173:                                              ; preds = %157, %155
  %174 = load i64, i64* %11, align 8
  %175 = call i64 @PHI_CHAIN(i64 %174)
  store i64 %175, i64* %11, align 8
  %176 = load i64, i64* %13, align 8
  %177 = call i64 @PHI_CHAIN(i64 %176)
  store i64 %177, i64* %13, align 8
  br label %53

178:                                              ; preds = %59
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %17, align 4
  %181 = call i64 @phi_nodes(i32 %180)
  %182 = call i32 @phi_reverse(i64 %181)
  %183 = call i32 @set_phi_nodes(i32 %179, i32 %182)
  ret void
}

declare dso_local %struct.TYPE_8__* @EDGE_SUCC(i32, i32) #1

declare dso_local i32 @split_edge(%struct.TYPE_8__*) #1

declare dso_local i32 @add_bb_to_loop(i32, i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i64) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i64 @create_phi_node(i32, i32) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @add_phi_arg(i64, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_PHI_ARG_DEF(i64, i32, i64) #1

declare dso_local i64 @get_current_def(i64) #1

declare dso_local i32 @set_current_def(i64, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @set_phi_nodes(i32, i32) #1

declare dso_local i32 @phi_reverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
