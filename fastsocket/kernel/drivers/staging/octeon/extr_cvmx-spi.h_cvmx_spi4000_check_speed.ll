; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.h_cvmx_spi4000_check_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.h_cvmx_spi4000_check_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_rxx_rx_inbnd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @cvmx_spi4000_check_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cvmx_spi4000_check_speed(i32 %0, i32 %1) #0 {
  %3 = alloca %union.cvmx_gmxx_rxx_rx_inbnd, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %3 to i64*
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %union.cvmx_gmxx_rxx_rx_inbnd, %union.cvmx_gmxx_rxx_rx_inbnd* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
