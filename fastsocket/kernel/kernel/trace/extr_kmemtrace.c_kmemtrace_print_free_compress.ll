; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_free_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_print_free_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.kmemtrace_free_entry = type { i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"  -      \00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"K     \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"C     \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"P     \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"?     \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"                       \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0x%tx   \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"       %pf\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @kmemtrace_print_free_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_print_free_compress(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.kmemtrace_free_entry*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %7, i32 0, i32 1
  store %struct.trace_seq* %8, %struct.trace_seq** %5, align 8
  %9 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %4, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @trace_assign_type(%struct.kmemtrace_free_entry* %9, i32 %12)
  %14 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %15 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %4, align 8
  %22 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 129, label %24
    i32 130, label %27
    i32 128, label %30
  ]

24:                                               ; preds = %20
  %25 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %26 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %29 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %32 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %35 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30, %27, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %36
  %42 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %43 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %41
  %49 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %50 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %4, align 8
  %51 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %58, i32* %2, align 4
  br label %72

59:                                               ; preds = %48
  %60 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %61 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %4, align 8
  %62 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %69, i32* %2, align 4
  br label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %68, %57, %46, %39, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @trace_assign_type(%struct.kmemtrace_free_entry*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
