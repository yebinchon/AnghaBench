; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_trace_seq_vprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_trace_seq_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_vprintf(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = call i32 @TRACE_SEQ_CHECK(%struct.trace_seq* %9)
  br label %11

11:                                               ; preds = %35, %3
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %17 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %21 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %24 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vsnprintf(i64 %27, i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %11
  %36 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %37 = call i32 @expand_buffer(%struct.trace_seq* %36)
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %41 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE_SEQ_CHECK(%struct.trace_seq*) #1

declare dso_local i32 @vsnprintf(i64, i32, i8*, i32) #1

declare dso_local i32 @expand_buffer(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
