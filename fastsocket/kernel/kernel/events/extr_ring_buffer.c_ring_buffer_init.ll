; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_ring_buffer.c_ring_buffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_ring_buffer.c_ring_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i64, i32, i32, i32, i32 }

@RING_BUFFER_WRITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer*, i64, i32)* @ring_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_buffer_init(%struct.ring_buffer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %9 = call i64 @perf_data_size(%struct.ring_buffer* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @min(i64 %13, i64 %14)
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = sdiv i64 %24, 2
  %26 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RING_BUFFER_WRITABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %37, i32 0, i32 4
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_init(i32* %44)
  ret void
}

declare dso_local i64 @perf_data_size(%struct.ring_buffer*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
