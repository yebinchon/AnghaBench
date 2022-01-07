; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i64, i64 }
%union.cvmx_gmxx_rxx_int_en = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@number_rgmii_ports = common dso_local global i64 0, align 8
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_rgmii_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %union.cvmx_gmxx_rxx_int_en, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_ethernet* %8, %struct.octeon_ethernet** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @cvm_oct_common_uninit(%struct.net_device* %9)
  %11 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21, %16
  %28 = call i32 (...) @octeon_is_simulation()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %27
  %31 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %32 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @INTERFACE(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %36 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @INDEX(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %39, i32 %40)
  %42 = call i32 @cvmx_read_csr(i32 %41)
  %43 = bitcast %union.cvmx_gmxx_rxx_int_en* %4 to i32*
  store i32 %42, i32* %43, align 8
  %44 = bitcast %union.cvmx_gmxx_rxx_int_en* %4 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = bitcast %union.cvmx_gmxx_rxx_int_en* %4 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = bitcast %union.cvmx_gmxx_rxx_int_en* %4 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %50, i32 %51)
  %53 = bitcast %union.cvmx_gmxx_rxx_int_en* %4 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cvmx_write_csr(i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %30, %27
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i64, i64* @number_rgmii_ports, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* @number_rgmii_ports, align 8
  %60 = load i64, i64* @number_rgmii_ports, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %64 = call i32 @free_irq(i32 %63, i64* @number_rgmii_ports)
  br label %65

65:                                               ; preds = %62, %57
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_common_uninit(%struct.net_device*) #1

declare dso_local i32 @octeon_is_simulation(...) #1

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_EN(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @free_irq(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
