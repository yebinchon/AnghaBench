; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_stack_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_stack_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.stack_entry = type { i64* }

@.str = private unnamed_addr constant [15 x i8] c"<stack trace>\0A\00", align 1
@FTRACE_STACK_ENTRIES = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @trace_stack_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_stack_print(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stack_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  store %struct.trace_seq* %10, %struct.trace_seq** %7, align 8
  %11 = load %struct.stack_entry*, %struct.stack_entry** %6, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.stack_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %17 = call i32 @trace_seq_puts(%struct.trace_seq* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %74

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FTRACE_STACK_ENTRIES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load %struct.stack_entry*, %struct.stack_entry** %6, align 8
  %27 = getelementptr inbounds %struct.stack_entry, %struct.stack_entry* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.stack_entry*, %struct.stack_entry** %6, align 8
  %36 = getelementptr inbounds %struct.stack_entry, %struct.stack_entry* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ULONG_MAX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %25
  br label %72

45:                                               ; preds = %34
  %46 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %47 = call i32 @trace_seq_puts(%struct.trace_seq* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %74

50:                                               ; preds = %45
  %51 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %52 = load %struct.stack_entry*, %struct.stack_entry** %6, align 8
  %53 = getelementptr inbounds %struct.stack_entry, %struct.stack_entry* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @seq_print_ip_sym(%struct.trace_seq* %51, i64 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %74

63:                                               ; preds = %50
  %64 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %65 = call i32 @trace_seq_puts(%struct.trace_seq* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %74

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %21

72:                                               ; preds = %44, %21
  %73 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %67, %62, %49, %19
  %75 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @trace_assign_type(%struct.stack_entry*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @seq_print_ip_sym(%struct.trace_seq*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
