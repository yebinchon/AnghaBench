; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_interface_up_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-spi.c_cvmx_spi_interface_up_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_rxx_frm_min = type { i8* }
%union.cvmx_gmxx_rxx_frm_max = type { i8* }
%union.cvmx_gmxx_rxx_jabber = type { i8* }
%union.cvmx_srxx_com_ctl = type { i8* }
%union.cvmx_stxx_com_ctl = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SPI%d: Rx is now up\0A\00", align 1
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SPI%d: Tx is now up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_interface_up_cb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_rxx_frm_min, align 8
  %6 = alloca %union.cvmx_gmxx_rxx_frm_max, align 8
  %7 = alloca %union.cvmx_gmxx_rxx_jabber, align 8
  %8 = alloca %union.cvmx_srxx_com_ctl, align 8
  %9 = alloca %union.cvmx_stxx_com_ctl, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_SRXX_COM_CTL(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = bitcast %union.cvmx_srxx_com_ctl* %8 to i8**
  store i8* %17, i8** %18, align 8
  %19 = bitcast %union.cvmx_srxx_com_ctl* %8 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CVMX_SRXX_COM_CTL(i32 %21)
  %23 = bitcast %union.cvmx_srxx_com_ctl* %8 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cvmx_write_csr(i32 %22, i8* %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CVMX_STXX_COM_CTL(i32 %34)
  %36 = call i8* @cvmx_read_csr(i32 %35)
  %37 = bitcast %union.cvmx_stxx_com_ctl* %9 to i8**
  store i8* %36, i8** %37, align 8
  %38 = bitcast %union.cvmx_stxx_com_ctl* %9 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CVMX_STXX_COM_CTL(i32 %40)
  %42 = bitcast %union.cvmx_stxx_com_ctl* %9 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cvmx_write_csr(i32 %41, i8* %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %33, %28
  %48 = bitcast %union.cvmx_gmxx_rxx_frm_min* %5 to i8**
  store i8* null, i8** %48, align 8
  %49 = bitcast %union.cvmx_gmxx_rxx_frm_min* %5 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 64, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @CVMX_GMXX_RXX_FRM_MIN(i32 0, i32 %51)
  %53 = bitcast %union.cvmx_gmxx_rxx_frm_min* %5 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @cvmx_write_csr(i32 %52, i8* %54)
  %56 = bitcast %union.cvmx_gmxx_rxx_frm_max* %6 to i8**
  store i8* null, i8** %56, align 8
  %57 = bitcast %union.cvmx_gmxx_rxx_frm_max* %6 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 65532, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CVMX_GMXX_RXX_FRM_MAX(i32 0, i32 %59)
  %61 = bitcast %union.cvmx_gmxx_rxx_frm_max* %6 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @cvmx_write_csr(i32 %60, i8* %62)
  %64 = bitcast %union.cvmx_gmxx_rxx_jabber* %7 to i8**
  store i8* null, i8** %64, align 8
  %65 = bitcast %union.cvmx_gmxx_rxx_jabber* %7 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 65532, i32* %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @CVMX_GMXX_RXX_JABBER(i32 0, i32 %67)
  %69 = bitcast %union.cvmx_gmxx_rxx_jabber* %7 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cvmx_write_csr(i32 %68, i8* %70)
  ret i32 0
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MIN(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_MAX(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_JABBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
