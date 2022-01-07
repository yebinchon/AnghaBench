; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_io.c_oxygen_reset_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_io.c_oxygen_reset_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@MPU401_RESET = common dso_local global i32 0, align 4
@MPU401_ENTER_UART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_reset_uart(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %3 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %4 = load i32, i32* @MPU401_RESET, align 4
  %5 = call i32 @_write_uart(%struct.oxygen* %3, i32 1, i32 %4)
  %6 = call i32 @msleep(i32 1)
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i32, i32* @MPU401_ENTER_UART, align 4
  %9 = call i32 @_write_uart(%struct.oxygen* %7, i32 1, i32 %8)
  ret void
}

declare dso_local i32 @_write_uart(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
