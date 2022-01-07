; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_ftrace_print_symbols_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_ftrace_print_symbols_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }
%struct.trace_print_flags = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ftrace_print_symbols_seq(%struct.trace_seq* %0, i64 %1, %struct.trace_print_flags* %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.trace_print_flags*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.trace_print_flags* %2, %struct.trace_print_flags** %6, align 8
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %44, %3
  %18 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %18, i64 %20
  %22 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %27, i64 %29
  %31 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %37 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %37, i64 %39
  %41 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @trace_seq_puts(%struct.trace_seq* %36, i64 %42)
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %35, %17
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %50 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %53 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = icmp eq i8* %48, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @trace_seq_printf(%struct.trace_seq* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %64 = call i32 @trace_seq_putc(%struct.trace_seq* %63, i32 0)
  %65 = load i8*, i8** %8, align 8
  ret i8* %65
}

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
