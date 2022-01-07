; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c_cvmx_helper_setup_red.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c_cvmx_helper_setup_red.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ipd_portx_bp_page_cnt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%union.cvmx_ipd_bp_prt_red_end = type { i64 }
%union.cvmx_ipd_red_port_enable = type { i64, [8 x i8] }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CVMX_IPD_BP_PRT_RED_END = common dso_local global i32 0, align 4
@CVMX_IPD_RED_PORT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_setup_red(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_ipd_portx_bp_page_cnt, align 8
  %6 = alloca %union.cvmx_ipd_bp_prt_red_end, align 8
  %7 = alloca %union.cvmx_ipd_red_port_enable, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = bitcast %union.cvmx_ipd_portx_bp_page_cnt* %5 to i64*
  store i64 0, i64* %11, align 8
  %12 = bitcast %union.cvmx_ipd_portx_bp_page_cnt* %5 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.cvmx_ipd_portx_bp_page_cnt* %5 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 100, i32* %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @cvmx_helper_get_first_ipd_port(i32 %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %33, %19
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @cvmx_helper_get_last_ipd_port(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @CVMX_IPD_PORTX_BP_PAGE_CNT(i32 %28)
  %30 = bitcast %union.cvmx_ipd_portx_bp_page_cnt* %5 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cvmx_write_csr(i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %22

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cvmx_helper_setup_red_queue(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %41

52:                                               ; preds = %41
  %53 = bitcast %union.cvmx_ipd_bp_prt_red_end* %6 to i64*
  store i64 0, i64* %53, align 8
  %54 = bitcast %union.cvmx_ipd_bp_prt_red_end* %6 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @CVMX_IPD_BP_PRT_RED_END, align 4
  %57 = bitcast %union.cvmx_ipd_bp_prt_red_end* %6 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @cvmx_write_csr(i32 %56, i64 %58)
  %60 = bitcast %union.cvmx_ipd_red_port_enable* %7 to i64*
  store i64 0, i64* %60, align 8
  %61 = bitcast %union.cvmx_ipd_red_port_enable* %7 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = bitcast %union.cvmx_ipd_red_port_enable* %7 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 10000, i32* %64, align 4
  %65 = bitcast %union.cvmx_ipd_red_port_enable* %7 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 10000, i32* %66, align 8
  %67 = load i32, i32* @CVMX_IPD_RED_PORT_ENABLE, align 4
  %68 = bitcast %union.cvmx_ipd_red_port_enable* %7 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @cvmx_write_csr(i32 %67, i64 %69)
  ret i32 0
}

declare dso_local i32 @cvmx_helper_get_first_ipd_port(i32) #1

declare dso_local i32 @cvmx_helper_get_last_ipd_port(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_IPD_PORTX_BP_PAGE_CNT(i32) #1

declare dso_local i32 @cvmx_helper_setup_red_queue(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
