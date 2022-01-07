; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c__initialize_gdbarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c__initialize_gdbarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@gdbarch_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Set architecture debugging.\0AWhen non-zero, architecture debugging is enabled.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"archdebug\00", align 1
@setlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"set debug arch\00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"show debug arch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_gdbarch() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_maintenance, align 4
  %3 = load i32, i32* @var_zinteger, align 4
  %4 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* bitcast (i32* @gdbarch_debug to i8*), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32* @setdebuglist)
  %5 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %4, i32* @showdebuglist)
  %6 = load i32, i32* @class_maintenance, align 4
  %7 = load i32, i32* @var_zinteger, align 4
  %8 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7, i8* bitcast (i32* @gdbarch_debug to i8*), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %8, %struct.cmd_list_element** %1, align 8
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %10 = call i32 @deprecate_cmd(%struct.cmd_list_element* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %12 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %11, i32* @showlist)
  %13 = call i32 @deprecate_cmd(%struct.cmd_list_element* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @deprecate_cmd(%struct.cmd_list_element*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
