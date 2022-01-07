; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_event_is_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_event_is_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.ring_buffer_event = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*)* @rb_event_is_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_event_is_commit(%struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  %7 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %8 = ptrtoint %struct.ring_buffer_event* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %10 = call i64 @rb_event_index(%struct.ring_buffer_event* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %24 = call i64 @rb_commit_index(%struct.ring_buffer_per_cpu* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ false, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @rb_event_index(%struct.ring_buffer_event*) #1

declare dso_local i64 @rb_commit_index(%struct.ring_buffer_per_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
