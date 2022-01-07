; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%union.cvmx_buf_ptr = type { i32 }

@CVMX_PKO_LOCK_ATOMIC_TAG = common dso_local global i64 0, align 8
@CVMX_PKO_LOCK_CMD_QUEUE = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@CVMX_PKO_SUCCESS = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i64 0, align 8
@CVMX_PKO_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_PKO_INVALID_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64)* @cvmx_pko_send_packet_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_pko_send_packet_finish(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca %union.cvmx_buf_ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %union.cvmx_buf_ptr, %union.cvmx_buf_ptr* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @CVMX_PKO_LOCK_ATOMIC_TAG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 (...) @cvmx_pow_tag_sw_wait()
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @CVMX_CMD_QUEUE_PKO(i32 %21)
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @CVMX_PKO_LOCK_CMD_QUEUE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.cvmx_buf_ptr* %8 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cvmx_cmd_queue_write2(i32 %22, i32 %26, i32 %28, i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @CVMX_CMD_QUEUE_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cvmx_pko_doorbell(i32 %39, i32 %40, i32 2)
  %42 = load i32, i32* @CVMX_PKO_SUCCESS, align 4
  store i32 %42, i32* %6, align 4
  br label %55

43:                                               ; preds = %20
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @CVMX_CMD_QUEUE_NO_MEMORY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @CVMX_CMD_QUEUE_FULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @CVMX_PKO_NO_MEMORY, align 4
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @CVMX_PKO_INVALID_QUEUE, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %51, %38
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @cvmx_pow_tag_sw_wait(...) #1

declare dso_local i64 @cvmx_cmd_queue_write2(i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_CMD_QUEUE_PKO(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cvmx_pko_doorbell(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
