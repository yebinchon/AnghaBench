; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%union.cvmx_gmxx_prtx_cfg = type { i64 }
%struct.octeon_ethernet = type { i32 }
%union.cvmx_gmxx_rxx_adr_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_common_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_common_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_gmxx_rxx_adr_ctl, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %4, align 8
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INTERFACE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INDEX(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %110

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @cvmx_helper_interface_get_mode(i32 %21)
  %23 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %20
  %26 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to i32*
  store i32 0, i32* %26, align 4
  %27 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %33, %25
  %48 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 2, i32* %49, align 4
  br label %53

50:                                               ; preds = %40
  %51 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IFF_PROMISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  br label %66

63:                                               ; preds = %53
  %64 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %67, i32 %68)
  %70 = call i64 @cvmx_read_csr(i32 %69)
  %71 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %72, i32 %73)
  %75 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, -2
  %78 = trunc i64 %77 to i32
  %79 = call i32 @cvmx_write_csr(i32 %74, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @CVMX_GMXX_RXX_ADR_CTL(i32 %80, i32 %81)
  %83 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %7 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cvmx_write_csr(i32 %82, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IFF_PROMISC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %66
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32 %93, i32 %94)
  %96 = call i32 @cvmx_write_csr(i32 %95, i32 0)
  br label %102

97:                                               ; preds = %66
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32 %98, i32 %99)
  %101 = call i32 @cvmx_write_csr(i32 %100, i32 1)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %103, i32 %104)
  %106 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @cvmx_write_csr(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %20, %1
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CTL(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
