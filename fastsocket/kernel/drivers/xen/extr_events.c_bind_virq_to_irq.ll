; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_bind_virq_to_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_bind_virq_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_virq = type { i32, i32, i32 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@virq_to_irq = common dso_local global i32 0, align 4
@xen_percpu_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"virq\00", align 1
@EVTCHNOP_bind_virq = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@irq_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bind_virq_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_virq_to_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_bind_virq, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %9 = load i32, i32* @virq_to_irq, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @per_cpu(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = call i32 (...) @find_unbound_irq()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @handle_percpu_irq, align 4
  %22 = call i32 @set_irq_chip_and_handler_name(i32 %20, i32* @xen_percpu_chip, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @EVTCHNOP_bind_virq, align 4
  %28 = call i64 @HYPERVISOR_event_channel_op(i32 %27, %struct.evtchn_bind_virq* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %30, %18
  %33 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** @evtchn_to_irq, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @mk_virq_info(i32 %40, i32 %41)
  %43 = load i32*, i32** @irq_info, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @virq_to_irq, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32* @per_cpu(i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @bind_evtchn_to_cpu(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %32, %2
  %58 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @find_unbound_irq(...) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_virq*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mk_virq_info(i32, i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
