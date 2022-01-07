; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_find_phi_replacement_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_find_phi_replacement_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i64 }

@TRUTH_NOT_EXPR = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.loop*, %struct.TYPE_10__*, i32*, i32*)* @find_phi_replacement_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @find_phi_replacement_condition(%struct.loop* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EDGE_COUNT(i32 %17)
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call %struct.TYPE_9__* @EDGE_PRED(%struct.TYPE_10__* %22, i32 0)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call %struct.TYPE_9__* @EDGE_PRED(%struct.TYPE_10__* %24, i32 1)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @TRUTH_NOT_EXPR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %13, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %10, align 8
  br label %39

39:                                               ; preds = %35, %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.loop*, %struct.loop** %5, align 8
  %44 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp eq %struct.TYPE_10__* %42, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @CDI_DOMINATORS, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i64 @dominated_by_p(i32 %48, %struct.TYPE_10__* %51, %struct.TYPE_10__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %47, %39
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %70 = load i32, i32* @boolean_type_node, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @build2(i32 %69, i32 %70, i32 %72, i64 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %57
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @TREE_CODE(i32 %80)
  %82 = load i64, i64* @TRUTH_NOT_EXPR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @invert_truthvalue(i32 %86)
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %78
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %9, align 8
  br label %91

91:                                               ; preds = %89, %84
  br label %114

92:                                               ; preds = %47
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %105 = load i32, i32* @boolean_type_node, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @build2(i32 %104, i32 %105, i32 %107, i64 %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %92
  br label %114

114:                                              ; preds = %113, %91
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @unshare_expr(i32 %116)
  %118 = load i32, i32* @NULL_TREE, align 4
  %119 = call i32 @force_gimple_operand(i32 %117, i32* %12, i32 0, i32 %118)
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @BSI_SAME_STMT, align 4
  %127 = call i32 @bsi_insert_before(i32* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %114
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @is_gimple_reg(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @is_gimple_condexpr(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %133
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @TREE_TYPE(i32 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @unshare_expr(i32 %143)
  %145 = call i32 @ifc_temp_var(i32 %141, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @BSI_SAME_STMT, align 4
  %149 = call i32 @bsi_insert_before(i32* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @TREE_OPERAND(i32 %150, i32 0)
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %138, %133, %128
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @gcc_assert(i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  ret %struct.TYPE_10__* %159
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_9__* @EDGE_PRED(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @dominated_by_p(i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @build2(i32, i32, i32, i64) #1

declare dso_local i32 @invert_truthvalue(i32) #1

declare dso_local i32 @force_gimple_operand(i32, i32*, i32, i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @is_gimple_condexpr(i32) #1

declare dso_local i32 @ifc_temp_var(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
