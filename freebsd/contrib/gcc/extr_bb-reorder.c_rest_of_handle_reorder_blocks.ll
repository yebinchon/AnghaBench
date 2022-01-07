; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_rest_of_handle_reorder_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_rest_of_handle_reorder_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAVE_conditional_execution = common dso_local global i64 0, align 8
@CLEANUP_UPDATE_LIFE = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@flag_sched2_use_traces = common dso_local global i64 0, align 8
@flag_schedule_insns_after_reload = common dso_local global i64 0, align 8
@TV_TRACER = common dso_local global i32 0, align 4
@flag_reorder_blocks = common dso_local global i64 0, align 8
@flag_reorder_blocks_and_partition = common dso_local global i64 0, align 8
@UPDATE_LIFE_GLOBAL_RM_NOTES = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_reorder_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_reorder_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @HAVE_conditional_execution, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @CLEANUP_UPDATE_LIFE, align 4
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %7 ]
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @cleanup_cfg(i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i64, i64* @flag_sched2_use_traces, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load i64, i64* @flag_schedule_insns_after_reload, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @TV_TRACER, align 4
  %21 = call i32 @timevar_push(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @tracer(i32 %22)
  %24 = load i32, i32* @TV_TRACER, align 4
  %25 = call i32 @timevar_pop(i32 %24)
  br label %26

26:                                               ; preds = %19, %16, %8
  %27 = load i64, i64* @flag_reorder_blocks, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @reorder_basic_blocks(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* @flag_reorder_blocks, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @flag_reorder_blocks_and_partition, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @flag_sched2_use_traces, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i64, i64* @flag_schedule_insns_after_reload, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %38, %35
  %48 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %49 = load i32, i32* %2, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @cleanup_cfg(i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %47, %44, %41
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64, i64* @HAVE_conditional_execution, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @UPDATE_LIFE_GLOBAL_RM_NOTES, align 4
  %62 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %63 = call i32 @update_life_info(i32* null, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57, %54
  %65 = call i32 (...) @insert_section_boundary_note()
  ret i32 0
}

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @tracer(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @reorder_basic_blocks(i32) #1

declare dso_local i32 @update_life_info(i32*, i32, i32) #1

declare dso_local i32 @insert_section_boundary_note(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
