; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_link_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_link_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.cvmx_gmxx_tx_xaui_ctl = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.cvmx_gmxx_rx_xaui_ctl = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_xaui_link_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_gmxx_tx_xaui_ctl, align 8
  %8 = alloca %union.cvmx_gmxx_rx_xaui_ctl, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store i32 %0, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cvmx_helper_get_interface_num(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CVMX_GMXX_TX_XAUI_CTL(i32 %13)
  %15 = call i8* @cvmx_read_csr(i32 %14)
  %16 = bitcast %union.cvmx_gmxx_tx_xaui_ctl* %7 to i8**
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @CVMX_GMXX_RX_XAUI_CTL(i32 %17)
  %19 = call i8* @cvmx_read_csr(i32 %18)
  %20 = bitcast %union.cvmx_gmxx_rx_xaui_ctl* %8 to i8**
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

26:                                               ; preds = %2
  %27 = bitcast %union.cvmx_gmxx_tx_xaui_ctl* %7 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = bitcast %union.cvmx_gmxx_rx_xaui_ctl* %8 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @__cvmx_helper_xaui_enable(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %36, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_XAUI_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_RX_XAUI_CTL(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
