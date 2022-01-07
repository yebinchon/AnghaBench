; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_getdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_getdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.slic_cmdqueue, %struct.slic_cmdqueue }
%struct.slic_cmdqueue = type { %struct.TYPE_2__, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_cmdq_getdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_cmdq_getdone(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_cmdqueue*, align 8
  %4 = alloca %struct.slic_cmdqueue*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.slic_cmdqueue* %6, %struct.slic_cmdqueue** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.slic_cmdqueue* %8, %struct.slic_cmdqueue** %4, align 8
  %9 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %4, align 8
  %10 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %16 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %19 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %17, i32 %21)
  %23 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %24 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %4, align 8
  %27 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %29 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %4, align 8
  %32 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %34 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %36 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %38 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %40 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %43 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %41, i32 %45)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
