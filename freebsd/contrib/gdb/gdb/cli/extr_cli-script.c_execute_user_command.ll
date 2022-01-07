; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { %struct.command_line* }
%struct.command_line = type { %struct.command_line* }
%struct.cleanup = type { i32 }

@execute_user_command.user_call_depth = internal global i32 0, align 4
@max_user_call_depth = external dso_local global i32, align 4
@.str = private unnamed_addr constant [49 x i8] c"Max user call depth exceeded -- command aborted\0A\00", align 1
@do_restore_user_call_depth = common dso_local global i32 0, align 4
@do_restore_instream_cleanup = common dso_local global i32 0, align 4
@instream = common dso_local global i32* null, align 8
@simple_control = common dso_local global i32 0, align 4
@break_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error in control structure.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execute_user_command(%struct.cmd_list_element* %0, i8* %1) #0 {
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.command_line*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i32, align 4
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.cleanup* @setup_user_args(i8* %8)
  store %struct.cleanup* %9, %struct.cleanup** %6, align 8
  %10 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %11 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %10, i32 0, i32 0
  %12 = load %struct.command_line*, %struct.command_line** %11, align 8
  store %struct.command_line* %12, %struct.command_line** %5, align 8
  %13 = load %struct.command_line*, %struct.command_line** %5, align 8
  %14 = icmp eq %struct.command_line* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %53

16:                                               ; preds = %2
  %17 = load i32, i32* @execute_user_command.user_call_depth, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @execute_user_command.user_call_depth, align 4
  %19 = load i32, i32* @max_user_call_depth, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @do_restore_user_call_depth, align 4
  %25 = call %struct.cleanup* @make_cleanup(i32 %24, i32* @execute_user_command.user_call_depth)
  store %struct.cleanup* %25, %struct.cleanup** %6, align 8
  %26 = load i32, i32* @do_restore_instream_cleanup, align 4
  %27 = load i32*, i32** @instream, align 8
  %28 = call %struct.cleanup* @make_cleanup(i32 %26, i32* %27)
  store %struct.cleanup* %28, %struct.cleanup** %6, align 8
  store i32* null, i32** @instream, align 8
  br label %29

29:                                               ; preds = %44, %23
  %30 = load %struct.command_line*, %struct.command_line** %5, align 8
  %31 = icmp ne %struct.command_line* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.command_line*, %struct.command_line** %5, align 8
  %34 = call i32 @execute_control_command(%struct.command_line* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @simple_control, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @break_control, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

44:                                               ; preds = %38, %32
  %45 = load %struct.command_line*, %struct.command_line** %5, align 8
  %46 = getelementptr inbounds %struct.command_line, %struct.command_line* %45, i32 0, i32 0
  %47 = load %struct.command_line*, %struct.command_line** %46, align 8
  store %struct.command_line* %47, %struct.command_line** %5, align 8
  br label %29

48:                                               ; preds = %42, %29
  %49 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %50 = call i32 @do_cleanups(%struct.cleanup* %49)
  %51 = load i32, i32* @execute_user_command.user_call_depth, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @execute_user_command.user_call_depth, align 4
  br label %53

53:                                               ; preds = %48, %15
  ret void
}

declare dso_local %struct.cleanup* @setup_user_args(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @execute_control_command(%struct.command_line*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
