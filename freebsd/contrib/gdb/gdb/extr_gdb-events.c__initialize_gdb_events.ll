; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdb-events.c__initialize_gdb_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdb-events.c__initialize_gdb_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"eventdebug\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@gdb_events_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Set event debugging.\0AWhen non-zero, event/notify debugging is enabled.\00", align 1
@setlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"set debug event\00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"show debug event\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4
@queue_architecture_changed = common dso_local global i32 0, align 4
@queue_breakpoint_create = common dso_local global i32 0, align 4
@queue_breakpoint_delete = common dso_local global i32 0, align 4
@queue_breakpoint_modify = common dso_local global i32 0, align 4
@queue_event_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@queue_selected_frame_level_changed = common dso_local global i32 0, align 4
@queue_selected_thread_changed = common dso_local global i32 0, align 4
@queue_target_changed = common dso_local global i32 0, align 4
@queue_tracepoint_create = common dso_local global i32 0, align 4
@queue_tracepoint_delete = common dso_local global i32 0, align 4
@queue_tracepoint_modify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_gdb_events() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_maintenance, align 4
  %3 = load i32, i32* @var_zinteger, align 4
  %4 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* bitcast (i32* @gdb_events_debug to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = call i32 @deprecate_cmd(%struct.cmd_list_element* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %8 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %7, i32* @showlist)
  %9 = call i32 @deprecate_cmd(%struct.cmd_list_element* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @class_maintenance, align 4
  %11 = load i32, i32* @var_zinteger, align 4
  %12 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %10, i32 %11, i8* bitcast (i32* @gdb_events_debug to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32* @setdebuglist)
  %13 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %12, i32* @showdebuglist)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @deprecate_cmd(%struct.cmd_list_element*, i8*) #1

declare dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
