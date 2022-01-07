; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_performance_monitor_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_get_performance_monitor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_bus_performance_monitor = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.vfe_irq_thread_msg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_bus_performance_monitor*, %struct.vfe_irq_thread_msg*)* @vfe_get_performance_monitor_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_get_performance_monitor_data(%struct.vfe_bus_performance_monitor* noalias sret %0, %struct.vfe_irq_thread_msg* %1) #0 {
  %3 = alloca %struct.vfe_irq_thread_msg*, align 8
  store %struct.vfe_irq_thread_msg* %1, %struct.vfe_irq_thread_msg** %3, align 8
  %4 = call i32 @memset(%struct.vfe_bus_performance_monitor* %0, i32 0, i32 32)
  %5 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %6 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %13 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %20 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %27 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %34 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %41 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %48 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %3, align 8
  %55 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.vfe_bus_performance_monitor, %struct.vfe_bus_performance_monitor* %0, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @memset(%struct.vfe_bus_performance_monitor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
