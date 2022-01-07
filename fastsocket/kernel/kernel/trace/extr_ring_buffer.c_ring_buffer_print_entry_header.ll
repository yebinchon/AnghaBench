; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_print_entry_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_print_entry_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"# compressed entry header\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09type_len    :    5 bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\09time_delta  :   27 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\09array       :   32 bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\09padding     : type == %d\0A\00", align 1
@RINGBUF_TYPE_PADDING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"\09time_extend : type == %d\0A\00", align 1
@RINGBUF_TYPE_TIME_EXTEND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\09data max type_len  == %d\0A\00", align 1
@RINGBUF_TYPE_DATA_TYPE_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_print_entry_header(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  %3 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %4 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %5 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %3, align 4
  %6 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %7 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* %3, align 4
  %8 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %9 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* %3, align 4
  %10 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %11 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  %12 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %13 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %15 = load i32, i32* @RINGBUF_TYPE_PADDING, align 4
  %16 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %18 = load i32, i32* @RINGBUF_TYPE_TIME_EXTEND, align 4
  %19 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %21 = load i32, i32* @RINGBUF_TYPE_DATA_TYPE_LEN_MAX, align 4
  %22 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
