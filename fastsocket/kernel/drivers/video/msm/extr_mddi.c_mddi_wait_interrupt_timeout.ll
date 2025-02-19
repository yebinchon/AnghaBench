; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_wait_interrupt_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_wait_interrupt_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddi_info = type { i32, i32, i32, i32 }

@INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddi_info*, i32, i32)* @mddi_wait_interrupt_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mddi_wait_interrupt_timeout(%struct.mddi_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mddi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mddi_info* %0, %struct.mddi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %9 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %8, i32 0, i32 3
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %15 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %20 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %24 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @INTEN, align 4
  %27 = call i32 @mddi_writel(i32 %25, i32 %26)
  %28 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %29 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %28, i32 0, i32 3
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %33 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mddi_info*, %struct.mddi_info** %4, align 8
  %36 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @wait_event_timeout(i32 %34, i32 %39, i32 %40)
  ret i64 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mddi_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
