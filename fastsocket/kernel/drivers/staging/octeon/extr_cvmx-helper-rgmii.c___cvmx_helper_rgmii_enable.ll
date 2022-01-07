; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_rgmii_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_rgmii_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_sysinfo = type { i32 }
%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%union.cvmx_asxx_tx_prt_en = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%union.cvmx_asxx_rx_prt_en = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%union.cvmx_gmxx_rxx_frm_ctl = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_rgmii_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cvmx_sysinfo*, align 8
  %7 = alloca %union.cvmx_gmxx_inf_mode, align 8
  %8 = alloca %union.cvmx_asxx_tx_prt_en, align 8
  %9 = alloca %union.cvmx_asxx_rx_prt_en, align 8
  %10 = alloca %union.cvmx_gmxx_rxx_frm_ctl, align 4
  %11 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @cvmx_helper_ports_on_interface(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = call %struct.cvmx_sysinfo* (...) @cvmx_sysinfo_get()
  store %struct.cvmx_sysinfo* %14, %struct.cvmx_sysinfo** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_GMXX_INF_MODE(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = bitcast %union.cvmx_gmxx_inf_mode* %7 to i8**
  store i8* %17, i8** %18, align 8
  %19 = bitcast %union.cvmx_gmxx_inf_mode* %7 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %157

24:                                               ; preds = %1
  %25 = load i32, i32* @OCTEON_CN38XX, align 4
  %26 = call i64 @OCTEON_IS_MODEL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @OCTEON_CN58XX, align 4
  %30 = call i64 @OCTEON_IS_MODEL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %24
  %33 = bitcast %union.cvmx_gmxx_inf_mode* %7 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %157

38:                                               ; preds = %32, %28
  %39 = bitcast %union.cvmx_asxx_tx_prt_en* %8 to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i8* @cvmx_build_mask(i32 %40)
  %42 = bitcast %union.cvmx_asxx_tx_prt_en* %8 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @CVMX_ASXX_TX_PRT_EN(i32 %44)
  %46 = bitcast %union.cvmx_asxx_tx_prt_en* %8 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cvmx_write_csr(i32 %45, i32 %47)
  %49 = bitcast %union.cvmx_asxx_rx_prt_en* %9 to i32*
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i8* @cvmx_build_mask(i32 %50)
  %52 = bitcast %union.cvmx_asxx_rx_prt_en* %9 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @CVMX_ASXX_RX_PRT_EN(i32 %54)
  %56 = bitcast %union.cvmx_asxx_rx_prt_en* %9 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cvmx_write_csr(i32 %55, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %119, %38
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %122

63:                                               ; preds = %59
  %64 = call i64 (...) @cvmx_octeon_is_pass1()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.cvmx_sysinfo*, %struct.cvmx_sysinfo** %6, align 8
  %70 = getelementptr inbounds %struct.cvmx_sysinfo, %struct.cvmx_sysinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__cvmx_helper_errata_asx_pass1(i32 %67, i32 %68, i32 %71)
  br label %88

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %74, i32 %75)
  %77 = call i8* @cvmx_read_csr(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to i32*
  store i32 %78, i32* %79, align 4
  %80 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to %struct.TYPE_9__*
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %82, i32 %83)
  %85 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cvmx_write_csr(i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %73, %66
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @CVMX_GMXX_TXX_PAUSE_PKT_TIME(i32 %89, i32 %90)
  %92 = call i32 @cvmx_write_csr(i32 %91, i32 20000)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @CVMX_GMXX_TXX_PAUSE_PKT_INTERVAL(i32 %93, i32 %94)
  %96 = call i32 @cvmx_write_csr(i32 %95, i32 19000)
  %97 = load i32, i32* @OCTEON_CN50XX, align 4
  %98 = call i64 @OCTEON_IS_MODEL(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %88
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 %101, i32 %102)
  %104 = call i32 @cvmx_write_csr(i32 %103, i32 16)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 %105, i32 %106)
  %108 = call i32 @cvmx_write_csr(i32 %107, i32 16)
  br label %118

109:                                              ; preds = %88
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 %110, i32 %111)
  %113 = call i32 @cvmx_write_csr(i32 %112, i32 24)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 %114, i32 %115)
  %117 = call i32 @cvmx_write_csr(i32 %116, i32 24)
  br label %118

118:                                              ; preds = %109, %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %59

122:                                              ; preds = %59
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @__cvmx_helper_setup_gmx(i32 %123, i32 %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %149, %122
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @cvmx_helper_get_ipd_port(i32 %131, i32 %132)
  %134 = call i32 @cvmx_helper_link_autoconf(i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %135, i32 %136)
  %138 = call i8* @cvmx_read_csr(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = bitcast %union.cvmx_gmxx_prtx_cfg* %11 to i32*
  store i32 %139, i32* %140, align 4
  %141 = bitcast %union.cvmx_gmxx_prtx_cfg* %11 to %struct.TYPE_10__*
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %143, i32 %144)
  %146 = bitcast %union.cvmx_gmxx_prtx_cfg* %11 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @cvmx_write_csr(i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %130
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %126

152:                                              ; preds = %126
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @__cvmx_interrupt_asxx_enable(i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @__cvmx_interrupt_gmxx_enable(i32 %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %152, %37, %23
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local %struct.cvmx_sysinfo* @cvmx_sysinfo_get(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_build_mask(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_TX_PRT_EN(i32) #1

declare dso_local i32 @CVMX_ASXX_RX_PRT_EN(i32) #1

declare dso_local i64 @cvmx_octeon_is_pass1(...) #1

declare dso_local i32 @__cvmx_helper_errata_asx_pass1(i32, i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_PAUSE_PKT_TIME(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_PAUSE_PKT_INTERVAL(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_TX_CLK_SETX(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_RX_CLK_SETX(i32, i32) #1

declare dso_local i32 @__cvmx_helper_setup_gmx(i32, i32) #1

declare dso_local i32 @cvmx_helper_link_autoconf(i32) #1

declare dso_local i32 @cvmx_helper_get_ipd_port(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @__cvmx_interrupt_asxx_enable(i32) #1

declare dso_local i32 @__cvmx_interrupt_gmxx_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
