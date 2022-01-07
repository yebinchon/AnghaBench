; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_tracking_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_tracking_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_basic_blocks = common dso_local global i32 0, align 4
@n_edges = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @variable_tracking_main() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %3 = icmp sgt i32 %2, 500
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @n_edges, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %7 = sdiv i32 %5, %6
  %8 = icmp sge i32 %7, 20
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %38

10:                                               ; preds = %4, %0
  %11 = call i32 (...) @mark_dfs_back_edges()
  %12 = call i32 (...) @vt_initialize()
  %13 = load i32, i32* @frame_pointer_needed, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = call i32 (...) @vt_stack_adjustments()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (...) @vt_finalize()
  store i32 0, i32* %1, align 4
  br label %38

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %10
  %22 = call i32 (...) @vt_find_locations()
  %23 = call i32 (...) @vt_emit_notes()
  %24 = load i64, i64* @dump_file, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @dump_flags, align 4
  %28 = load i32, i32* @TDF_DETAILS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = call i32 (...) @dump_dataflow_sets()
  %33 = load i64, i64* @dump_file, align 8
  %34 = load i32, i32* @dump_flags, align 4
  %35 = call i32 @dump_flow_info(i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26, %21
  %37 = call i32 (...) @vt_finalize()
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %18, %9
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @mark_dfs_back_edges(...) #1

declare dso_local i32 @vt_initialize(...) #1

declare dso_local i32 @vt_stack_adjustments(...) #1

declare dso_local i32 @vt_finalize(...) #1

declare dso_local i32 @vt_find_locations(...) #1

declare dso_local i32 @vt_emit_notes(...) #1

declare dso_local i32 @dump_dataflow_sets(...) #1

declare dso_local i32 @dump_flow_info(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
