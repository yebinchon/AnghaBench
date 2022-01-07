; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_initial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.wb35_rx }
%struct.wb35_rx = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Rx_initial(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_rx*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %4, i32 0, i32 0
  store %struct.wb35_rx* %5, %struct.wb35_rx** %3, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = call i32 @Wb35Rx_reset_descriptor(%struct.hw_data* %6)
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i32 @usb_alloc_urb(i32 0, i32 %8)
  %10 = load %struct.wb35_rx*, %struct.wb35_rx** %3, align 8
  %11 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.wb35_rx*, %struct.wb35_rx** %3, align 8
  %13 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

declare dso_local i32 @Wb35Rx_reset_descriptor(%struct.hw_data*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
