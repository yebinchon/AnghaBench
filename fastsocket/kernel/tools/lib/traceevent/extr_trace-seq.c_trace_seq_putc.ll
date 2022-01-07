; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_trace_seq_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_trace_seq_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_putc(%struct.trace_seq* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %6 = call i32 @TRACE_SEQ_CHECK(%struct.trace_seq* %5)
  br label %7

7:                                                ; preds = %16, %2
  %8 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %9 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %12 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sge i32 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %18 = call i32 @expand_buffer(%struct.trace_seq* %17)
  br label %7

19:                                               ; preds = %7
  %20 = load i8, i8* %4, align 1
  %21 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %22 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %25 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  store i8 %20, i8* %29, align 1
  ret i32 1
}

declare dso_local i32 @TRACE_SEQ_CHECK(%struct.trace_seq*) #1

declare dso_local i32 @expand_buffer(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
