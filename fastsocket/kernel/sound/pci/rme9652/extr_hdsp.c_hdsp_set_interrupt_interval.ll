; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_interrupt_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_interrupt_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32 }

@HDSP_LatencyMask = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_interrupt_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_interrupt_interval(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %7 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 7
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %14, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %11

19:                                               ; preds = %11
  %20 = load i32, i32* @HDSP_LatencyMask, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hdsp_encode_latency(i32 %26)
  %28 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %33 = load i32, i32* @HDSP_controlRegister, align 4
  %34 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %35 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hdsp_write(%struct.hdsp* %32, i32 %33, i32 %36)
  %38 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %39 = call i32 @hdsp_compute_period_size(%struct.hdsp* %38)
  %40 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %41 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdsp_encode_latency(i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_compute_period_size(%struct.hdsp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
