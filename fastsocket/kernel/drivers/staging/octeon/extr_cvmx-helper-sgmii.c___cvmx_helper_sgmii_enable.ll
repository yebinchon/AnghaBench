; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_prtx_cfg = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_sgmii_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cvmx_helper_ports_on_interface(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @__cvmx_helper_sgmii_hardware_init(i32 %8, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %16, i32 %17)
  %19 = call i32 @cvmx_read_csr(i32 %18)
  %20 = bitcast %union.cvmx_gmxx_prtx_cfg* %5 to i32*
  store i32 %19, i32* %20, align 4
  %21 = bitcast %union.cvmx_gmxx_prtx_cfg* %5 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %23, i32 %24)
  %26 = bitcast %union.cvmx_gmxx_prtx_cfg* %5 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cvmx_write_csr(i32 %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @__cvmx_interrupt_pcsx_intx_en_reg_enable(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @__cvmx_interrupt_pcsxx_int_en_reg_enable(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @__cvmx_interrupt_gmxx_enable(i32 %38)
  ret i32 0
}

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_hardware_init(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @__cvmx_interrupt_pcsx_intx_en_reg_enable(i32, i32) #1

declare dso_local i32 @__cvmx_interrupt_pcsxx_int_en_reg_enable(i32) #1

declare dso_local i32 @__cvmx_interrupt_gmxx_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
