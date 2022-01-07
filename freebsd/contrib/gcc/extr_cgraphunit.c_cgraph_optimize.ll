; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_optimize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.TYPE_2__, i64, %struct.cgraph_node* }
%struct.TYPE_2__ = type { i64 }

@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@flag_unit_at_a_time = common dso_local global i64 0, align 8
@TV_CGRAPHOPT = common dso_local global i32 0, align 4
@quiet_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Performing interprocedural optimizations\0A\00", align 1
@cgraph_dump_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Marked \00", align 1
@dump_file = common dso_local global i32 0, align 4
@cgraph_global_info_ready = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Optimized \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Assembling functions:\0A\00", align 1
@flag_toplevel_reorder = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"\0AFinal \00", align 1
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_optimize() #0 {
  %1 = load i64, i64* @errorcount, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @sorrycount, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %81

7:                                                ; preds = %3
  %8 = load i64, i64* @flag_unit_at_a_time, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = call i32 (...) @cgraph_output_pending_asms()
  %12 = call i32 (...) @cgraph_varpool_assemble_pending_decls()
  %13 = call i32 (...) @cgraph_varpool_output_debug_info()
  br label %81

14:                                               ; preds = %7
  %15 = call i32 (...) @cgraph_varpool_analyze_pending_decls()
  %16 = load i32, i32* @TV_CGRAPHOPT, align 4
  %17 = call i32 @timevar_push(i32 %16)
  %18 = load i32, i32* @quiet_flag, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* @stderr, align 8
  %22 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %14
  %24 = call i32 (...) @cgraph_function_and_variable_visibility()
  %25 = load i64, i64* @cgraph_dump_file, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* @cgraph_dump_file, align 8
  %29 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @cgraph_dump_file, align 8
  %31 = call i32 @dump_cgraph(i64 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i64, i64* @errorcount, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* @sorrycount, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @ipa_passes()
  br label %40

40:                                               ; preds = %38, %35, %32
  %41 = load i32, i32* @dump_file, align 4
  %42 = call i32 @cgraph_remove_unreachable_nodes(i32 0, i32 %41)
  %43 = call i32 (...) @cgraph_increase_alignment()
  store i32 1, i32* @cgraph_global_info_ready, align 4
  %44 = load i64, i64* @cgraph_dump_file, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* @cgraph_dump_file, align 8
  %48 = call i32 @fprintf(i64 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @cgraph_dump_file, align 8
  %50 = call i32 @dump_cgraph(i64 %49)
  %51 = load i64, i64* @cgraph_dump_file, align 8
  %52 = call i32 @dump_varpool(i64 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i32, i32* @TV_CGRAPHOPT, align 4
  %55 = call i32 @timevar_pop(i32 %54)
  %56 = load i32, i32* @quiet_flag, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @stderr, align 8
  %60 = call i32 @fprintf(i64 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = call i32 (...) @cgraph_mark_functions_to_output()
  %63 = load i32, i32* @flag_toplevel_reorder, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 (...) @cgraph_output_in_order()
  br label %73

67:                                               ; preds = %61
  %68 = call i32 (...) @cgraph_output_pending_asms()
  %69 = call i32 (...) @cgraph_expand_all_functions()
  %70 = call i32 (...) @cgraph_varpool_remove_unreferenced_decls()
  %71 = call i32 (...) @cgraph_varpool_assemble_pending_decls()
  %72 = call i32 (...) @cgraph_varpool_output_debug_info()
  br label %73

73:                                               ; preds = %67, %65
  %74 = load i64, i64* @cgraph_dump_file, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i64, i64* @cgraph_dump_file, align 8
  %78 = call i32 @fprintf(i64 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i64, i64* @cgraph_dump_file, align 8
  %80 = call i32 @dump_cgraph(i64 %79)
  br label %81

81:                                               ; preds = %6, %10, %76, %73
  ret void
}

declare dso_local i32 @cgraph_output_pending_asms(...) #1

declare dso_local i32 @cgraph_varpool_assemble_pending_decls(...) #1

declare dso_local i32 @cgraph_varpool_output_debug_info(...) #1

declare dso_local i32 @cgraph_varpool_analyze_pending_decls(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @cgraph_function_and_variable_visibility(...) #1

declare dso_local i32 @dump_cgraph(i64) #1

declare dso_local i32 @ipa_passes(...) #1

declare dso_local i32 @cgraph_remove_unreachable_nodes(i32, i32) #1

declare dso_local i32 @cgraph_increase_alignment(...) #1

declare dso_local i32 @dump_varpool(i64) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @cgraph_mark_functions_to_output(...) #1

declare dso_local i32 @cgraph_output_in_order(...) #1

declare dso_local i32 @cgraph_expand_all_functions(...) #1

declare dso_local i32 @cgraph_varpool_remove_unreferenced_decls(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
