; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_hg2_control = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%union.cvmx_gmxx_inf_mode = type { i8* }
%union.cvmx_pko_mem_port_ptrs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@CVMX_PKO_MEM_PORT_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_xaui_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_hg2_control, align 8
  %6 = alloca %union.cvmx_gmxx_inf_mode, align 8
  %7 = alloca %union.cvmx_pko_mem_port_ptrs, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CVMX_GMXX_INF_MODE(i32 %8)
  %10 = call i8* @cvmx_read_csr(i32 %9)
  %11 = bitcast %union.cvmx_gmxx_inf_mode* %6 to i8**
  store i8* %10, i8** %11, align 8
  %12 = bitcast %union.cvmx_gmxx_inf_mode* %6 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @CVMX_GMXX_INF_MODE(i32 %14)
  %16 = bitcast %union.cvmx_gmxx_inf_mode* %6 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @cvmx_write_csr(i32 %15, i8* %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @__cvmx_helper_setup_gmx(i32 %19, i32 1)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %44, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to i8**
  store i8* null, i8** %25, align 8
  %26 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, 4
  %32 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %3, align 4
  %35 = mul nsw i32 %34, 16
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @CVMX_PKO_MEM_PORT_PTRS, align 4
  %41 = bitcast %union.cvmx_pko_mem_port_ptrs* %7 to i8**
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @cvmx_write_csr(i32 %40, i8* %42)
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CVMX_GMXX_HG2_CONTROL(i32 %48)
  %50 = call i8* @cvmx_read_csr(i32 %49)
  %51 = bitcast %union.cvmx_gmxx_hg2_control* %5 to i8**
  store i8* %50, i8** %51, align 8
  %52 = bitcast %union.cvmx_gmxx_hg2_control* %5 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 16, i32* %2, align 4
  br label %58

57:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @__cvmx_helper_setup_gmx(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_HG2_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
