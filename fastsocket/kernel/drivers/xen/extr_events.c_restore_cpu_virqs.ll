; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_restore_cpu_virqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_restore_cpu_virqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_bind_virq = type { i32, i32, i32 }

@NR_VIRQS = common dso_local global i32 0, align 4
@virq_to_irq = common dso_local global i32 0, align 4
@EVTCHNOP_bind_virq = common dso_local global i32 0, align 4
@evtchn_to_irq = common dso_local global i32* null, align 8
@irq_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @restore_cpu_virqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_cpu_virqs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evtchn_bind_virq, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NR_VIRQS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load i32, i32* @virq_to_irq, align 4
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
  br label %55

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @virq_from_irq(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %3, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @EVTCHNOP_bind_virq, align 4
  %33 = call i64 @HYPERVISOR_event_channel_op(i32 %32, %struct.evtchn_bind_virq* %3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %21
  %38 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %3, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** @evtchn_to_irq, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @mk_virq_info(i32 %45, i32 %46)
  %48 = load i32*, i32** @irq_info, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @bind_evtchn_to_cpu(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %37, %20
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @virq_from_irq(i32) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_virq*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mk_virq_info(i32, i32) #1

declare dso_local i32 @bind_evtchn_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
