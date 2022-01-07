; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_lat_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_lat_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32, i32, i32 }
%struct.trace_seq = type { i32 }

@trace_flags = common dso_local global i64 0, align 8
@TRACE_ITER_VERBOSE = common dso_local global i64 0, align 8
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%16s %5d %3d %d %08x %08lx \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_lat_context(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 4
  store %struct.trace_seq* %12, %struct.trace_seq** %5, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 3
  %15 = load %struct.trace_entry*, %struct.trace_entry** %14, align 8
  store %struct.trace_entry* %15, %struct.trace_entry** %6, align 8
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %17 = call %struct.trace_entry* @trace_find_next_entry(%struct.trace_iterator* %16, i32* null, i32* %3)
  store %struct.trace_entry* %17, %struct.trace_entry** %7, align 8
  %18 = load i64, i64* @trace_flags, align 8
  %19 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %22 = icmp ne %struct.trace_entry* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32, i32* @TASK_COMM_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %9, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %35 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %36 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trace_find_cmdline(i32 %37, i8* %34)
  %39 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %40 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %41 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %44 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %47 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %50 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @trace_seq_printf(%struct.trace_seq* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %64

57:                                               ; preds = %27
  %58 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %59 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %60 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %61 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lat_print_generic(%struct.trace_seq* %58, %struct.trace_entry* %59, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %30
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @lat_print_timestamp(%struct.trace_iterator* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.trace_entry* @trace_find_next_entry(%struct.trace_iterator*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trace_find_cmdline(i32, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @lat_print_generic(%struct.trace_seq*, %struct.trace_entry*, i32) #1

declare dso_local i32 @lat_print_timestamp(%struct.trace_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
