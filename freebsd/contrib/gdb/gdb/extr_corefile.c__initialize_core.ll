; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c__initialize_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c__initialize_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"core-file\00", align 1
@class_files = common dso_local global i32 0, align 4
@core_file_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [168 x i8] c"Use FILE as core dump for examining memory and registers.\0ANo arg means have no core file.  This command has been superseded by the\0A`target core' and `detach' commands.\00", align 1
@cmdlist = common dso_local global i32 0, align 4
@filename_completer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"gnutarget\00", align 1
@var_string_noescape = common dso_local global i32 0, align 4
@gnutarget_string = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"Set the current BFD target.\0AUse `set gnutarget auto' to specify automatic detection.\00", align 1
@setlist = common dso_local global i32 0, align 4
@set_gnutarget_command = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"GNUTARGET\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"auto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_core() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_files, align 4
  %3 = load i32, i32* @core_file_command, align 4
  %4 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.1, i64 0, i64 0), i32* @cmdlist)
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = load i32, i32* @filename_completer, align 4
  %7 = call i32 @set_cmd_completer(%struct.cmd_list_element* %5, i32 %6)
  %8 = load i32, i32* @class_files, align 4
  %9 = load i32, i32* @var_string_noescape, align 4
  %10 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %9, i8* bitcast (i32* @gnutarget_string to i8*), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %10, %struct.cmd_list_element** %1, align 8
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %12 = load i32, i32* @set_gnutarget_command, align 4
  %13 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %11, i32 %12)
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %15 = call i32 @add_show_from_set(%struct.cmd_list_element* %14, i32* @showlist)
  %16 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @set_gnutarget(i8* %19)
  br label %23

21:                                               ; preds = %0
  %22 = call i32 @set_gnutarget(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @set_gnutarget(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
