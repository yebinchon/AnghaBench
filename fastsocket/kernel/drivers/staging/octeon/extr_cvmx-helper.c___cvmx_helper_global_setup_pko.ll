; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_global_setup_pko.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_global_setup_pko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_iob_fau_timeout = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@CVMX_IOB_FAU_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__cvmx_helper_global_setup_pko to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_global_setup_pko() #0 {
  %1 = alloca %union.cvmx_iob_fau_timeout, align 8
  %2 = bitcast %union.cvmx_iob_fau_timeout* %1 to i64*
  store i64 0, i64* %2, align 8
  %3 = bitcast %union.cvmx_iob_fau_timeout* %1 to %struct.TYPE_2__*
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 4095, i32* %4, align 8
  %5 = bitcast %union.cvmx_iob_fau_timeout* %1 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CVMX_IOB_FAU_TIMEOUT, align 4
  %8 = bitcast %union.cvmx_iob_fau_timeout* %1 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @cvmx_write_csr(i32 %7, i64 %9)
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
