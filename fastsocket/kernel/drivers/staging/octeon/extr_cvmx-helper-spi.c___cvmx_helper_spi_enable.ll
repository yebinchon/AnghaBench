; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-spi.c___cvmx_helper_spi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-spi.c___cvmx_helper_spi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pip_prt_cfgx = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@CVMX_SPI_MODE_DUPLEX = common dso_local global i32 0, align 4
@CVMX_HELPER_SPI_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_spi_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_pip_prt_cfgx, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cvmx_helper_ports_on_interface(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %8, 16
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 16
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CVMX_PIP_PRT_CFGX(i32 %18)
  %20 = call i32 @cvmx_read_csr(i32 %19)
  %21 = bitcast %union.cvmx_pip_prt_cfgx* %5 to i32*
  store i32 %20, i32* %21, align 4
  %22 = bitcast %union.cvmx_pip_prt_cfgx* %5 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CVMX_PIP_PRT_CFGX(i32 %24)
  %26 = bitcast %union.cvmx_pip_prt_cfgx* %5 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cvmx_write_csr(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %10

32:                                               ; preds = %10
  %33 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @CVMX_SPI_MODE_DUPLEX, align 4
  %41 = load i32, i32* @CVMX_HELPER_SPI_TIMEOUT, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @cvmx_spi_start_interface(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @cvmx_spi4000_is_present(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @cvmx_spi4000_initialize(i32 %48)
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @__cvmx_interrupt_spxx_int_msk_enable(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @__cvmx_interrupt_stxx_int_msk_enable(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @__cvmx_interrupt_gmxx_enable(i32 %56)
  ret i32 0
}

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_spi_start_interface(i32, i32, i32, i32) #1

declare dso_local i64 @cvmx_spi4000_is_present(i32) #1

declare dso_local i32 @cvmx_spi4000_initialize(i32) #1

declare dso_local i32 @__cvmx_interrupt_spxx_int_msk_enable(i32) #1

declare dso_local i32 @__cvmx_interrupt_stxx_int_msk_enable(i32) #1

declare dso_local i32 @__cvmx_interrupt_gmxx_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
