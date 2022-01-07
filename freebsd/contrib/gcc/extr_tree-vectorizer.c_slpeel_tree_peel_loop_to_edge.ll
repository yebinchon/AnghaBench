; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_tree_peel_loop_to_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_tree_peel_loop_to_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64, i32 }
%struct.loops = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@UNKNOWN_LOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"tree_duplicate_loop_to_edge_cfg failed.\0A\00", align 1
@LE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loop* @slpeel_tree_peel_loop_to_edge(%struct.loop* %0, %struct.loops* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.loop*, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca %struct.loops*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.loop*, align 8
  %15 = alloca %struct.loop*, align 8
  %16 = alloca %struct.loop*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %8, align 8
  store %struct.loops* %1, %struct.loops** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.loop* null, %struct.loop** %14, align 8
  %27 = load %struct.loop*, %struct.loop** %8, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %25, align 8
  %30 = load %struct.loop*, %struct.loop** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @slpeel_can_duplicate_loop_p(%struct.loop* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %6
  store %struct.loop* null, %struct.loop** %7, align 8
  br label %162

35:                                               ; preds = %6
  %36 = call i32 (...) @tree_register_cfg_hooks()
  %37 = load %struct.loop*, %struct.loop** %8, align 8
  %38 = load %struct.loops*, %struct.loops** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call %struct.loop* @slpeel_tree_duplicate_loop_to_edge_cfg(%struct.loop* %37, %struct.loops* %38, i64 %39)
  store %struct.loop* %40, %struct.loop** %14, align 8
  %41 = icmp ne %struct.loop* %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %35
  %43 = load %struct.loop*, %struct.loop** %8, align 8
  %44 = call i64 @find_loop_location(%struct.loop* %43)
  store i64 %44, i64* %26, align 8
  %45 = load i64, i64* @dump_file, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32, i32* @dump_flags, align 4
  %49 = load i32, i32* @TDF_DETAILS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i64, i64* %26, align 8
  %54 = load i64, i64* @UNKNOWN_LOC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* @dump_file, align 8
  %58 = load i64, i64* %26, align 8
  %59 = call i8* @LOC_FILE(i64 %58)
  %60 = load i64, i64* %26, align 8
  %61 = call i32 @LOC_LINE(i64 %60)
  %62 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i64, i64* @dump_file, align 8
  %65 = call i32 (i64, i8*, ...) @fprintf(i64 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %47, %42
  store %struct.loop* null, %struct.loop** %7, align 8
  br label %162

67:                                               ; preds = %35
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %25, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.loop*, %struct.loop** %8, align 8
  store %struct.loop* %72, %struct.loop** %15, align 8
  %73 = load %struct.loop*, %struct.loop** %14, align 8
  store %struct.loop* %73, %struct.loop** %16, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.loop*, %struct.loop** %14, align 8
  store %struct.loop* %75, %struct.loop** %15, align 8
  %76 = load %struct.loop*, %struct.loop** %8, align 8
  store %struct.loop* %76, %struct.loop** %16, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = call i32 (...) @ssa_names_to_replace()
  store i32 %78, i32* %19, align 4
  %79 = load %struct.loop*, %struct.loop** %8, align 8
  %80 = load %struct.loop*, %struct.loop** %14, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %25, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @slpeel_update_phis_for_duplicate_loop(%struct.loop* %79, %struct.loop* %80, i32 %84)
  %86 = load %struct.loop*, %struct.loop** %14, align 8
  %87 = call i32 @rename_variables_in_loop(%struct.loop* %86)
  %88 = load %struct.loop*, %struct.loop** %15, align 8
  %89 = call i64 @loop_preheader_edge(%struct.loop* %88)
  %90 = call i32 @split_edge(i64 %89)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load %struct.loop*, %struct.loop** %15, align 8
  %93 = getelementptr inbounds %struct.loop, %struct.loop* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @add_bb_to_loop(i32 %91, i32 %94)
  %96 = load %struct.loop*, %struct.loop** %15, align 8
  %97 = getelementptr inbounds %struct.loop, %struct.loop* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @split_edge(i64 %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load %struct.loop*, %struct.loop** %15, align 8
  %102 = getelementptr inbounds %struct.loop, %struct.loop* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @add_bb_to_loop(i32 %100, i32 %103)
  %105 = load i32, i32* @LE_EXPR, align 4
  %106 = load i32, i32* @boolean_type_node, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @TREE_TYPE(i32 %108)
  %110 = call i32 @build_int_cst(i32 %109, i32 0)
  %111 = call i32 @fold_build2(i32 %105, i32 %106, i32 %107, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %22, align 4
  %116 = call i64 @slpeel_add_loop_guard(i32 %112, i32 %113, i32 %114, i32 %115)
  store i64 %116, i64* %17, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.loop*, %struct.loop** %15, align 8
  %119 = load %struct.loop*, %struct.loop** %15, align 8
  %120 = load %struct.loop*, %struct.loop** %14, align 8
  %121 = icmp eq %struct.loop* %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @slpeel_update_phi_nodes_for_guard1(i64 %117, %struct.loop* %118, i32 %122, i32* %24, i32* %19)
  %124 = load i32, i32* %24, align 4
  store i32 %124, i32* %23, align 4
  %125 = load %struct.loop*, %struct.loop** %16, align 8
  %126 = getelementptr inbounds %struct.loop, %struct.loop* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @split_edge(i64 %127)
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.loop*, %struct.loop** %16, align 8
  %131 = getelementptr inbounds %struct.loop, %struct.loop* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @add_bb_to_loop(i32 %129, i32 %132)
  %134 = load i32, i32* @EQ_EXPR, align 4
  %135 = load i32, i32* @boolean_type_node, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @fold_build2(i32 %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %22, align 4
  %143 = call i64 @slpeel_add_loop_guard(i32 %139, i32 %140, i32 %141, i32 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load %struct.loop*, %struct.loop** %16, align 8
  %146 = load %struct.loop*, %struct.loop** %16, align 8
  %147 = load %struct.loop*, %struct.loop** %14, align 8
  %148 = icmp eq %struct.loop* %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @slpeel_update_phi_nodes_for_guard2(i64 %144, %struct.loop* %145, i32 %149, i32* %24)
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %77
  %154 = load %struct.loop*, %struct.loop** %15, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @slpeel_make_loop_iterate_ntimes(%struct.loop* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %77
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @BITMAP_FREE(i32 %158)
  %160 = call i32 (...) @delete_update_ssa()
  %161 = load %struct.loop*, %struct.loop** %14, align 8
  store %struct.loop* %161, %struct.loop** %7, align 8
  br label %162

162:                                              ; preds = %157, %66, %34
  %163 = load %struct.loop*, %struct.loop** %7, align 8
  ret %struct.loop* %163
}

declare dso_local i32 @slpeel_can_duplicate_loop_p(%struct.loop*, i64) #1

declare dso_local i32 @tree_register_cfg_hooks(...) #1

declare dso_local %struct.loop* @slpeel_tree_duplicate_loop_to_edge_cfg(%struct.loop*, %struct.loops*, i64) #1

declare dso_local i64 @find_loop_location(%struct.loop*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @LOC_FILE(i64) #1

declare dso_local i32 @LOC_LINE(i64) #1

declare dso_local i32 @ssa_names_to_replace(...) #1

declare dso_local i32 @slpeel_update_phis_for_duplicate_loop(%struct.loop*, %struct.loop*, i32) #1

declare dso_local i32 @rename_variables_in_loop(%struct.loop*) #1

declare dso_local i32 @split_edge(i64) #1

declare dso_local i64 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @add_bb_to_loop(i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @slpeel_add_loop_guard(i32, i32, i32, i32) #1

declare dso_local i32 @slpeel_update_phi_nodes_for_guard1(i64, %struct.loop*, i32, i32*, i32*) #1

declare dso_local i32 @slpeel_update_phi_nodes_for_guard2(i64, %struct.loop*, i32, i32*) #1

declare dso_local i32 @slpeel_make_loop_iterate_ntimes(%struct.loop*, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @delete_update_ssa(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
