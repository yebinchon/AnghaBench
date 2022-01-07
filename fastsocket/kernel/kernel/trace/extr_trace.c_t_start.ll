; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_t_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_t_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.tracer = type opaque

@trace_types_lock = common dso_local global i32 0, align 4
@trace_types = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @t_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @t_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.tracer*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = call i32 @mutex_lock(i32* @trace_types_lock)
  %8 = load i8*, i8** @trace_types, align 8
  %9 = bitcast i8* %8 to %struct.tracer*
  store %struct.tracer* %9, %struct.tracer** %5, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.tracer*, %struct.tracer** %5, align 8
  %12 = icmp ne %struct.tracer* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %14, %16
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.tracer*, %struct.tracer** %5, align 8
  %24 = bitcast %struct.tracer* %23 to i8*
  %25 = call i8* @t_next(%struct.seq_file* %22, i8* %24, i64* %6)
  %26 = bitcast i8* %25 to %struct.tracer*
  store %struct.tracer* %26, %struct.tracer** %5, align 8
  br label %10

27:                                               ; preds = %18
  %28 = load %struct.tracer*, %struct.tracer** %5, align 8
  %29 = bitcast %struct.tracer* %28 to i8*
  ret i8* %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @t_next(%struct.seq_file*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
