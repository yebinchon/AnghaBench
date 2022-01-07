; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_seq_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_seq_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_putc(%struct.trace_seq* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %7 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %16 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %19 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store i8 %14, i8* %23, align 1
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
