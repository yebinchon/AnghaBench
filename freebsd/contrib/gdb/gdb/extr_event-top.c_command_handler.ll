; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_command_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_command_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.continuation_arg = type { %struct.TYPE_2__, %struct.continuation_arg* }
%struct.TYPE_2__ = type { i64 }

@stdin = common dso_local global i64 0, align 8
@quit_flag = common dso_local global i64 0, align 8
@instream = common dso_local global i64 0, align 8
@null_cleanup = common dso_local global i32 0, align 4
@display_space = external dso_local global i32, align 4
@target_executing = common dso_local global i64 0, align 8
@command_line_handler_continuation = common dso_local global i32 0, align 4
@stop_bpstat = common dso_local global i32 0, align 4
@display_time = external dso_local global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Command execution time: %ld.%06ld\0A\00", align 1
@lim_at_start = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @command_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cleanup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.continuation_arg*, align 8
  %6 = alloca %struct.continuation_arg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i64, i64* @stdin, align 8
  %10 = call i32 @ISATTY(i64 %9)
  store i32 %10, i32* %4, align 4
  store i64 0, i64* @quit_flag, align 8
  %11 = load i64, i64* @instream, align 8
  %12 = load i64, i64* @stdin, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @reinitialize_more_filter()
  br label %19

19:                                               ; preds = %17, %14, %1
  %20 = load i32, i32* @null_cleanup, align 4
  %21 = call %struct.cleanup* @make_cleanup(i32 %20, i32 0)
  store %struct.cleanup* %21, %struct.cleanup** %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* @stdin, align 8
  %26 = load i64, i64* @instream, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @quit_command(i8* null, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = call i64 (...) @get_run_time()
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @display_space, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i8*, i8** %2, align 8
  %37 = load i64, i64* @instream, align 8
  %38 = load i64, i64* @stdin, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @execute_command(i8* %36, i32 %40)
  %42 = call i64 (...) @target_can_async_p()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %35
  %45 = load i64, i64* @target_executing, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = call i64 @xmalloc(i32 16)
  %49 = inttoptr i64 %48 to %struct.continuation_arg*
  store %struct.continuation_arg* %49, %struct.continuation_arg** %5, align 8
  %50 = call i64 @xmalloc(i32 16)
  %51 = inttoptr i64 %50 to %struct.continuation_arg*
  store %struct.continuation_arg* %51, %struct.continuation_arg** %6, align 8
  %52 = load %struct.continuation_arg*, %struct.continuation_arg** %6, align 8
  %53 = load %struct.continuation_arg*, %struct.continuation_arg** %5, align 8
  %54 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %53, i32 0, i32 1
  store %struct.continuation_arg* %52, %struct.continuation_arg** %54, align 8
  %55 = load %struct.continuation_arg*, %struct.continuation_arg** %6, align 8
  %56 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %55, i32 0, i32 1
  store %struct.continuation_arg* null, %struct.continuation_arg** %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.continuation_arg*, %struct.continuation_arg** %5, align 8
  %59 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @command_line_handler_continuation, align 4
  %62 = load %struct.continuation_arg*, %struct.continuation_arg** %5, align 8
  %63 = call i32 @add_continuation(i32 %61, %struct.continuation_arg* %62)
  br label %64

64:                                               ; preds = %47, %44, %35
  %65 = call i64 (...) @target_can_async_p()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* @target_executing, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67, %64
  %71 = call i32 @bpstat_do_actions(i32* @stop_bpstat)
  %72 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %73 = call i32 @do_cleanups(%struct.cleanup* %72)
  %74 = load i32, i32* @display_time, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = call i64 (...) @get_run_time()
  %78 = load i64, i64* %7, align 8
  %79 = sub nsw i64 %77, %78
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sdiv i64 %80, 1000000
  %82 = load i64, i64* %8, align 8
  %83 = srem i64 %82, 1000000
  %84 = trunc i64 %83 to i8
  %85 = call i32 (i8*, i64, i8, ...) @printf_unfiltered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %81, i8 signext %84)
  br label %86

86:                                               ; preds = %76, %70
  %87 = load i32, i32* @display_space, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %86
  br label %91

91:                                               ; preds = %90, %67
  ret void
}

declare dso_local i32 @ISATTY(i64) #1

declare dso_local i32 @reinitialize_more_filter(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @quit_command(i8*, i32) #1

declare dso_local i64 @get_run_time(...) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @add_continuation(i32, %struct.continuation_arg*) #1

declare dso_local i32 @bpstat_do_actions(i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @printf_unfiltered(i8*, i64, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
