; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@TRACE_FILE_TIME_IN_NS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%16s-%-5d [%03d] %5lu.%06lu: \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%16s-%-5d [%03d] %12llu: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_context(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 4
  store %struct.trace_seq* %13, %struct.trace_seq** %4, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 3
  %16 = load %struct.trace_entry*, %struct.trace_entry** %15, align 8
  store %struct.trace_entry* %16, %struct.trace_entry** %5, align 8
  %17 = load i32, i32* @TASK_COMM_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %22 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @trace_find_cmdline(i32 %23, i8* %20)
  %25 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TRACE_FILE_TIME_IN_NS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %1
  %32 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %33 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ns2usecs(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @USEC_PER_SEC, align 4
  %38 = call i64 @do_div(i64 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %41 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %42 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %45 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (%struct.trace_seq*, i8*, i8*, i32, i32, i64, ...) @trace_seq_printf(%struct.trace_seq* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %43, i32 %46, i64 %47, i64 %48)
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %63

50:                                               ; preds = %1
  %51 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %52 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %53 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %56 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %59 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = call i32 (%struct.trace_seq*, i8*, i8*, i32, i32, i64, ...) @trace_seq_printf(%struct.trace_seq* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %54, i32 %57, i64 %61)
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %50, %31
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i64 @ns2usecs(i32) #2

declare dso_local i64 @do_div(i64, i32) #2

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i32, i32, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
