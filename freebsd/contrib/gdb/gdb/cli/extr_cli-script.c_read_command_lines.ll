; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_read_command_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_read_command_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i64, %struct.command_line* }
%struct.cleanup = type { i32 }

@control_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@END_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@nop_command = common dso_local global i32 0, align 4
@end_command = common dso_local global i32 0, align 4
@simple_control = common dso_local global i32 0, align 4
@ok_command = common dso_local global i32 0, align 4
@invalid_control = common dso_local global i32 0, align 4
@while_control = common dso_local global i64 0, align 8
@if_control = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.command_line* @read_command_lines(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.command_line*, align 8
  %6 = alloca %struct.command_line*, align 8
  %7 = alloca %struct.command_line*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* @control_level, align 8
  br i1 true, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @END_MESSAGE, align 4
  %14 = call i32 @readline_begin_hook(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = call i64 (...) @input_from_terminal_p()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @END_MESSAGE, align 4
  %24 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load i32, i32* @gdb_stdout, align 4
  %26 = call i32 @gdb_flush(i32 %25)
  br label %27

27:                                               ; preds = %21, %18, %15
  br label %28

28:                                               ; preds = %27, %11
  store %struct.command_line* null, %struct.command_line** %6, align 8
  store %struct.command_line* null, %struct.command_line** %5, align 8
  store %struct.cleanup* null, %struct.cleanup** %8, align 8
  br label %29

29:                                               ; preds = %28, %34, %81
  %30 = call i32 @read_next_line(%struct.command_line** %7)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @nop_command, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @end_command, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @simple_control, align 4
  store i32 %40, i32* %9, align 4
  br label %83

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ok_command, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @invalid_control, align 4
  store i32 %46, i32* %9, align 4
  br label %83

47:                                               ; preds = %41
  %48 = load %struct.command_line*, %struct.command_line** %7, align 8
  %49 = getelementptr inbounds %struct.command_line, %struct.command_line* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @while_control, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.command_line*, %struct.command_line** %7, align 8
  %55 = getelementptr inbounds %struct.command_line, %struct.command_line* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @if_control, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53, %47
  %60 = load i64, i64* @control_level, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @control_level, align 8
  %62 = load %struct.command_line*, %struct.command_line** %7, align 8
  %63 = call i32 @recurse_read_control_structure(%struct.command_line* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i64, i64* @control_level, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* @control_level, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @invalid_control, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %83

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.command_line*, %struct.command_line** %6, align 8
  %73 = icmp ne %struct.command_line* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.command_line*, %struct.command_line** %7, align 8
  %76 = load %struct.command_line*, %struct.command_line** %6, align 8
  %77 = getelementptr inbounds %struct.command_line, %struct.command_line* %76, i32 0, i32 1
  store %struct.command_line* %75, %struct.command_line** %77, align 8
  br label %81

78:                                               ; preds = %71
  %79 = load %struct.command_line*, %struct.command_line** %7, align 8
  store %struct.command_line* %79, %struct.command_line** %5, align 8
  %80 = call %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line** %5)
  store %struct.cleanup* %80, %struct.cleanup** %8, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.command_line*, %struct.command_line** %7, align 8
  store %struct.command_line* %82, %struct.command_line** %6, align 8
  br label %29

83:                                               ; preds = %69, %45, %39
  %84 = call i32 (...) @dont_repeat()
  %85 = load %struct.command_line*, %struct.command_line** %5, align 8
  %86 = icmp ne %struct.command_line* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @invalid_control, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %93 = call i32 @discard_cleanups(%struct.cleanup* %92)
  br label %97

94:                                               ; preds = %87
  %95 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %96 = call i32 @do_cleanups(%struct.cleanup* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %83
  br i1 true, label %99, label %101

99:                                               ; preds = %98
  %100 = call i32 (...) @readline_end_hook()
  br label %101

101:                                              ; preds = %99, %98
  %102 = load %struct.command_line*, %struct.command_line** %5, align 8
  ret %struct.command_line* %102
}

declare dso_local i32 @readline_begin_hook(i8*, i8*, i32) #1

declare dso_local i64 @input_from_terminal_p(...) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @read_next_line(%struct.command_line**) #1

declare dso_local i32 @recurse_read_control_structure(%struct.command_line*) #1

declare dso_local %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line**) #1

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @readline_end_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
