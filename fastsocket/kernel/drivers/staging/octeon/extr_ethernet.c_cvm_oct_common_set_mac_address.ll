; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { i64 }

@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @cvm_oct_common_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_common_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_ethernet*, align 8
  %6 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %12)
  store %struct.octeon_ethernet* %13, %struct.octeon_ethernet** %5, align 8
  %14 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %15 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INTERFACE(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %19 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @INDEX(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr i8, i8* %25, i64 2
  %27 = call i32 @memcpy(i32 %24, i8* %26, i32 6)
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %124

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @cvmx_helper_interface_get_mode(i32 %31)
  %33 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %124

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %43, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %55, i32 %56)
  %58 = call i64 @cvmx_read_csr(i32 %57)
  %59 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i64*
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %60, i32 %61)
  %63 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, -2
  %66 = trunc i64 %65 to i32
  %67 = call i32 @cvmx_write_csr(i32 %62, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CVMX_GMXX_SMACX(i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @cvmx_write_csr(i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @CVMX_GMXX_RXX_ADR_CAM0(i32 %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cvmx_write_csr(i32 %75, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @CVMX_GMXX_RXX_ADR_CAM1(i32 %80, i32 %81)
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cvmx_write_csr(i32 %82, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @CVMX_GMXX_RXX_ADR_CAM2(i32 %87, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cvmx_write_csr(i32 %89, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @CVMX_GMXX_RXX_ADR_CAM3(i32 %94, i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cvmx_write_csr(i32 %96, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @CVMX_GMXX_RXX_ADR_CAM4(i32 %101, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cvmx_write_csr(i32 %103, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @CVMX_GMXX_RXX_ADR_CAM5(i32 %108, i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @cvmx_write_csr(i32 %110, i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = call i32 @cvm_oct_common_set_multicast_list(%struct.net_device* %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %117, i32 %118)
  %120 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @cvmx_write_csr(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %54, %30, %2
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_SMACX(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM0(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM1(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM2(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM3(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM4(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM5(i32, i32) #1

declare dso_local i32 @cvm_oct_common_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
