; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_finish3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.h_cvmx_pko_send_packet_finish3.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i64)* @cvmx_pko_send_packet_finish3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_pko_send_packet_finish3(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca %union.cvmx_buf_ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  %16 = getelementptr inbounds %union.cvmx_buf_ptr, %union.cvmx_buf_ptr* %9, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* @CVMX_PKO_LOCK_ATOMIC_TAG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 (...) @cvmx_pow_tag_sw_wait()
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @CVMX_CMD_QUEUE_PKO(i32 %23)
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @CVMX_PKO_LOCK_CMD_QUEUE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.cvmx_buf_ptr* %9 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @cvmx_cmd_queue_write3(i32 %24, i32 %28, i32 %30, i32 %32, i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @CVMX_CMD_QUEUE_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @cvmx_pko_doorbell(i32 %42, i32 %43, i32 3)
  %45 = load i32, i32* @CVMX_PKO_SUCCESS, align 4
  store i32 %45, i32* %7, align 4
  br label %58

46:                                               ; preds = %22
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @CVMX_CMD_QUEUE_NO_MEMORY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @CVMX_CMD_QUEUE_FULL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @CVMX_PKO_NO_MEMORY, align 4
  store i32 %55, i32* %7, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @CVMX_PKO_INVALID_QUEUE, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %54, %41
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @cvmx_pow_tag_sw_wait(...) #1

declare dso_local i64 @cvmx_cmd_queue_write3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_CMD_QUEUE_PKO(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cvmx_pko_doorbell(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
