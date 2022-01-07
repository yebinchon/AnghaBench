; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.octeon_ethernet = type { i64, i64, i32 }
%union.cvmx_gmxx_rxx_int_en = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@number_rgmii_ports = common dso_local global i64 0, align 8
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4
@cvm_oct_rgmii_rml_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"RGMII\00", align 1
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@cvm_oct_rgmii_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_rgmii_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_rxx_int_en, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @cvm_oct_common_init(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.net_device*)**
  %17 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 %17(%struct.net_device* %18)
  %20 = load i64, i64* @number_rgmii_ports, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %24 = load i32, i32* @cvm_oct_rgmii_rml_interrupt, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = call i32 @request_irq(i32 %23, i32 %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* @number_rgmii_ports)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i64, i64* @number_rgmii_ports, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @number_rgmii_ports, align 8
  %30 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %40, %35
  %47 = call i32 (...) @octeon_is_simulation()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %46
  %50 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @INTERFACE(i64 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @INDEX(i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %58, i32 %59)
  %61 = call i32 @cvmx_read_csr(i32 %60)
  %62 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to i32*
  store i32 %61, i32* %62, align 4
  %63 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %69, i32 %70)
  %72 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cvmx_write_csr(i32 %71, i32 %73)
  %75 = load i32, i32* @cvm_oct_rgmii_poll, align 4
  %76 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %77 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %49, %46
  br label %79

79:                                               ; preds = %78, %40
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_common_init(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @octeon_is_simulation(...) #1

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_EN(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
