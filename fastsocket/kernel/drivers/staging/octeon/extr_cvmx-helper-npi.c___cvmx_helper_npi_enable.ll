; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-npi.c___cvmx_helper_npi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-npi.c___cvmx_helper_npi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pip_prt_cfgx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_npi_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_pip_prt_cfgx, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @OCTEON_CN3XXX, align 4
  %8 = call i32 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @OCTEON_CN58XX, align 4
  %12 = call i32 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cvmx_helper_ports_on_interface(i32 %15)
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cvmx_helper_get_ipd_port(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @CVMX_PIP_PRT_CFGX(i32 %25)
  %27 = call i32 @cvmx_read_csr(i32 %26)
  %28 = bitcast %union.cvmx_pip_prt_cfgx* %5 to i32*
  store i32 %27, i32* %28, align 8
  %29 = bitcast %union.cvmx_pip_prt_cfgx* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.cvmx_pip_prt_cfgx* %5 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CVMX_PIP_PRT_CFGX(i32 %33)
  %35 = bitcast %union.cvmx_pip_prt_cfgx* %5 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41, %10, %1
  ret i32 0
}

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_helper_get_ipd_port(i32, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
