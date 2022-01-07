; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_restore_cpu_ipis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_restore_cpu_ipis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_ipi = type { i32, i32 }

@XEN_NR_IPIS = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@EVTCHNOP_bind_ipi = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@irq_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @restore_cpu_ipis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_cpu_ipis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evtchn_bind_ipi, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @XEN_NR_IPIS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = load i32, i32* @ipi_to_irq, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32* @per_cpu(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %53

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ipi_from_irq(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @EVTCHNOP_bind_ipi, align 4
  %31 = call i64 @HYPERVISOR_event_channel_op(i32 %30, %struct.evtchn_bind_ipi* %3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %21
  %36 = getelementptr inbounds %struct.evtchn_bind_ipi, %struct.evtchn_bind_ipi* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** @evtchn_to_irq, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mk_ipi_info(i32 %43, i32 %44)
  %46 = load i32*, i32** @irq_info, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @bind_evtchn_to_cpu(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %35, %20
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %7

56:                                               ; preds = %7
  ret void
}

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ipi_from_irq(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_ipi*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mk_ipi_info(i32, i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
