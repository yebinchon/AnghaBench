; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_get_port_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i8* }
%union.cvmx_pko_reg_read_idx = type { i8* }
%union.cvmx_pko_mem_count0 = type { i8* }
%union.cvmx_pko_mem_count1 = type { i8* }
%union.cvmx_pko_mem_debug9 = type { i8* }
%union.cvmx_pko_mem_debug8 = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@CVMX_PKO_REG_READ_IDX = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_COUNT0 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_COUNT1 = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG9 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_13__*)* @cvmx_pko_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pko_get_port_status(i8* %0, i8* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %union.cvmx_pko_reg_read_idx, align 8
  %8 = alloca %union.cvmx_pko_mem_count0, align 8
  %9 = alloca %union.cvmx_pko_mem_count1, align 8
  %10 = alloca %union.cvmx_pko_mem_debug9, align 8
  %11 = alloca %union.cvmx_pko_mem_debug8, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %12 = bitcast %union.cvmx_pko_reg_read_idx* %7 to i8**
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast %union.cvmx_pko_reg_read_idx* %7 to %struct.TYPE_11__*
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @CVMX_PKO_REG_READ_IDX, align 4
  %17 = bitcast %union.cvmx_pko_reg_read_idx* %7 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @cvmx_write_csr(i32 %16, i8* %18)
  %20 = load i32, i32* @CVMX_PKO_MEM_COUNT0, align 4
  %21 = call i8* @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_pko_mem_count0* %8 to i8**
  store i8* %21, i8** %22, align 8
  %23 = bitcast %union.cvmx_pko_mem_count0* %8 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast %union.cvmx_pko_mem_count0* %8 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @CVMX_PKO_MEM_COUNT0, align 4
  %35 = bitcast %union.cvmx_pko_mem_count0* %8 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i8* %36)
  br label %38

38:                                               ; preds = %30, %3
  %39 = load i32, i32* @CVMX_PKO_MEM_COUNT1, align 4
  %40 = call i8* @cvmx_read_csr(i32 %39)
  %41 = bitcast %union.cvmx_pko_mem_count1* %9 to i8**
  store i8* %40, i8** %41, align 8
  %42 = bitcast %union.cvmx_pko_mem_count1* %9 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load i8*, i8** %4, align 8
  %51 = bitcast %union.cvmx_pko_mem_count1* %9 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @CVMX_PKO_MEM_COUNT1, align 4
  %54 = bitcast %union.cvmx_pko_mem_count1* %9 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @cvmx_write_csr(i32 %53, i8* %55)
  br label %57

57:                                               ; preds = %49, %38
  %58 = load i32, i32* @OCTEON_CN3XXX, align 4
  %59 = call i64 @OCTEON_IS_MODEL(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @cvmx_pko_get_base_queue(i8* %62)
  %64 = bitcast %union.cvmx_pko_reg_read_idx* %7 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @CVMX_PKO_REG_READ_IDX, align 4
  %67 = bitcast %union.cvmx_pko_reg_read_idx* %7 to i8**
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @cvmx_write_csr(i32 %66, i8* %68)
  %70 = load i32, i32* @CVMX_PKO_MEM_DEBUG9, align 4
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pko_mem_debug9* %10 to i8**
  store i8* %71, i8** %72, align 8
  %73 = bitcast %union.cvmx_pko_mem_debug9* %10 to %struct.TYPE_10__*
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %95

78:                                               ; preds = %57
  %79 = load i8*, i8** %4, align 8
  %80 = call i8* @cvmx_pko_get_base_queue(i8* %79)
  %81 = bitcast %union.cvmx_pko_reg_read_idx* %7 to %struct.TYPE_11__*
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @CVMX_PKO_REG_READ_IDX, align 4
  %84 = bitcast %union.cvmx_pko_reg_read_idx* %7 to i8**
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i8* %85)
  %87 = load i32, i32* @CVMX_PKO_MEM_DEBUG8, align 4
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = bitcast %union.cvmx_pko_mem_debug8* %11 to i8**
  store i8* %88, i8** %89, align 8
  %90 = bitcast %union.cvmx_pko_mem_debug8* %11 to %struct.TYPE_12__*
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %78, %61
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_pko_get_base_queue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
