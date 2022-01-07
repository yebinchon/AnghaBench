; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_bind_ipi_to_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_bind_ipi_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_ipi = type { i32, i32 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@xen_percpu_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipi\00", align 1
@EVTCHNOP_bind_ipi = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@irq_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bind_ipi_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_ipi_to_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_bind_ipi, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %9 = load i32, i32* @ipi_to_irq, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @per_cpu(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = call i32 (...) @find_unbound_irq()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %60

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @handle_percpu_irq, align 4
  %26 = call i32 @set_irq_chip_and_handler_name(i32 %24, i32* @xen_percpu_chip, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @EVTCHNOP_bind_ipi, align 4
  %30 = call i64 @HYPERVISOR_event_channel_op(i32 %29, %struct.evtchn_bind_ipi* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %23
  %35 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** @evtchn_to_irq, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @mk_ipi_info(i32 %42, i32 %43)
  %45 = load i32*, i32** @irq_info, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ipi_to_irq, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32* @per_cpu(i32 %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @bind_evtchn_to_cpu(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %34, %2
  br label %60

60:                                               ; preds = %59, %22
  %61 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @find_unbound_irq(...) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_ipi*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mk_ipi_info(i32, i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
