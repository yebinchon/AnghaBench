; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_interface_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_interface_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@CVMX_HELPER_INTERFACE_MODE_NPI = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i32 0, align 4
@CVMX_BOARD_TYPE_CN3005_EVB_HS5 = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_PICMG = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_interface_get_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_gmxx_inf_mode, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_NPI, align 4
  store i32 %8, i32* %2, align 4
  br label %113

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* @OCTEON_CN56XX, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @OCTEON_CN52XX, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 4
  store i32 %21, i32* %2, align 4
  br label %113

22:                                               ; preds = %16
  %23 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %23, i32* %2, align 4
  br label %113

24:                                               ; preds = %9
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CVMX_BOARD_TYPE_CN3005_EVB_HS5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_GMII, align 4
  store i32 %39, i32* %2, align 4
  br label %113

40:                                               ; preds = %33, %27, %24
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* @OCTEON_CN31XX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @OCTEON_CN30XX, align 4
  %49 = call i64 @OCTEON_IS_MODEL(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @OCTEON_CN50XX, align 4
  %53 = call i64 @OCTEON_IS_MODEL(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @OCTEON_CN52XX, align 4
  %57 = call i64 @OCTEON_IS_MODEL(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %47, %43
  %60 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %60, i32* %2, align 4
  br label %113

61:                                               ; preds = %55, %40
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @CVMX_GMXX_INF_MODE(i32 %62)
  %64 = call i32 @cvmx_read_csr(i32 %63)
  %65 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i32*
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @OCTEON_CN56XX, align 4
  %67 = call i64 @OCTEON_IS_MODEL(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @OCTEON_CN52XX, align 4
  %71 = call i64 @OCTEON_IS_MODEL(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69, %61
  %74 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %85 [
    i32 0, label %77
    i32 1, label %79
    i32 2, label %81
    i32 3, label %83
  ]

77:                                               ; preds = %73
  %78 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %78, i32* %2, align 4
  br label %113

79:                                               ; preds = %73
  %80 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %80, i32* %2, align 4
  br label %113

81:                                               ; preds = %73
  %82 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %82, i32* %2, align 4
  br label %113

83:                                               ; preds = %73
  %84 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_PICMG, align 4
  store i32 %84, i32* %2, align 4
  br label %113

85:                                               ; preds = %73
  %86 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %86, i32* %2, align 4
  br label %113

87:                                               ; preds = %69
  %88 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_5__*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %93, i32* %2, align 4
  br label %113

94:                                               ; preds = %87
  %95 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32, i32* @OCTEON_CN38XX, align 4
  %101 = call i64 @OCTEON_IS_MODEL(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @OCTEON_CN58XX, align 4
  %105 = call i64 @OCTEON_IS_MODEL(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SPI, align 4
  store i32 %108, i32* %2, align 4
  br label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_GMII, align 4
  store i32 %110, i32* %2, align 4
  br label %113

111:                                              ; preds = %94
  %112 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %109, %107, %92, %85, %83, %81, %79, %77, %59, %38, %22, %20, %7
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local %struct.TYPE_6__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
