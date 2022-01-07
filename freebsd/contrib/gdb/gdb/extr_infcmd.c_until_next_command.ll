; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_until_next_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_until_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab_and_line = type { i32 }
%struct.minimal_symbol = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Execution is not within a known function.\00", align 1
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@STEP_OVER_ALL = common dso_local global i32 0, align 4
@step_over_calls = common dso_local global i32 0, align 4
@step_frame_id = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@step_multi = common dso_local global i64 0, align 8
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @until_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @until_next_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.symtab_and_line, align 4
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca %struct.symtab_and_line, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 (...) @clear_proceed_status()
  %10 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %10, %struct.frame_info** %3, align 8
  %11 = call i32 (...) @read_pc()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.symbol* @find_pc_function(i32 %12)
  store %struct.symbol* %13, %struct.symbol** %5, align 8
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = icmp ne %struct.symbol* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %17)
  store %struct.minimal_symbol* %18, %struct.minimal_symbol** %7, align 8
  %19 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %20 = icmp eq %struct.minimal_symbol* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %25 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %24)
  store i32 %25, i32* @step_range_start, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* @step_range_end, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @find_pc_line(i32 %28, i32 0)
  %30 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.symtab_and_line* %6 to i8*
  %32 = bitcast %struct.symtab_and_line* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.symbol*, %struct.symbol** %5, align 8
  %34 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %33)
  %35 = call i32 @BLOCK_START(i32 %34)
  store i32 %35, i32* @step_range_start, align 4
  %36 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @step_range_end, align 4
  br label %38

38:                                               ; preds = %27, %23
  %39 = load i32, i32* @STEP_OVER_ALL, align 4
  store i32 %39, i32* @step_over_calls, align 4
  %40 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %41 = call i32 @get_frame_id(%struct.frame_info* %40)
  store i32 %41, i32* @step_frame_id, align 4
  %42 = call i32 (...) @read_sp()
  store i32 %42, i32* @step_sp, align 4
  store i64 0, i64* @step_multi, align 8
  %43 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %44 = call i32 @proceed(i32 -1, i32 %43, i32 1)
  ret void
}

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local %struct.symbol* @find_pc_function(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @find_pc_line(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
