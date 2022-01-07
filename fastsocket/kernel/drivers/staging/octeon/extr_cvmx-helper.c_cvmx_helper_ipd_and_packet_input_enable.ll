; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_ipd_and_packet_input_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_ipd_and_packet_input_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@OCTEON_CN31XX_PASS1 = common dso_local global i32 0, align 4
@OCTEON_CN30XX_PASS1 = common dso_local global i32 0, align 4
@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_ipd_and_packet_input_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cvmx_ipd_enable()
  %4 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @cvmx_helper_ports_on_interface(i32 %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @__cvmx_helper_packet_hardware_enable(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %5

20:                                               ; preds = %5
  %21 = call i32 (...) @cvmx_pko_enable()
  %22 = load i32, i32* @OCTEON_CN31XX_PASS1, align 4
  %23 = call i64 @OCTEON_IS_MODEL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @OCTEON_CN30XX_PASS1, align 4
  %27 = call i64 @OCTEON_IS_MODEL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %20
  %30 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @__cvmx_helper_errata_fix_ipd_ptr_alignment()
  br label %37

37:                                               ; preds = %35, %29, %25
  ret i32 0
}

declare dso_local i32 @cvmx_ipd_enable(...) #1

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i64 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @__cvmx_helper_packet_hardware_enable(i32) #1

declare dso_local i32 @cvmx_pko_enable(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @__cvmx_helper_errata_fix_ipd_ptr_alignment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
