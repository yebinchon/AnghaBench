; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_calendar_setup_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_calendar_setup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_srxx_com_ctl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64 }
%union.cvmx_srxx_spi4_stat = type { i64 }
%union.cvmx_srxx_spi4_calx = type { i64, [16 x i8] }
%union.cvmx_stxx_arb_ctl = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%union.cvmx_gmxx_tx_spi_max = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i64 }
%union.cvmx_gmxx_tx_spi_thresh = type { i64 }
%union.cvmx_gmxx_tx_spi_ctl = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%union.cvmx_stxx_spi4_stat = type { i64 }
%union.cvmx_stxx_spi4_dat = type { i64 }
%union.cvmx_stxx_spi4_calx = type { i64, [16 x i8] }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_calendar_setup_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_srxx_com_ctl, align 8
  %10 = alloca %union.cvmx_srxx_spi4_stat, align 8
  %11 = alloca %union.cvmx_srxx_spi4_calx, align 8
  %12 = alloca %union.cvmx_stxx_arb_ctl, align 8
  %13 = alloca %union.cvmx_gmxx_tx_spi_max, align 8
  %14 = alloca %union.cvmx_gmxx_tx_spi_thresh, align 8
  %15 = alloca %union.cvmx_gmxx_tx_spi_ctl, align 8
  %16 = alloca %union.cvmx_stxx_spi4_stat, align 8
  %17 = alloca %union.cvmx_stxx_spi4_dat, align 8
  %18 = alloca %union.cvmx_stxx_spi4_calx, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %3
  %24 = bitcast %union.cvmx_srxx_com_ctl* %9 to i64*
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = bitcast %union.cvmx_srxx_com_ctl* %9 to %struct.TYPE_12__*
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = bitcast %union.cvmx_srxx_com_ctl* %9 to %struct.TYPE_12__*
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.cvmx_srxx_com_ctl* %9 to %struct.TYPE_12__*
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CVMX_SRXX_COM_CTL(i32 %33)
  %35 = bitcast %union.cvmx_srxx_com_ctl* %9 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i64 %36)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %42, %23
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = bitcast %union.cvmx_srxx_spi4_calx* %11 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = bitcast %union.cvmx_srxx_spi4_calx* %11 to %struct.TYPE_13__*
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = bitcast %union.cvmx_srxx_spi4_calx* %11 to %struct.TYPE_13__*
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = bitcast %union.cvmx_srxx_spi4_calx* %11 to %struct.TYPE_13__*
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = bitcast %union.cvmx_srxx_spi4_calx* %11 to %struct.TYPE_13__*
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = bitcast %union.cvmx_srxx_spi4_calx* %11 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cvmx_dpop(i64 %61)
  %63 = and i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = bitcast %union.cvmx_srxx_spi4_calx* %11 to %struct.TYPE_13__*
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @CVMX_SRXX_SPI4_CALX(i32 %67, i32 %68)
  %70 = bitcast %union.cvmx_srxx_spi4_calx* %11 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %38

75:                                               ; preds = %38
  %76 = bitcast %union.cvmx_srxx_spi4_stat* %10 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = bitcast %union.cvmx_srxx_spi4_stat* %10 to %struct.TYPE_14__*
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = bitcast %union.cvmx_srxx_spi4_stat* %10 to %struct.TYPE_14__*
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @CVMX_SRXX_SPI4_STAT(i32 %82)
  %84 = bitcast %union.cvmx_srxx_spi4_stat* %10 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i64 %85)
  br label %87

