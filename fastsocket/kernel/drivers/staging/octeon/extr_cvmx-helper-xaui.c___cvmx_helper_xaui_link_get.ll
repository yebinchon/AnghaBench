; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_link_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%union.cvmx_gmxx_tx_xaui_ctl = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.cvmx_gmxx_rx_xaui_ctl = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%union.cvmx_pcsxx_status1_reg = type { i8* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_xaui_link_get(%struct.TYPE_11__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_tx_xaui_ctl, align 8
  %6 = alloca %union.cvmx_gmxx_rx_xaui_ctl, align 8
  %7 = alloca %union.cvmx_pcsxx_status1_reg, align 8
  store i32 %1, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cvmx_helper_get_interface_num(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CVMX_GMXX_TX_XAUI_CTL(i32 %10)
  %12 = call i8* @cvmx_read_csr(i32 %11)
  %13 = bitcast %union.cvmx_gmxx_tx_xaui_ctl* %5 to i8**
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @CVMX_GMXX_RX_XAUI_CTL(i32 %14)
  %16 = call i8* @cvmx_read_csr(i32 %15)
  %17 = bitcast %union.cvmx_gmxx_rx_xaui_ctl* %6 to i8**
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CVMX_PCSXX_STATUS1_REG(i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = bitcast %union.cvmx_pcsxx_status1_reg* %7 to i8**
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = bitcast %union.cvmx_gmxx_tx_xaui_ctl* %5 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = bitcast %union.cvmx_gmxx_rx_xaui_ctl* %6 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = bitcast %union.cvmx_pcsxx_status1_reg* %7 to %struct.TYPE_9__*
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32 10000, i32* %43, align 8
  br label %54

44:                                               ; preds = %32, %27, %2
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 0, i32 %45)
  %47 = call i32 @cvmx_write_csr(i32 %46, i32 0)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CVMX_GMXX_TX_INT_EN(i32 %48)
  %50 = call i32 @cvmx_write_csr(i32 %49, i32 0)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @CVMX_PCSXX_INT_EN_REG(i32 %51)
  %53 = call i32 @cvmx_write_csr(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %44, %37
  ret void
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_XAUI_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_RX_XAUI_CTL(i32) #1

declare dso_local i32 @CVMX_PCSXX_STATUS1_REG(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_EN(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TX_INT_EN(i32) #1

declare dso_local i32 @CVMX_PCSXX_INT_EN_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
