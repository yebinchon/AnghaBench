; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-spi.c___cvmx_helper_spi_link_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-spi.c___cvmx_helper_spi_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.cvmx_gmxx_rxx_rx_inbnd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_spi_link_get(%struct.TYPE_8__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_gmxx_rxx_rx_inbnd, align 4
  %7 = alloca { i64, i32 }, align 8
  store i32 %1, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cvmx_helper_get_interface_num(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cvmx_helper_get_interface_index_num(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i32 10000, i32* %24, align 8
  br label %72

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @cvmx_spi4000_is_present(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call { i64, i32 } @cvmx_spi4000_check_speed(i32 %30, i32 %31)
  %33 = getelementptr inbounds %union.cvmx_gmxx_rxx_rx_inbnd, %union.cvmx_gmxx_rxx_rx_inbnd* %6, i32 0, i32 0
  store { i64, i32 } %32, { i64, i32 }* %7, align 8
  %34 = bitcast { i64, i32 }* %7 to i8*
  %35 = bitcast %struct.TYPE_6__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 8 %34, i64 12, i1 false)
  %36 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %6 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %6 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %6 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %63 [
    i32 0, label %49
    i32 1, label %52
    i32 2, label %55
    i32 3, label %58
  ]

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 10, i32* %51, align 8
  br label %63

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 100, i32* %54, align 8
  br label %63

55:                                               ; preds = %29
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 1000, i32* %57, align 8
  br label %63

58:                                               ; preds = %29
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %29, %58, %55, %52, %49
  br label %71

64:                                               ; preds = %25
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 10000, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %63
  br label %72

72:                                               ; preds = %71, %18
  ret void
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local %struct.TYPE_9__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @cvmx_spi4000_is_present(i32) #1

declare dso_local { i64, i32 } @cvmx_spi4000_check_speed(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
