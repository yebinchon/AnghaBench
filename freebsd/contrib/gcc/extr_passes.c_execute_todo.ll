; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_todo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curr_properties = common dso_local global i32 0, align 4
@PROP_ssa = common dso_local global i32 0, align 4
@TODO_verify_ssa = common dso_local global i32 0, align 4
@last_verified = common dso_local global i32 0, align 4
@TODO_update_smt_usage = common dso_local global i32 0, align 4
@TODO_cleanup_cfg = common dso_local global i32 0, align 4
@updating_used_alone = common dso_local global i32 0, align 4
@current_loops = common dso_local global i64 0, align 8
@TODO_update_ssa_any = common dso_local global i32 0, align 4
@TODO_update_ssa = common dso_local global i32 0, align 4
@TODO_remove_unused_locals = common dso_local global i32 0, align 4
@TODO_dump_func = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8
@PROP_trees = common dso_local global i32 0, align 4
@dump_flags = common dso_local global i32 0, align 4
@TDF_SLIM = common dso_local global i32 0, align 4
@PROP_cfg = common dso_local global i32 0, align 4
@TDF_BLOCKS = common dso_local global i32 0, align 4
@graph_dump_format = common dso_local global i64 0, align 8
@no_graph = common dso_local global i64 0, align 8
@TDF_GRAPH = common dso_local global i32 0, align 4
@dump_file_name = common dso_local global i32 0, align 4
@TODO_dump_cgraph = common dso_local global i32 0, align 4
@TODO_ggc_collect = common dso_local global i32 0, align 4
@TODO_verify_all = common dso_local global i32 0, align 4
@TODO_verify_flow = common dso_local global i32 0, align 4
@TODO_verify_loops = common dso_local global i32 0, align 4
@TODO_verify_stmts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @execute_todo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_todo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @curr_properties, align 4
  %5 = load i32, i32* @PROP_ssa, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @TODO_verify_ssa, align 4
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @last_verified, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %174

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @TODO_update_smt_usage, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @recalculate_used_alone()
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @TODO_cleanup_cfg, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  store i32 1, i32* @updating_used_alone, align 4
  %33 = load i64, i64* @current_loops, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @cleanup_tree_cfg_loop()
  br label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @cleanup_tree_cfg()
  br label %39

39:                                               ; preds = %37, %35
  %40 = call i32 (...) @recalculate_used_alone()
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @TODO_update_ssa_any, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = call i64 (...) @need_ssa_update_p()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @TODO_update_ssa, align 4
  %50 = load i32, i32* %2, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %45, %39
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @TODO_update_ssa_any, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @TODO_update_ssa_any, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @update_ssa(i32 %62)
  %64 = load i32, i32* @TODO_verify_ssa, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @last_verified, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @last_verified, align 4
  br label %68

68:                                               ; preds = %58, %53
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @TODO_remove_unused_locals, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (...) @remove_unused_locals()
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @TODO_dump_func, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %147

80:                                               ; preds = %75
  %81 = load i64, i64* @dump_file, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %147

83:                                               ; preds = %80
  %84 = load i64, i64* @current_function_decl, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %147

86:                                               ; preds = %83
  %87 = load i32, i32* @curr_properties, align 4
  %88 = load i32, i32* @PROP_trees, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i64, i64* @current_function_decl, align 8
  %93 = load i64, i64* @dump_file, align 8
  %94 = load i32, i32* @dump_flags, align 4
  %95 = call i32 @dump_function_to_file(i64 %92, i64 %93, i32 %94)
  br label %144

96:                                               ; preds = %86
  %97 = load i32, i32* @dump_flags, align 4
  %98 = load i32, i32* @TDF_SLIM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i64, i64* @dump_file, align 8
  %103 = call i32 (...) @get_insns()
  %104 = load i32, i32* @dump_flags, align 4
  %105 = call i32 @print_rtl_slim_with_bb(i64 %102, i32 %103, i32 %104)
  br label %125

106:                                              ; preds = %96
  %107 = load i32, i32* @curr_properties, align 4
  %108 = load i32, i32* @PROP_cfg, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i32, i32* @dump_flags, align 4
  %113 = load i32, i32* @TDF_BLOCKS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i64, i64* @dump_file, align 8
  %118 = call i32 (...) @get_insns()
  %119 = call i32 @print_rtl_with_bb(i64 %117, i32 %118)
  br label %124

120:                                              ; preds = %111, %106
  %121 = load i64, i64* @dump_file, align 8
  %122 = call i32 (...) @get_insns()
  %123 = call i32 @print_rtl(i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* @curr_properties, align 4
  %127 = load i32, i32* @PROP_cfg, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load i64, i64* @graph_dump_format, align 8
  %132 = load i64, i64* @no_graph, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* @dump_flags, align 4
  %136 = load i32, i32* @TDF_GRAPH, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @dump_file_name, align 4
  %141 = call i32 (...) @get_insns()
  %142 = call i32 @print_rtl_graph_with_bb(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %134, %130, %125
  br label %144

144:                                              ; preds = %143, %91
  %145 = load i64, i64* @dump_file, align 8
  %146 = call i32 @fflush(i64 %145)
  br label %147

147:                                              ; preds = %144, %83, %80, %75
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @TODO_dump_cgraph, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load i64, i64* @dump_file, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i64, i64* @current_function_decl, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = load i64, i64* @dump_file, align 8
  %160 = call i32 @dump_cgraph(i64 %159)
  %161 = load i64, i64* @dump_file, align 8
  %162 = call i32 @fflush(i64 %161)
  br label %163

163:                                              ; preds = %158, %155, %152, %147
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* @TODO_ggc_collect, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 (...) @ggc_collect()
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i32, i32* %2, align 4
  %172 = load i32, i32* @TODO_verify_all, align 4
  %173 = and i32 %171, %172
  store i32 %173, i32* @last_verified, align 4
  br label %174

174:                                              ; preds = %170, %19
  ret void
}

declare dso_local i32 @recalculate_used_alone(...) #1

declare dso_local i32 @cleanup_tree_cfg_loop(...) #1

declare dso_local i32 @cleanup_tree_cfg(...) #1

declare dso_local i64 @need_ssa_update_p(...) #1

declare dso_local i32 @update_ssa(i32) #1

declare dso_local i32 @remove_unused_locals(...) #1

declare dso_local i32 @dump_function_to_file(i64, i64, i32) #1

declare dso_local i32 @print_rtl_slim_with_bb(i64, i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @print_rtl_with_bb(i64, i32) #1

declare dso_local i32 @print_rtl(i64, i32) #1

declare dso_local i32 @print_rtl_graph_with_bb(i32, i32) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @dump_cgraph(i64) #1

declare dso_local i32 @ggc_collect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
