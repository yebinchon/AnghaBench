; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c__initialize_remote_ocd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c__initialize_remote_ocd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_remote_ocd.ocd_cmd_list = internal global %struct.cmd_list_element* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"remotetimeout\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_integer = common dso_local global i32 0, align 4
@remote_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Set timeout value for remote read.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ocd\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@bdm_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ocd \00", align 1
@cmdlist = external dso_local global %struct.cmd_list_element*, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@bdm_reset_command = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@bdm_restart_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"update-flash\00", align 1
@bdm_update_flash_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_ocd() #0 {
  %1 = load i32, i32* @no_class, align 4
  %2 = load i32, i32* @var_integer, align 4
  %3 = call i32 @add_set_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* bitcast (i32* @remote_timeout to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %4 = call i32 @add_show_from_set(i32 %3, i32* @showlist)
  %5 = load i32, i32* @class_obscure, align 4
  %6 = load i32, i32* @bdm_command, align 4
  %7 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote_ocd.ocd_cmd_list, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.cmd_list_element** @cmdlist)
  %8 = load i32, i32* @class_obscure, align 4
  %9 = load i32, i32* @bdm_reset_command, align 4
  %10 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %8, i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote_ocd.ocd_cmd_list)
  %11 = load i32, i32* @class_obscure, align 4
  %12 = load i32, i32* @bdm_restart_command, align 4
  %13 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %11, i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote_ocd.ocd_cmd_list)
  %14 = load i32, i32* @class_obscure, align 4
  %15 = load i32, i32* @bdm_update_flash_command, align 4
  %16 = call i32 @add_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %14, i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_remote_ocd.ocd_cmd_list)
  ret void
}

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
