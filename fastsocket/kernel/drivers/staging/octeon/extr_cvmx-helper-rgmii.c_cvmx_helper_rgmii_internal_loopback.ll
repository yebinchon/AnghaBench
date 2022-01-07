; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c_cvmx_helper_rgmii_internal_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c_cvmx_helper_rgmii_internal_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_prtx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_helper_rgmii_internal_loopback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 4
  %9 = and i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 15
  store i32 %11, i32* %4, align 4
  %12 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  store i32 0, i32* %12, align 4
  %13 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @CVMX_GMXX_TXX_CLK(i32 %19, i32 %20)
  %22 = call i32 @cvmx_write_csr(i32 %21, i32 1)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @CVMX_GMXX_TXX_SLOT(i32 %23, i32 %24)
  %26 = call i32 @cvmx_write_csr(i32 %25, i32 512)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @CVMX_GMXX_TXX_BURST(i32 %27, i32 %28)
  %30 = call i32 @cvmx_write_csr(i32 %29, i32 8192)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %31, i32 %32)
  %34 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cvmx_write_csr(i32 %33, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @CVMX_ASXX_PRT_LOOP(i32 %37)
  %39 = call i32 @cvmx_read_csr(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CVMX_ASXX_PRT_LOOP(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cvmx_write_csr(i32 %41, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @CVMX_ASXX_TX_PRT_EN(i32 %47)
  %49 = call i32 @cvmx_read_csr(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @CVMX_ASXX_TX_PRT_EN(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @cvmx_write_csr(i32 %51, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @CVMX_ASXX_RX_PRT_EN(i32 %57)
  %59 = call i32 @cvmx_read_csr(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @CVMX_ASXX_RX_PRT_EN(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @cvmx_write_csr(i32 %61, i32 %65)
  %67 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %69, i32 %70)
  %72 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cvmx_write_csr(i32 %71, i32 %73)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_CLK(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_SLOT(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_BURST(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_ASXX_PRT_LOOP(i32) #1

declare dso_local i32 @CVMX_ASXX_TX_PRT_EN(i32) #1

declare dso_local i32 @CVMX_ASXX_RX_PRT_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
