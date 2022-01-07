; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_merge_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_merge_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32* }
%struct.TYPE_14__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Merging blocks %d and %d\0A\00", align 1
@current_loops = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@BSI_NEW_STMT = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i64 0, align 8
@TSI_NEW_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_13__*)* @tree_merge_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_merge_blocks(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %15 = load i64, i64* @dump_file, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i64, i64* @dump_file, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @fprintf(i64 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32 @bsi_last(%struct.TYPE_13__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i64 @phi_nodes(%struct.TYPE_13__* %29)
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %88, %26
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @PHI_RESULT(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @PHI_ARG_DEF(i64 %37, i32 0)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @may_propagate_copy(i64 %39, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* @current_loops, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %34
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @is_gimple_reg(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @SSA_NAME, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %53, %48, %44, %34
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @is_gimple_reg(i64 %66)
  %68 = call i32 @gcc_assert(i32 %67)
  %69 = load i32, i32* @MODIFY_EXPR, align 4
  %70 = load i32, i32* @void_type_node, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @build2(i32 %69, i32 %70, i64 %71, i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @BSI_NEW_STMT, align 4
  %76 = call i32 @bsi_insert_after(i32* %5, i64 %74, i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* @NULL_TREE, align 4
  %79 = call i32 @SET_PHI_RESULT(i64 %77, i32 %78)
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %12, align 8
  br label %85

81:                                               ; preds = %62
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @replace_uses_by(i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %65
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @remove_phi_node(i64 %86, i32* null)
  br label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = call i64 @phi_nodes(%struct.TYPE_13__* %89)
  store i64 %90, i64* %7, align 8
  br label %31

91:                                               ; preds = %31
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i32 @move_block_after(%struct.TYPE_13__* %92, %struct.TYPE_13__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = call %struct.TYPE_14__* @single_succ_edge(%struct.TYPE_13__* %95)
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EDGE_FALLTHRU, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @gcc_assert(i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = call i32 @last_stmt(%struct.TYPE_13__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = call i32 @last_stmt(%struct.TYPE_13__* %106)
  %108 = call i32 @stmt_ends_bb_p(i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %105, %91
  %112 = phi i1 [ true, %91 ], [ %110, %105 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @gcc_assert(i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = call i32 @bsi_start(%struct.TYPE_13__* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %149, %111
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @bsi_end_p(i32 %118)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %150

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @bsi_stmt(i32 %123)
  %125 = call i64 @TREE_CODE(i64 %124)
  %126 = load i64, i64* @LABEL_EXPR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @bsi_stmt(i32 %129)
  store i64 %130, i64* %13, align 8
  %131 = call i32 @bsi_remove(i32* %5, i32 0)
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @LABEL_EXPR_LABEL(i64 %132)
  %134 = call i64 @FORCED_LABEL(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = call i32 @bsi_start(%struct.TYPE_13__* %137)
  store i32 %138, i32* %14, align 4
  %139 = load i64, i64* %13, align 8
  %140 = load i32, i32* @BSI_NEW_STMT, align 4
  %141 = call i32 @bsi_insert_before(i32* %14, i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %128
  br label %149

143:                                              ; preds = %122
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @bsi_stmt(i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = call i32 @change_bb_for_stmt(i64 %145, %struct.TYPE_13__* %146)
  %148 = call i32 @bsi_next(i32* %5)
  br label %149

149:                                              ; preds = %143, %142
  br label %117

150:                                              ; preds = %117
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @tsi_last(i32* %153)
  store i32 %154, i32* %6, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @TSI_NEW_STMT, align 4
  %159 = call i32 @tsi_link_after(i32* %6, i32* %157, i32 %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  store i32* null, i32** %161, align 8
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @bsi_last(%struct.TYPE_13__*) #1

declare dso_local i64 @phi_nodes(%struct.TYPE_13__*) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i32 @may_propagate_copy(i64, i64) #1

declare dso_local i32 @is_gimple_reg(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @bsi_insert_after(i32*, i64, i32) #1

declare dso_local i32 @SET_PHI_RESULT(i64, i32) #1

declare dso_local i32 @replace_uses_by(i64, i64) #1

declare dso_local i32 @remove_phi_node(i64, i32*) #1

declare dso_local i32 @move_block_after(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @single_succ_edge(%struct.TYPE_13__*) #1

declare dso_local i32 @last_stmt(%struct.TYPE_13__*) #1

declare dso_local i32 @stmt_ends_bb_p(i32) #1

declare dso_local i32 @bsi_start(%struct.TYPE_13__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i64 @FORCED_LABEL(i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i64) #1

declare dso_local i32 @bsi_insert_before(i32*, i64, i32) #1

declare dso_local i32 @change_bb_for_stmt(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @tsi_last(i32*) #1

declare dso_local i32 @tsi_link_after(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
