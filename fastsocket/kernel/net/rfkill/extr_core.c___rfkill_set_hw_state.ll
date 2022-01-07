; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c___rfkill_set_hw_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c___rfkill_set_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32 }

@RFKILL_BLOCK_HW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfkill*, i32, i32*)* @__rfkill_set_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rfkill_set_hw_state(%struct.rfkill* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %11 = icmp ne %struct.rfkill* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %16 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %20 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %32 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %33 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %40 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %50 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RFKILL_BLOCK_ANY, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %55 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %54, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %59 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
