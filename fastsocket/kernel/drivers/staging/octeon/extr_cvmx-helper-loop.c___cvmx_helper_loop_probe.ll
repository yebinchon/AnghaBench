; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-loop.c___cvmx_helper_loop_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-loop.c___cvmx_helper_loop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ipd_sub_port_fcs = type { i8* }
%union.cvmx_pip_prt_cfgx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@CVMX_IPD_SUB_PORT_FCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_loop_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_ipd_sub_port_fcs, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_pip_prt_cfgx, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cvmx_helper_get_ipd_port(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @CVMX_PIP_PRT_CFGX(i32 %16)
  %18 = call i8* @cvmx_read_csr(i32 %17)
  %19 = bitcast %union.cvmx_pip_prt_cfgx* %6 to i8**
  store i8* %18, i8** %19, align 8
  %20 = bitcast %union.cvmx_pip_prt_cfgx* %6 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = bitcast %union.cvmx_pip_prt_cfgx* %6 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @CVMX_PIP_PRT_CFGX(i32 %24)
  %26 = bitcast %union.cvmx_pip_prt_cfgx* %6 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @cvmx_write_csr(i32 %25, i8* %27)
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %34 = call i8* @cvmx_read_csr(i32 %33)
  %35 = bitcast %union.cvmx_ipd_sub_port_fcs* %3 to i8**
  store i8* %34, i8** %35, align 8
  %36 = bitcast %union.cvmx_ipd_sub_port_fcs* %3 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %39 = bitcast %union.cvmx_ipd_sub_port_fcs* %3 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @cvmx_write_csr(i32 %38, i8* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @cvmx_helper_get_ipd_port(i32, i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_PRT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
