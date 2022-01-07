; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_print_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_print_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }
%struct.pevent_record = type { i64, i32, i32, i8* }
%struct.trace_seq = type { i32 }

@latency_format = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_event(%struct.pevent* %0, i32 %1, i8* %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.pevent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pevent_record, align 8
  %14 = alloca %struct.trace_seq, align 4
  %15 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* @latency_format, align 4
  %17 = load %struct.pevent*, %struct.pevent** %7, align 8
  %18 = getelementptr inbounds %struct.pevent, %struct.pevent* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %13, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %13, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %13, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %13, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.pevent*, %struct.pevent** %7, align 8
  %28 = call i32 @pevent_data_pid(%struct.pevent* %27, %struct.pevent_record* %13)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.pevent*, %struct.pevent** %7, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @pevent_pid_is_registered(%struct.pevent* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %6
  %34 = load %struct.pevent*, %struct.pevent** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @pevent_register_comm(%struct.pevent* %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %6
  %39 = call i32 @trace_seq_init(%struct.trace_seq* %14)
  %40 = load %struct.pevent*, %struct.pevent** %7, align 8
  %41 = call i32 @pevent_print_event(%struct.pevent* %40, %struct.trace_seq* %14, %struct.pevent_record* %13)
  %42 = call i32 @trace_seq_do_printf(%struct.trace_seq* %14)
  %43 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pevent_data_pid(%struct.pevent*, %struct.pevent_record*) #1

declare dso_local i32 @pevent_pid_is_registered(%struct.pevent*, i32) #1

declare dso_local i32 @pevent_register_comm(%struct.pevent*, i8*, i32) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @pevent_print_event(%struct.pevent*, %struct.trace_seq*, %struct.pevent_record*) #1

declare dso_local i32 @trace_seq_do_printf(%struct.trace_seq*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
