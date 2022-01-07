; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-sgmii.c_cvm_oct_sgmii_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-sgmii.c_cvm_oct_sgmii_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { i32 }
%struct.octeon_ethernet = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_sgmii_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %9)
  store %struct.octeon_ethernet* %10, %struct.octeon_ethernet** %4, align 8
  %11 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %12 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @INTERFACE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @INDEX(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %19, i32 %20)
  %22 = call i32 @cvmx_read_csr(i32 %21)
  %23 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i32*
  store i32 %22, i32* %23, align 4
  %24 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %26, i32 %27)
  %29 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cvmx_write_csr(i32 %28, i32 %30)
  %32 = call i32 (...) @octeon_is_simulation()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %1
  %35 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %36 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cvmx_helper_link_get(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = bitcast %struct.TYPE_7__* %7 to i8*
  %42 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @netif_carrier_off(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %47, %34
  br label %51

51:                                               ; preds = %50, %1
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @octeon_is_simulation(...) #1

declare dso_local i32 @cvmx_helper_link_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
