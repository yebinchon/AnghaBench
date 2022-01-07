; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_show_user_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_show_user_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, %struct.command_line* }
%struct.command_line = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"User command \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_user_1(%struct.cmd_list_element* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.command_line*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %6, i32 0, i32 1
  %8 = load %struct.command_line*, %struct.command_line** %7, align 8
  store %struct.command_line* %8, %struct.command_line** %5, align 8
  %9 = load %struct.command_line*, %struct.command_line** %5, align 8
  %10 = icmp ne %struct.command_line* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %14 = call i32 @fputs_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %13)
  %15 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %16 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = call i32 @fputs_filtered(i8* %17, %struct.ui_file* %18)
  %20 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %21 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %20)
  %22 = load i32, i32* @uiout, align 4
  %23 = load %struct.command_line*, %struct.command_line** %5, align 8
  %24 = call i32 @print_command_lines(i32 %22, %struct.command_line* %23, i32 1)
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @print_command_lines(i32, %struct.command_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
