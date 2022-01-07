; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32 }
%union.cvmx_pip_frm_len_chkx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"MTU must be between %d and %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cvm_oct_common_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_common_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_ethernet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.cvmx_pip_frm_len_chkx, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %12)
  store %struct.octeon_ethernet* %13, %struct.octeon_ethernet** %6, align 8
  %14 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %15 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INTERFACE(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %19 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @INDEX(i32 %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 14
  %24 = add nsw i32 %23, 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 14
  %31 = add nsw i32 %30, 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %33, 65392
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 46, %36
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 65374, %38
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %93

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @cvmx_helper_interface_get_mode(i32 %50)
  %52 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 14
  %57 = add nsw i32 %56, 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @OCTEON_CN3XXX, align 4
  %61 = call i64 @OCTEON_IS_MODEL(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @OCTEON_CN58XX, align 4
  %65 = call i64 @OCTEON_IS_MODEL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %54
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CVMX_GMXX_RXX_FRM_MAX(i32 %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @cvmx_write_csr(i32 %70, i32 %71)
  br label %85

73:                                               ; preds = %63
  %74 = bitcast %union.cvmx_pip_frm_len_chkx* %11 to i32*
  store i32 0, i32* %74, align 4
  %75 = bitcast %union.cvmx_pip_frm_len_chkx* %11 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 64, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = bitcast %union.cvmx_pip_frm_len_chkx* %11 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @CVMX_PIP_FRM_LEN_CHKX(i32 %80)
  %82 = bitcast %union.cvmx_pip_frm_len_chkx* %11 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cvmx_write_csr(i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %73, %67
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @CVMX_GMXX_RXX_JABBER(i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 7
  %91 = and i32 %90, -8
  %92 = call i32 @cvmx_write_csr(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %49, %43
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MAX(i32, i32) #1

declare dso_local i32 @CVMX_PIP_FRM_LEN_CHKX(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_JABBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
