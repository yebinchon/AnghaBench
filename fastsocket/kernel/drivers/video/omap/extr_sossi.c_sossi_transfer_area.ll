; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_sossi_transfer_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_sossi_transfer_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*)*, i32, i32, i32, i64, i32, i32, i32, i8* }

@sossi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WR_ACCESS = common dso_local global i32 0, align 4
@SOSSI_INIT1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, void (i8*)*, i8*)* @sossi_transfer_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sossi_transfer_area(i32 %0, i32 %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load void (i8*)*, void (i8*)** %7, align 8
  %11 = icmp eq void (i8*)* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load void (i8*)*, void (i8*)** %7, align 8
  store void (i8*)* %14, void (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 8), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 7), align 8
  %17 = call i32 @clk_enable(i32 %16)
  %18 = load i32, i32* @WR_ACCESS, align 4
  %19 = call i32 @set_timing(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 6), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 8
  %22 = call i32 @_set_bits_per_cycle(i32 %20, i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 4), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 5), align 8
  %25 = call i32 @_set_tearsync_mode(i64 %23, i32 %24)
  %26 = load i32, i32* @SOSSI_INIT1_REG, align 4
  %27 = call i32 @sossi_set_bits(i32 %26, i32 262144)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 8
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 8
  %34 = call i32 @set_cycles(i32 %33)
  %35 = call i32 (...) @sossi_start_transfer()
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 4), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 2), i64 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 3), align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 3), align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 2), i64 %43)
  br label %47

45:                                               ; preds = %4
  %46 = call i32 (...) @omap_enable_lcd_dma()
  br label %47

47:                                               ; preds = %45, %38
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @set_timing(i32) #1

declare dso_local i32 @_set_bits_per_cycle(i32, i32) #1

declare dso_local i32 @_set_tearsync_mode(i64, i32) #1

declare dso_local i32 @sossi_set_bits(i32, i32) #1

declare dso_local i32 @set_cycles(i32) #1

declare dso_local i32 @sossi_start_transfer(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap_enable_lcd_dma(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
