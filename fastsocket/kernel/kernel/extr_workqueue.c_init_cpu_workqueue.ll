; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_init_cpu_workqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_init_cpu_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32, i32, i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_workqueue_struct* (%struct.workqueue_struct*, i32)* @init_cpu_workqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_workqueue_struct* @init_cpu_workqueue(%struct.workqueue_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_workqueue_struct*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %7 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cpu_workqueue_struct* @per_cpu_ptr(i32 %8, i32 %9)
  store %struct.cpu_workqueue_struct* %10, %struct.cpu_workqueue_struct** %5, align 8
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %12 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %5, align 8
  %13 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %12, i32 0, i32 3
  store %struct.workqueue_struct* %11, %struct.workqueue_struct** %13, align 8
  %14 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %5, align 8
  %15 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %5, align 8
  %18 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %20, i32 0, i32 0
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %5, align 8
  ret %struct.cpu_workqueue_struct* %23
}

declare dso_local %struct.cpu_workqueue_struct* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
