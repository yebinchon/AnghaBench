; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.perf_event* }
%struct.perf_event = type { i32, %struct.ring_buffer*, i64, %struct.user_struct*, i32 }
%struct.ring_buffer = type { i32 }
%struct.user_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @perf_mmap_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_mmap_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.user_struct*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  store %struct.perf_event* %11, %struct.perf_event** %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 4
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = call i64 @atomic_dec_and_mutex_lock(i32* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 1
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %20, align 8
  %22 = call i64 @perf_data_size(%struct.ring_buffer* %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 3
  %25 = load %struct.user_struct*, %struct.user_struct** %24, align 8
  store %struct.user_struct* %25, %struct.user_struct** %5, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 1
  %28 = load %struct.ring_buffer*, %struct.ring_buffer** %27, align 8
  store %struct.ring_buffer* %28, %struct.ring_buffer** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = add i64 %31, 1
  %33 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %34 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %33, i32 0, i32 0
  %35 = call i32 @atomic_long_sub(i64 %32, i32* %34)
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %38
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 1
  %49 = load %struct.ring_buffer*, %struct.ring_buffer** %48, align 8
  %50 = call i32 @rcu_assign_pointer(%struct.ring_buffer* %49, i32* null)
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %53 = call i32 @ring_buffer_detach(%struct.perf_event* %51, %struct.ring_buffer* %52)
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %58 = call i32 @ring_buffer_put(%struct.ring_buffer* %57)
  %59 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %60 = call i32 @free_uid(%struct.user_struct* %59)
  br label %61

61:                                               ; preds = %18, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i64 @perf_data_size(%struct.ring_buffer*) #1

declare dso_local i32 @atomic_long_sub(i64, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ring_buffer*, i32*) #1

declare dso_local i32 @ring_buffer_detach(%struct.perf_event*, %struct.ring_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ring_buffer_put(%struct.ring_buffer*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
