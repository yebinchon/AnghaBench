; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_rgmii_configure_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_rgmii_configure_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_prtx_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%union.cvmx_asxx_prt_loop = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_rgmii_configure_loopback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  %11 = alloca %union.cvmx_asxx_prt_loop, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cvmx_helper_get_interface_num(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cvmx_helper_get_interface_index_num(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %17, i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to i32*
  store i32 %21, i32* %22, align 4
  %23 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %3
  %31 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CVMX_GMXX_TXX_CLK(i32 %37, i32 %38)
  %40 = call i32 @cvmx_write_csr(i32 %39, i32 1)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CVMX_GMXX_TXX_SLOT(i32 %41, i32 %42)
  %44 = call i32 @cvmx_write_csr(i32 %43, i32 512)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @CVMX_GMXX_TXX_BURST(i32 %45, i32 %46)
  %48 = call i32 @cvmx_write_csr(i32 %47, i32 8192)
  br label %49

49:                                               ; preds = %30, %3
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %50, i32 %51)
  %53 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cvmx_write_csr(i32 %52, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @CVMX_ASXX_PRT_LOOP(i32 %56)
  %58 = call i8* @cvmx_read_csr(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = bitcast %union.cvmx_asxx_prt_loop* %11 to i32*
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = bitcast %union.cvmx_asxx_prt_loop* %11 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %78

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = bitcast %union.cvmx_asxx_prt_loop* %11 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %63
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 1, %82
  %84 = bitcast %union.cvmx_asxx_prt_loop* %11 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %96

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = bitcast %union.cvmx_asxx_prt_loop* %11 to %struct.TYPE_3__*
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %81
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @CVMX_ASXX_PRT_LOOP(i32 %97)
  %99 = bitcast %union.cvmx_asxx_prt_loop* %11 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cvmx_write_csr(i32 %98, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @CVMX_ASXX_TX_PRT_EN(i32 %105)
  %107 = call i8* @cvmx_read_csr(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @CVMX_ASXX_TX_PRT_EN(i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @cvmx_write_csr(i32 %110, i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @CVMX_ASXX_RX_PRT_EN(i32 %116)
  %118 = call i8* @cvmx_read_csr(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @CVMX_ASXX_RX_PRT_EN(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @cvmx_write_csr(i32 %121, i32 %125)
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %104, %96
  %128 = load i32, i32* %9, align 4
  %129 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %131, i32 %132)
  %134 = bitcast %union.cvmx_gmxx_prtx_cfg* %10 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cvmx_write_csr(i32 %133, i32 %135)
  ret i32 0
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_CLK(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_SLOT(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_TXX_BURST(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_PRT_LOOP(i32) #1

declare dso_local i32 @CVMX_ASXX_TX_PRT_EN(i32) #1

declare dso_local i32 @CVMX_ASXX_RX_PRT_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
