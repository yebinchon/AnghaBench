; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_calendar_sync_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_calendar_sync_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_srxx_com_ctl = type { i8* }
%union.cvmx_spxx_clk_stat = type { i8* }
%union.cvmx_stxx_com_ctl = type { i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SPI%d: Rx is synchronized, start sending calendar data\0A\00", align 1
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SPI%d: Waiting to sync on STX[%d] STAT\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SPI%d: Timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_calendar_sync_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %union.cvmx_srxx_com_ctl, align 8
  %10 = alloca %union.cvmx_spxx_clk_stat, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.cvmx_stxx_com_ctl, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call %struct.TYPE_8__* (...) @cvmx_sysinfo_get()
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @CVMX_SRXX_COM_CTL(i32 %25)
  %27 = call i8* @cvmx_read_csr(i32 %26)
  %28 = bitcast %union.cvmx_srxx_com_ctl* %9 to i8**
  store i8* %27, i8** %28, align 8
  %29 = bitcast %union.cvmx_srxx_com_ctl* %9 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = bitcast %union.cvmx_srxx_com_ctl* %9 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CVMX_SRXX_COM_CTL(i32 %33)
  %35 = bitcast %union.cvmx_srxx_com_ctl* %9 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i8* %36)
  br label %38

38:                                               ; preds = %22, %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %38
  %44 = bitcast %union.cvmx_stxx_com_ctl* %12 to i8**
  store i8* null, i8** %44, align 8
  %45 = bitcast %union.cvmx_stxx_com_ctl* %12 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CVMX_STXX_COM_CTL(i32 %47)
  %49 = bitcast %union.cvmx_stxx_com_ctl* %12 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @cvmx_write_csr(i32 %48, i8* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = call i64 (...) @cvmx_get_cycle()
  %56 = load i64, i64* %8, align 8
  %57 = mul i64 1000, %56
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %57, %59
  %61 = add i64 %55, %60
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %74, %43
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @CVMX_SPXX_CLK_STAT(i32 %63)
  %65 = call i8* @cvmx_read_csr(i32 %64)
  %66 = bitcast %union.cvmx_spxx_clk_stat* %10 to i8**
  store i8* %65, i8** %66, align 8
  %67 = call i64 (...) @cvmx_get_cycle()
  %68 = load i64, i64* %11, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %4, align 4
  br label %81

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = bitcast %union.cvmx_spxx_clk_stat* %10 to %struct.TYPE_7__*
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %62, label %79

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %38
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_8__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, ...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i32 @CVMX_SPXX_CLK_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
