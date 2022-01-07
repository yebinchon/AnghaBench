; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_resize_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_resize_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@ring_buffer_expanded = common dso_local global i32 0, align 4
@global_trace = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@current_trace = common dso_local global %struct.TYPE_6__* null, align 8
@max_tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@tracing_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tracing_resize_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_resize_ring_buffer(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* @ring_buffer_expanded, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 1), align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ring_buffer_resize(i32 %6, i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_trace, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %37

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @max_tr, i32 0, i32 1), align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ring_buffer_resize(i32 %20, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 1), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 0), align 8
  %28 = call i32 @ring_buffer_resize(i32 %26, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @WARN_ON(i32 1)
  store i32 1, i32* @tracing_disabled, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %19
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @max_tr, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %35, %18
  %38 = load i64, i64* %3, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 0), align 8
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %33, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ring_buffer_resize(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
