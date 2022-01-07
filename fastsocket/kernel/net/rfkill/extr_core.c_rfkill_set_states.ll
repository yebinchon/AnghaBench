; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_set_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_set_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32, i32, i32 }

@RFKILL_BLOCK_SW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfkill_set_states(%struct.rfkill* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %11 = icmp ne %struct.rfkill* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %16 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %15, i32 0, i32 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %20 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %29 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @__rfkill_set_sw_state(%struct.rfkill* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %44 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %45 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %52 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %57 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %56, i32 0, i32 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %61 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %66 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %82

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %67
  %76 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %77 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %76, i32 0, i32 2
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %81 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %80)
  br label %82

82:                                               ; preds = %79, %64
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rfkill_set_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
