; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c__initialize_proc_api.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c__initialize_proc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"procfs-trace\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@procfs_trace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Set tracing for /proc api calls.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@set_procfs_trace_cmd = common dso_local global i32 0, align 4
@filename_completer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"procfs-file\00", align 1
@var_filename = common dso_local global i32 0, align 4
@procfs_filename = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Set filename for /proc tracefile.\0A\00", align 1
@set_procfs_file_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_proc_api() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @no_class, align 4
  %3 = load i32, i32* @var_boolean, align 4
  %4 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* bitcast (i32* @procfs_trace to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = call i32 @add_show_from_set(%struct.cmd_list_element* %5, i32* @showlist)
  %7 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %8 = load i32, i32* @set_procfs_trace_cmd, align 4
  %9 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %7, i32 %8)
  %10 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %11 = load i32, i32* @filename_completer, align 4
  %12 = call i32 @set_cmd_completer(%struct.cmd_list_element* %10, i32 %11)
  %13 = load i32, i32* @no_class, align 4
  %14 = load i32, i32* @var_filename, align 4
  %15 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14, i8* bitcast (i32* @procfs_filename to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %15, %struct.cmd_list_element** %1, align 8
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %17 = call i32 @add_show_from_set(%struct.cmd_list_element* %16, i32* @showlist)
  %18 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %19 = load i32, i32* @set_procfs_file_cmd, align 4
  %20 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %18, i32 %19)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
