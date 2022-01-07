; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_bpstat_do_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_bpstat_do_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.command_line*, %struct.TYPE_3__* }
%struct.command_line = type { %struct.command_line* }
%struct.cleanup = type { i32 }

@executing_breakpoint_commands = common dso_local global i32 0, align 4
@cleanup_executing_breakpoints = common dso_local global i32 0, align 4
@breakpoint_proceeded = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpstat_do_actions(%struct.TYPE_3__** %0) #0 {
  %2 = alloca %struct.TYPE_3__**, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca %struct.command_line*, align 8
  %6 = alloca %struct.cleanup*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %2, align 8
  %7 = load i32, i32* @executing_breakpoint_commands, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  store i32 1, i32* @executing_breakpoint_commands, align 4
  %11 = load i32, i32* @cleanup_executing_breakpoints, align 4
  %12 = call %struct.cleanup* @make_cleanup(i32 %11, i32 0)
  store %struct.cleanup* %12, %struct.cleanup** %4, align 8
  br label %13

13:                                               ; preds = %45, %10
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* @breakpoint_proceeded, align 8
  br label %16

16:                                               ; preds = %47, %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.command_line*, %struct.command_line** %21, align 8
  store %struct.command_line* %22, %struct.command_line** %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.command_line* null, %struct.command_line** %24, align 8
  %25 = call %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line** %5)
  store %struct.cleanup* %25, %struct.cleanup** %6, align 8
  br label %26

26:                                               ; preds = %39, %19
  %27 = load %struct.command_line*, %struct.command_line** %5, align 8
  %28 = icmp ne %struct.command_line* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.command_line*, %struct.command_line** %5, align 8
  %31 = call i32 @execute_control_command(%struct.command_line* %30)
  %32 = load i64, i64* @breakpoint_proceeded, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29
  %36 = load %struct.command_line*, %struct.command_line** %5, align 8
  %37 = getelementptr inbounds %struct.command_line, %struct.command_line* %36, i32 0, i32 0
  %38 = load %struct.command_line*, %struct.command_line** %37, align 8
  store %struct.command_line* %38, %struct.command_line** %5, align 8
  br label %39

39:                                               ; preds = %35
  br label %26

40:                                               ; preds = %34, %26
  %41 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %42 = call i32 @do_cleanups(%struct.cleanup* %41)
  %43 = load i64, i64* @breakpoint_proceeded, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %13

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %3, align 8
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %53 = call i32 @do_cleanups(%struct.cleanup* %52)
  br label %54

54:                                               ; preds = %51, %9
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup_free_command_lines(%struct.command_line**) #1

declare dso_local i32 @execute_control_command(%struct.command_line*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
