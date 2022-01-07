; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_ftrace_print_flags_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_ftrace_print_flags_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }
%struct.trace_print_flags = type { i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ftrace_print_flags_seq(%struct.trace_seq* %0, i8* %1, i64 %2, %struct.trace_print_flags* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trace_print_flags*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.trace_print_flags* %3, %struct.trace_print_flags** %8, align 8
  %14 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %15 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %18 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %11, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %73, %4
  %23 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %23, i64 %25
  %27 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ false, %22 ], [ %32, %30 ]
  br i1 %34, label %35, label %76

35:                                               ; preds = %33
  %36 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %36, i64 %38
  %40 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %73

48:                                               ; preds = %35
  %49 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %49, i64 %51
  %53 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %7, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %48
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @trace_seq_puts(%struct.trace_seq* %65, i8* %66)
  br label %69

68:                                               ; preds = %61, %48
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @trace_seq_puts(%struct.trace_seq* %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %47
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %22

76:                                               ; preds = %33
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @trace_seq_puts(%struct.trace_seq* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %82, %79
  %90 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @trace_seq_printf(%struct.trace_seq* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %89, %76
  %94 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %95 = call i32 @trace_seq_putc(%struct.trace_seq* %94, i32 0)
  %96 = load i8*, i8** %11, align 8
  ret i8* %96
}

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
