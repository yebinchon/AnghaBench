; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_packet_hardware_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_packet_hardware_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_helper_packet_hardware_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_packet_hardware_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @cvmx_helper_interface_get_mode(i32 %4)
  switch i32 %5, label %25 [
    i32 137, label %6
    i32 133, label %6
    i32 128, label %7
    i32 131, label %10
    i32 136, label %10
    i32 129, label %13
    i32 130, label %16
    i32 132, label %16
    i32 134, label %19
    i32 135, label %22
  ]

6:                                                ; preds = %1, %1
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @__cvmx_helper_xaui_enable(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %25

10:                                               ; preds = %1, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @__cvmx_helper_rgmii_enable(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @__cvmx_helper_spi_enable(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %1, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @__cvmx_helper_sgmii_enable(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @__cvmx_helper_npi_enable(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @__cvmx_helper_loop_enable(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %1, %22, %19, %16, %13, %10, %7, %6
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @__cvmx_helper_board_hardware_enable(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_enable(i32) #1

declare dso_local i32 @__cvmx_helper_rgmii_enable(i32) #1

declare dso_local i32 @__cvmx_helper_spi_enable(i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_enable(i32) #1

declare dso_local i32 @__cvmx_helper_npi_enable(i32) #1

declare dso_local i32 @__cvmx_helper_loop_enable(i32) #1

declare dso_local i32 @__cvmx_helper_board_hardware_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
