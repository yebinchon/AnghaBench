; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_recurse_read_control_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_recurse_read_control_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i64, i32, %struct.command_line**, %struct.command_line* }

@simple_control = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Recursed on a simple control type\0A\00", align 1
@invalid_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Allocated body is smaller than this command type needs\0A\00", align 1
@nop_command = common dso_local global i32 0, align 4
@end_command = common dso_local global i32 0, align 4
@while_control = common dso_local global i64 0, align 8
@if_control = common dso_local global i64 0, align 8
@else_command = common dso_local global i32 0, align 4
@control_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.command_line*)* @recurse_read_control_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recurse_read_control_structure(%struct.command_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.command_line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.command_line**, align 8
  %9 = alloca %struct.command_line*, align 8
  %10 = alloca %struct.command_line*, align 8
  store %struct.command_line* %0, %struct.command_line** %3, align 8
  store %struct.command_line* null, %struct.command_line** %9, align 8
  store i32 1, i32* %4, align 4
  %11 = load %struct.command_line*, %struct.command_line** %3, align 8
  %12 = getelementptr inbounds %struct.command_line, %struct.command_line* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @simple_control, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @invalid_control, align 4
  store i32 %18, i32* %2, align 4
  br label %129

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.command_line*, %struct.command_line** %3, align 8
  %22 = getelementptr inbounds %struct.command_line, %struct.command_line* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @invalid_control, align 4
  store i32 %27, i32* %2, align 4
  br label %129

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %35, %70, %125
  %30 = call i32 (...) @dont_repeat()
  store %struct.command_line* null, %struct.command_line** %10, align 8
  %31 = call i32 @read_next_line(%struct.command_line** %10)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @nop_command, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %29

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @end_command, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.command_line*, %struct.command_line** %3, align 8
  %42 = getelementptr inbounds %struct.command_line, %struct.command_line* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @while_control, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.command_line*, %struct.command_line** %3, align 8
  %48 = getelementptr inbounds %struct.command_line, %struct.command_line* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @if_control, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40
  %53 = load i64, i64* @simple_control, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %126

55:                                               ; preds = %46
  %56 = load i32, i32* @invalid_control, align 4
  store i32 %56, i32* %7, align 4
  br label %126

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @else_command, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.command_line*, %struct.command_line** %3, align 8
  %63 = getelementptr inbounds %struct.command_line, %struct.command_line* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @if_control, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.command_line*, %struct.command_line** %3, align 8
  %72 = call i32 @realloc_body_list(%struct.command_line* %71, i32 2)
  store i32 2, i32* %4, align 4
  store %struct.command_line* null, %struct.command_line** %9, align 8
  br label %29

73:                                               ; preds = %67, %61
  %74 = load i32, i32* @invalid_control, align 4
  store i32 %74, i32* %7, align 4
  br label %126

75:                                               ; preds = %57
  %76 = load %struct.command_line*, %struct.command_line** %9, align 8
  %77 = icmp ne %struct.command_line* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.command_line*, %struct.command_line** %10, align 8
  %80 = load %struct.command_line*, %struct.command_line** %9, align 8
  %81 = getelementptr inbounds %struct.command_line, %struct.command_line* %80, i32 0, i32 3
  store %struct.command_line* %79, %struct.command_line** %81, align 8
  br label %99

82:                                               ; preds = %75
  %83 = load %struct.command_line*, %struct.command_line** %3, align 8
  %84 = getelementptr inbounds %struct.command_line, %struct.command_line* %83, i32 0, i32 2
  %85 = load %struct.command_line**, %struct.command_line*** %84, align 8
  store %struct.command_line** %85, %struct.command_line*** %8, align 8
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %93, %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.command_line**, %struct.command_line*** %8, align 8
  %92 = getelementptr inbounds %struct.command_line*, %struct.command_line** %91, i32 1
  store %struct.command_line** %92, %struct.command_line*** %8, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.command_line*, %struct.command_line** %10, align 8
  %98 = load %struct.command_line**, %struct.command_line*** %8, align 8
  store %struct.command_line* %97, %struct.command_line** %98, align 8
  br label %99

99:                                               ; preds = %96, %78
  %100 = load %struct.command_line*, %struct.command_line** %10, align 8
  store %struct.command_line* %100, %struct.command_line** %9, align 8
  %101 = load %struct.command_line*, %struct.command_line** %10, align 8
  %102 = getelementptr inbounds %struct.command_line, %struct.command_line* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @while_control, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load %struct.command_line*, %struct.command_line** %10, align 8
  %108 = getelementptr inbounds %struct.command_line, %struct.command_line* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @if_control, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106, %99
  %113 = load i32, i32* @control_level, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @control_level, align 4
  %115 = load %struct.command_line*, %struct.command_line** %10, align 8
  %116 = call i32 @recurse_read_control_structure(%struct.command_line* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* @control_level, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* @control_level, align 4
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* @simple_control, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %126

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %106
  br label %29

126:                                              ; preds = %123, %73, %55, %52
  %127 = call i32 (...) @dont_repeat()
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %25, %16
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @read_next_line(%struct.command_line**) #1

declare dso_local i32 @realloc_body_list(%struct.command_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
