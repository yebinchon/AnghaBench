; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_unbind_from_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_unbind_from_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.evtchn_close = type { i32 }

@irq_mapping_update_lock = common dso_local global i32 0, align 4
@EVTCHNOP_close = common dso_local global i32 0, align 4
@virq_to_irq = common dso_local global i32 0, align 4
@ipi_to_irq = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@irq_info = common dso_local global %struct.TYPE_3__* null, align 8
@IRQT_UNBOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unbind_from_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unbind_from_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evtchn_close, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @evtchn_from_irq(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @VALID_EVTCHN(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.evtchn_close, %struct.evtchn_close* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @EVTCHNOP_close, align 4
  %16 = call i64 @HYPERVISOR_event_channel_op(i32 %15, %struct.evtchn_close* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @type_from_irq(i32 %21)
  switch i32 %22, label %39 [
    i32 128, label %23
    i32 129, label %31
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* @virq_to_irq, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cpu_from_evtchn(i32 %25)
  %27 = call i32* @per_cpu(i32 %24, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @virq_from_irq(i32 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 -1, i32* %30, align 4
  br label %40

31:                                               ; preds = %20
  %32 = load i32, i32* @ipi_to_irq, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @cpu_from_evtchn(i32 %33)
  %35 = call i32* @per_cpu(i32 %32, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @ipi_from_irq(i32 %36)
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 -1, i32* %38, align 4
  br label %40

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %31, %23
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bind_evtchn_to_cpu(i32 %41, i32 0)
  %43 = load i32*, i32** @evtchn_to_irq, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 -1, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_info, align 8
  %49 = load i32, i32* %2, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IRQT_UNBOUND, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_info, align 8
  %58 = load i32, i32* %2, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = call i64 (...) @mk_unbound_info()
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = bitcast %struct.TYPE_3__* %60 to i8*
  %64 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @dynamic_irq_cleanup(i32 %65)
  br label %67

67:                                               ; preds = %56, %47
  %68 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  ret void
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @VALID_EVTCHN(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_close*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @type_from_irq(i32) #1

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @cpu_from_evtchn(i32) #1

declare dso_local i64 @virq_from_irq(i32) #1

declare dso_local i64 @ipi_from_irq(i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

declare dso_local i64 @mk_unbound_info(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dynamic_irq_cleanup(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
