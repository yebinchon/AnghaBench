; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_mmiotrace_map = type { %struct.mmiotrace_map }
%struct.mmiotrace_map = type { i32, i32, i32, i32, i64 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MAP %u.%06lu %d 0x%llx 0x%lx 0x%lx 0x%lx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"UNMAP %u.%06lu %d 0x%lx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"map what?\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @mmio_print_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_map(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.trace_mmiotrace_map*, align 8
  %6 = alloca %struct.mmiotrace_map*, align 8
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
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 1
  store %struct.trace_seq* %16, %struct.trace_seq** %7, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ns2usecs(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @USEC_PER_SEC, align 4
  %23 = call i64 @do_div(i64 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %5, align 8
  %27 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %28 = call i32 @trace_assign_type(%struct.trace_mmiotrace_map* %26, %struct.trace_entry* %27)
  %29 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %5, align 8
  %30 = getelementptr inbounds %struct.trace_mmiotrace_map, %struct.trace_mmiotrace_map* %29, i32 0, i32 0
  store %struct.mmiotrace_map* %30, %struct.mmiotrace_map** %6, align 8
  %31 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %32 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %59 [
    i32 129, label %34
    i32 128, label %51
  ]

34:                                               ; preds = %1
  %35 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %39 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %42 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %45 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %48 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i32 %40, i64 %43, i32 %46, i32 %49, i64 0, i32 0)
  store i32 %50, i32* %11, align 4
  br label %62

51:                                               ; preds = %1
  %52 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %56 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %54, i32 %57, i64 0, i32 0)
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %1
  %60 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %61 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %51, %34
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @ns2usecs(i32) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_assign_type(%struct.trace_mmiotrace_map*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
