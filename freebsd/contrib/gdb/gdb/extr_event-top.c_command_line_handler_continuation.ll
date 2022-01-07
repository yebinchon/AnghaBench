; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_command_line_handler_continuation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_command_line_handler_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation_arg = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@stop_bpstat = common dso_local global i32 0, align 4
@display_time = external dso_local global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Command execution time: %ld.%06ld\0A\00", align 1
@display_space = external dso_local global i32, align 4
@lim_at_start = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_line_handler_continuation(%struct.continuation_arg* %0) #0 {
  %2 = alloca %struct.continuation_arg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.continuation_arg* %0, %struct.continuation_arg** %2, align 8
  %6 = load %struct.continuation_arg*, %struct.continuation_arg** %2, align 8
  %7 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.continuation_arg*, %struct.continuation_arg** %2, align 8
  %11 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = call i32 @bpstat_do_actions(i32* @stop_bpstat)
  %17 = load i32, i32* @display_time, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = call i64 (...) @get_run_time()
  %21 = load i64, i64* %3, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sdiv i64 %23, 1000000
  %25 = load i64, i64* %5, align 8
  %26 = srem i64 %25, 1000000
  %27 = trunc i64 %26 to i8
  %28 = call i32 (i8*, i64, i8, ...) @printf_unfiltered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %24, i8 signext %27)
  br label %29

29:                                               ; preds = %19, %1
  %30 = load i32, i32* @display_space, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @bpstat_do_actions(i32*) #1

declare dso_local i64 @get_run_time(...) #1

declare dso_local i32 @printf_unfiltered(i8*, i64, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
