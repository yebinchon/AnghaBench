; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_mem_debug9 = type { i8* }
%union.cvmx_pko_mem_debug8 = type { i8* }
%union.cvmx_npei_dmax_counts = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_PKO_REG_READ_IDX = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG9 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_cmd_queue_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_pko_mem_debug9, align 8
  %5 = alloca %union.cvmx_pko_mem_debug8, align 8
  %6 = alloca %union.cvmx_npei_dmax_counts, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @__cvmx_cmd_queue_get_state(i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 16711680
  switch i32 %18, label %53 [
    i32 130, label %19
    i32 128, label %41
    i32 133, label %41
    i32 129, label %41
    i32 132, label %42
    i32 131, label %51
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @CVMX_PKO_REG_READ_IDX, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65535
  %23 = call i32 @cvmx_write_csr(i32 %20, i32 %22)
  %24 = load i32, i32* @OCTEON_CN3XXX, align 4
  %25 = call i32 @OCTEON_IS_MODEL(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @CVMX_PKO_MEM_DEBUG9, align 4
  %29 = call i8* @cvmx_read_csr(i32 %28)
  %30 = bitcast %union.cvmx_pko_mem_debug9* %4 to i8**
  store i8* %29, i8** %30, align 8
  %31 = bitcast %union.cvmx_pko_mem_debug9* %4 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %19
  %35 = load i32, i32* @CVMX_PKO_MEM_DEBUG8, align 4
  %36 = call i8* @cvmx_read_csr(i32 %35)
  %37 = bitcast %union.cvmx_pko_mem_debug8* %5 to i8**
  store i8* %36, i8** %37, align 8
  %38 = bitcast %union.cvmx_pko_mem_debug8* %5 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %16, %16, %16
  store i32 0, i32* %2, align 4
  br label %55

42:                                               ; preds = %16
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 7
  %45 = call i32 @CVMX_PEXP_NPEI_DMAX_COUNTS(i32 %44)
  %46 = call i8* @cvmx_read_csr(i32 %45)
  %47 = bitcast %union.cvmx_npei_dmax_counts* %6 to i8**
  store i8* %46, i8** %47, align 8
  %48 = bitcast %union.cvmx_npei_dmax_counts* %6 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %16
  %52 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %16
  %54 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %42, %41, %34, %27, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PEXP_NPEI_DMAX_COUNTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
