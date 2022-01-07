; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.print_entry = type { i8* }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MARK %u.%06lu %s\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @mmio_print_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_mark(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.print_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 2
  %14 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  store %struct.trace_entry* %14, %struct.trace_entry** %4, align 8
  %15 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %16 = bitcast %struct.trace_entry* %15 to %struct.print_entry*
  store %struct.print_entry* %16, %struct.print_entry** %5, align 8
  %17 = load %struct.print_entry*, %struct.print_entry** %5, align 8
  %18 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 1
  store %struct.trace_seq* %21, %struct.trace_seq** %7, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ns2usecs(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @USEC_PER_SEC, align 4
  %28 = call i64 @do_div(i64 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @ns2usecs(i32) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