87:                                               ; preds = %75, %3
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %87
  %93 = bitcast %union.cvmx_stxx_arb_ctl* %12 to i64*
  store i64 0, i64* %93, align 8
  %94 = bitcast %union.cvmx_stxx_arb_ctl* %12 to %struct.TYPE_15__*
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = bitcast %union.cvmx_stxx_arb_ctl* %12 to %struct.TYPE_15__*
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @CVMX_STXX_ARB_CTL(i32 %98)
  %100 = bitcast %union.cvmx_stxx_arb_ctl* %12 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @cvmx_write_csr(i32 %99, i64 %101)
  %103 = bitcast %union.cvmx_gmxx_tx_spi_max* %13 to i64*
  store i64 0, i64* %103, align 8
  %104 = bitcast %union.cvmx_gmxx_tx_spi_max* %13 to %struct.TYPE_16__*
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 8, i32* %105, align 8
  %106 = bitcast %union.cvmx_gmxx_tx_spi_max* %13 to %struct.TYPE_16__*
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i32 4, i32* %107, align 4
  %108 = bitcast %union.cvmx_gmxx_tx_spi_max* %13 to %struct.TYPE_16__*
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @CVMX_GMXX_TX_SPI_MAX(i32 %110)
  %112 = bitcast %union.cvmx_gmxx_tx_spi_max* %13 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i64 %113)
  %115 = bitcast %union.cvmx_gmxx_tx_spi_thresh* %14 to i64*
  store i64 0, i64* %115, align 8
  %116 = bitcast %union.cvmx_gmxx_tx_spi_thresh* %14 to %struct.TYPE_17__*
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  store i32 4, i32* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @CVMX_GMXX_TX_SPI_THRESH(i32 %118)
  %120 = bitcast %union.cvmx_gmxx_tx_spi_thresh* %14 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @cvmx_write_csr(i32 %119, i64 %121)
  %123 = bitcast %union.cvmx_gmxx_tx_spi_ctl* %15 to i64*
  store i64 0, i64* %123, align 8
  %124 = bitcast %union.cvmx_gmxx_tx_spi_ctl* %15 to %struct.TYPE_18__*
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = bitcast %union.cvmx_gmxx_tx_spi_ctl* %15 to %struct.TYPE_18__*
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @CVMX_GMXX_TX_SPI_CTL(i32 %128)
  %130 = bitcast %union.cvmx_gmxx_tx_spi_ctl* %15 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @cvmx_write_csr(i32 %129, i64 %131)
  %133 = bitcast %union.cvmx_stxx_spi4_dat* %17 to i64*
  store i64 0, i64* %133, align 8
  %134 = bitcast %union.cvmx_stxx_spi4_dat* %17 to %struct.TYPE_19__*
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  store i32 32, i32* %135, align 8
  %136 = bitcast %union.cvmx_stxx_spi4_dat* %17 to %struct.TYPE_19__*
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i32 65535, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @CVMX_STXX_SPI4_DAT(i32 %138)
  %140 = bitcast %union.cvmx_stxx_spi4_dat* %17 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @cvmx_write_csr(i32 %139, i64 %141)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %147, %92
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = bitcast %union.cvmx_stxx_spi4_calx* %18 to i64*
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = bitcast %union.cvmx_stxx_spi4_calx* %18 to %struct.TYPE_20__*
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  %155 = bitcast %union.cvmx_stxx_spi4_calx* %18 to %struct.TYPE_20__*
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = bitcast %union.cvmx_stxx_spi4_calx* %18 to %struct.TYPE_20__*
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = bitcast %union.cvmx_stxx_spi4_calx* %18 to %struct.TYPE_20__*
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = bitcast %union.cvmx_stxx_spi4_calx* %18 to i64*
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @cvmx_dpop(i64 %166)
  %168 = and i32 %167, 1
  %169 = xor i32 %168, -1
  %170 = bitcast %union.cvmx_stxx_spi4_calx* %18 to %struct.TYPE_20__*
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @CVMX_STXX_SPI4_CALX(i32 %172, i32 %173)
  %175 = bitcast %union.cvmx_stxx_spi4_calx* %18 to i64*
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @cvmx_write_csr(i32 %174, i64 %176)
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %143

180:                                              ; preds = %143
  %181 = bitcast %union.cvmx_stxx_spi4_stat* %16 to i64*
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* %6, align 4
  %183 = bitcast %union.cvmx_stxx_spi4_stat* %16 to %struct.TYPE_11__*
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = bitcast %union.cvmx_stxx_spi4_stat* %16 to %struct.TYPE_11__*
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @CVMX_STXX_SPI4_STAT(i32 %187)
  %189 = bitcast %union.cvmx_stxx_spi4_stat* %16 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @cvmx_write_csr(i32 %188, i64 %190)
  br label %192

192:                                              ; preds = %180, %87
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_dpop(i64) #1

declare dso_local i32 @CVMX_SRXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_SRXX_SPI4_STAT(i32) #1

declare dso_local i32 @CVMX_STXX_ARB_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_MAX(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_THRESH(i32) #1

declare dso_local i32 @CVMX_GMXX_TX_SPI_CTL(i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_DAT(i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
