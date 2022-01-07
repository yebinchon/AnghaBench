; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_wq_cpu_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_wq_cpu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.workqueue_struct = type { i32 }

@cpu_singlethread_map = common dso_local global %struct.cpumask* null, align 8
@cpu_populated_map = common dso_local global %struct.cpumask* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpumask* (%struct.workqueue_struct*)* @wq_cpu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpumask* @wq_cpu_map(%struct.workqueue_struct* %0) #0 {
  %2 = alloca %struct.workqueue_struct*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %2, align 8
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %4 = call i64 @is_wq_single_threaded(%struct.workqueue_struct* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load %struct.cpumask*, %struct.cpumask** @cpu_singlethread_map, align 8
  br label %10

8:                                                ; preds = %1
  %9 = load %struct.cpumask*, %struct.cpumask** @cpu_populated_map, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi %struct.cpumask* [ %7, %6 ], [ %9, %8 ]
  ret %struct.cpumask* %11
}

declare dso_local i64 @is_wq_single_threaded(%struct.workqueue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
