; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_configure_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_configure_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcsx_mrx_control_reg = type { i8* }
%union.cvmx_pcsx_miscx_ctl_reg = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_sgmii_configure_loopback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_pcsx_mrx_control_reg, align 8
  %10 = alloca %union.cvmx_pcsx_miscx_ctl_reg, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @cvmx_helper_get_interface_num(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cvmx_helper_get_interface_index_num(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @CVMX_PCSX_MRX_CONTROL_REG(i32 %15, i32 %16)
  %18 = call i8* @cvmx_read_csr(i32 %17)
  %19 = bitcast %union.cvmx_pcsx_mrx_control_reg* %9 to i8**
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = bitcast %union.cvmx_pcsx_mrx_control_reg* %9 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @CVMX_PCSX_MRX_CONTROL_REG(i32 %23, i32 %24)
  %26 = bitcast %union.cvmx_pcsx_mrx_control_reg* %9 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @cvmx_write_csr(i32 %25, i8* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %29, i32 %30)
  %32 = call i8* @cvmx_read_csr(i32 %31)
  %33 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %10 to i8**
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %10 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %37, i32 %38)
  %40 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %10 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @cvmx_write_csr(i32 %39, i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @__cvmx_helper_sgmii_hardware_init_link(i32 %43, i32 %44)
  ret i32 0
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PCSX_MRX_CONTROL_REG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_PCSX_MISCX_CTL_REG(i32, i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_hardware_init_link(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
