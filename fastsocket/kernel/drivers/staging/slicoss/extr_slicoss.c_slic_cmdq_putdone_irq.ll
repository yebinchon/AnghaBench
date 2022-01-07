; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_putdone_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_putdone_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, %struct.slic_cmdqueue }
%struct.slic_cmdqueue = type { i32, %struct.TYPE_2__, %struct.slic_hostcmd* }
%struct.TYPE_2__ = type { i32 }
%struct.slic_hostcmd = type { %struct.slic_hostcmd*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.slic_hostcmd*)* @slic_cmdq_putdone_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_cmdq_putdone_irq(%struct.adapter* %0, %struct.slic_hostcmd* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.slic_hostcmd*, align 8
  %5 = alloca %struct.slic_cmdqueue*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.slic_hostcmd* %1, %struct.slic_hostcmd** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 2
  store %struct.slic_cmdqueue* %7, %struct.slic_cmdqueue** %5, align 8
  %8 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %9 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %13 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %15 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %14, i32 0, i32 2
  %16 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %15, align 8
  %17 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %18 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %17, i32 0, i32 0
  store %struct.slic_hostcmd* %16, %struct.slic_hostcmd** %18, align 8
  %19 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %20 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %21 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %20, i32 0, i32 2
  store %struct.slic_hostcmd* %19, %struct.slic_hostcmd** %21, align 8
  %22 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %23 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %32 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_wake_queue(i32 %38)
  br label %40

40:                                               ; preds = %35, %30, %2
  %41 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %5, align 8
  %42 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
