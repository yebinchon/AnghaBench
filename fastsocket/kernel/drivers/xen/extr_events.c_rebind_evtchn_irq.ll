; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_rebind_evtchn_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_rebind_evtchn_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i64 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@IRQT_UNBOUND = common dso_local global i64 0, align 8
@irq_info = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rebind_evtchn_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.irq_info* @info_for_irq(i32 %6)
  store %struct.irq_info* %7, %struct.irq_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @disable_irq(i32 %8)
  %10 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %11 = load i32*, i32** @evtchn_to_irq, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.irq_info*, %struct.irq_info** %5, align 8
  %20 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IRQT_UNBOUND, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** @evtchn_to_irq, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mk_evtchn_info(i32 %31)
  %33 = load i32*, i32** @irq_info, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @cpumask_of(i32 0)
  %40 = call i32 @irq_set_affinity(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @enable_irq(i32 %41)
  ret void
}

declare dso_local %struct.irq_info* @info_for_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mk_evtchn_info(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
