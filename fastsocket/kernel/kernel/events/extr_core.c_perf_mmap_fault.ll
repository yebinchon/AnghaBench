; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_mmap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.vm_fault = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ring_buffer = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@FAULT_FLAG_MKWRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @perf_mmap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_mmap_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.ring_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %6, align 8
  %14 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FAULT_FLAG_MKWRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %2
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ring_buffer* @rcu_dereference(i32 %33)
  store %struct.ring_buffer* %34, %struct.ring_buffer** %7, align 8
  %35 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %36 = icmp ne %struct.ring_buffer* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %85

38:                                               ; preds = %29
  %39 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %85

51:                                               ; preds = %43, %38
  %52 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %53 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_5__* @perf_mmap_to_page(%struct.ring_buffer* %52, i32 %55)
  %57 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %58 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %57, i32 0, i32 2
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %60 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %85

64:                                               ; preds = %51
  %65 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %66 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = call i32 @get_page(%struct.TYPE_5__* %67)
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %79 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %82 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %64, %63, %50, %37
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %27
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ring_buffer* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_5__* @perf_mmap_to_page(%struct.ring_buffer*, i32) #1

declare dso_local i32 @get_page(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
