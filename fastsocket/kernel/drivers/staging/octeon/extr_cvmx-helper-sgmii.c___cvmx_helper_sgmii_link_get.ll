; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_link_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%union.cvmx_pcsx_miscx_ctl_reg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%union.cvmx_pcsx_mrx_control_reg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%union.cvmx_pcsx_mrx_status_reg = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%union.cvmx_pcsx_anx_results_reg = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_sgmii_link_get(%struct.TYPE_15__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_pcsx_miscx_ctl_reg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_pcsx_mrx_control_reg, align 8
  %8 = alloca %union.cvmx_pcsx_miscx_ctl_reg, align 8
  %9 = alloca %union.cvmx_pcsx_mrx_status_reg, align 8
  %10 = alloca %union.cvmx_pcsx_anx_results_reg, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  store i32 %1, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @cvmx_helper_get_interface_num(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cvmx_helper_get_interface_index_num(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = call %struct.TYPE_16__* (...) @cvmx_sysinfo_get()
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i32 1000, i32* %28, align 8
  br label %135

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @CVMX_PCSX_MRX_CONTROL_REG(i32 %30, i32 %31)
  %33 = call i8* @cvmx_read_csr(i32 %32)
  %34 = bitcast %union.cvmx_pcsx_mrx_control_reg* %7 to i8**
  store i8* %33, i8** %34, align 8
  %35 = bitcast %union.cvmx_pcsx_mrx_control_reg* %7 to %struct.TYPE_10__*
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i32 1000, i32* %45, align 8
  br label %135

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %47, i32 %48)
  %50 = call i8* @cvmx_read_csr(i32 %49)
  %51 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %4 to i8**
  store i8* %50, i8** %51, align 8
  %52 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %4 to %struct.TYPE_11__*
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %134

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %58, i32 %59)
  %61 = call i8* @cvmx_read_csr(i32 %60)
  %62 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %8 to i8**
  store i8* %61, i8** %62, align 8
  %63 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %8 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %129

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @CVMX_PCSX_MRX_STATUS_REG(i32 %68, i32 %69)
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pcsx_mrx_status_reg* %9 to i8**
  store i8* %71, i8** %72, align 8
  %73 = bitcast %union.cvmx_pcsx_mrx_status_reg* %9 to %struct.TYPE_12__*
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @__cvmx_helper_sgmii_hardware_init_link(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %135

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @CVMX_PCSX_ANX_RESULTS_REG(i32 %85, i32 %86)
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = bitcast %union.cvmx_pcsx_anx_results_reg* %10 to i8**
  store i8* %88, i8** %89, align 8
  %90 = bitcast %union.cvmx_pcsx_anx_results_reg* %10 to %struct.TYPE_13__*
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %84
  %95 = bitcast %union.cvmx_pcsx_anx_results_reg* %10 to %struct.TYPE_13__*
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = bitcast %union.cvmx_pcsx_anx_results_reg* %10 to %struct.TYPE_13__*
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = bitcast %union.cvmx_pcsx_anx_results_reg* %10 to %struct.TYPE_13__*
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %117 [
    i32 0, label %108
    i32 1, label %111
    i32 2, label %114
  ]

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i32 10, i32* %110, align 8
  br label %122

111:                                              ; preds = %94
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  store i32 100, i32* %113, align 8
  br label %122

114:                                              ; preds = %94
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i32 1000, i32* %116, align 8
  br label %122

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %114, %111, %108
  br label %128

123:                                              ; preds = %84
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %122
  br label %133

129:                                              ; preds = %57
  %130 = load i32, i32* %3, align 4
  call void @__cvmx_helper_board_link_get(%struct.TYPE_15__* sret %11, i32 %130)
  %131 = bitcast %struct.TYPE_15__* %0 to i8*
  %132 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 24, i1 false)
  br label %133

133:                                              ; preds = %129, %128
  br label %134

134:                                              ; preds = %133, %56
  br label %135

135:                                              ; preds = %134, %82, %39, %22
  ret void
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local %struct.TYPE_16__* @cvmx_sysinfo_get(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PCSX_MRX_CONTROL_REG(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_MISCX_CTL_REG(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_MRX_STATUS_REG(i32, i32) #1

declare dso_local i64 @__cvmx_helper_sgmii_hardware_init_link(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_ANX_RESULTS_REG(i32, i32) #1

declare dso_local void @__cvmx_helper_board_link_get(%struct.TYPE_15__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
