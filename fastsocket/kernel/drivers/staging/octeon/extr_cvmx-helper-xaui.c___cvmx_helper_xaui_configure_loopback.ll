; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_configure_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_configure_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcsxx_control1_reg = type { i8* }
%union.cvmx_gmxx_xaui_ext_loopback = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_xaui_configure_loopback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_pcsxx_control1_reg, align 8
  %9 = alloca %union.cvmx_gmxx_xaui_ext_loopback, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cvmx_helper_get_interface_num(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @CVMX_PCSXX_CONTROL1_REG(i32 %12)
  %14 = call i8* @cvmx_read_csr(i32 %13)
  %15 = bitcast %union.cvmx_pcsxx_control1_reg* %8 to i8**
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = bitcast %union.cvmx_pcsxx_control1_reg* %8 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CVMX_PCSXX_CONTROL1_REG(i32 %19)
  %21 = bitcast %union.cvmx_pcsxx_control1_reg* %8 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @cvmx_write_csr(i32 %20, i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @CVMX_GMXX_XAUI_EXT_LOOPBACK(i32 %24)
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = bitcast %union.cvmx_gmxx_xaui_ext_loopback* %9 to i8**
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %union.cvmx_gmxx_xaui_ext_loopback* %9 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @CVMX_GMXX_XAUI_EXT_LOOPBACK(i32 %31)
  %33 = bitcast %union.cvmx_gmxx_xaui_ext_loopback* %9 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cvmx_write_csr(i32 %32, i8* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @__cvmx_helper_xaui_enable(i32 %36)
  ret i32 %37
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PCSXX_CONTROL1_REG(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_GMXX_XAUI_EXT_LOOPBACK(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
