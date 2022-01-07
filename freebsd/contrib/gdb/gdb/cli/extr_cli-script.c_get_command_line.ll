; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_get_command_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_get_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i32 }
%struct.cleanup = type { i32 }

@invalid_control = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"error reading in control structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command_line* (i32, i8*)* @get_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command_line* @get_command_line(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.command_line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.command_line*, align 8
  %7 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.cleanup* null, %struct.cleanup** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.command_line* @build_command_line(i32 %8, i8* %9)
  store %struct.command_line* %10, %struct.command_line** %6, align 8
  %11 = call %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line** %6)
  store %struct.cleanup* %11, %struct.cleanup** %7, align 8
  %12 = load %struct.command_line*, %struct.command_line** %6, align 8
  %13 = call i64 @recurse_read_control_structure(%struct.command_line* %12)
  %14 = load i64, i64* @invalid_control, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %19 = call i32 @do_cleanups(%struct.cleanup* %18)
  store %struct.command_line* null, %struct.command_line** %3, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %22 = call i32 @discard_cleanups(%struct.cleanup* %21)
  %23 = load %struct.command_line*, %struct.command_line** %6, align 8
  store %struct.command_line* %23, %struct.command_line** %3, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.command_line*, %struct.command_line** %3, align 8
  ret %struct.command_line* %25
}

declare dso_local %struct.command_line* @build_command_line(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line**) #1

declare dso_local i64 @recurse_read_control_structure(%struct.command_line*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
