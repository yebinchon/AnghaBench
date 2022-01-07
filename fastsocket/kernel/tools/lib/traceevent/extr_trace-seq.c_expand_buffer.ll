; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_expand_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_trace-seq.c_expand_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i32 }

@TRACE_SEQ_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Can't allocate trace_seq buffer memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*)* @expand_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_buffer(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %3 = load i64, i64* @TRACE_SEQ_BUF_SIZE, align 8
  %4 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %5 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %11 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %14 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @realloc(i32 %12, i32 %15)
  %17 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %18 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %20 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @realloc(i32, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
