; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_pack_DAPF_to_DAPQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_pack_DAPF_to_DAPQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@dev = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@JQS_wTail = common dso_local global i64 0, align 8
@JQS_wHead = common dso_local global i64 0, align 8
@DAQDS__size = common dso_local global i32 0, align 4
@DAP_BUFF_SIZE = common dso_local global i32 0, align 4
@DAPQ_DATA_BUFF = common dso_local global i64 0, align 8
@DAQDS_wSize = common dso_local global i64 0, align 8
@HDEX_PLAY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pack_DAPF_to_DAPQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_DAPF_to_DAPQ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 0), align 8
  %12 = load i64, i64* @JQS_wTail, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %64, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 0), align 8
  %18 = load i64, i64* @JQS_wHead, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readw(i64 %19)
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i1 [ true, %15 ], [ %24, %22 ]
  br i1 %26, label %27, label %93

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DAQDS__size, align 4
  %30 = call i32 @PCTODSP_OFFSET(i32 %29)
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 3), i64 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 1), align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %44 = call i32 @msnd_fifo_read_io(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 2), i64 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 3), i64 %45)
  br label %56

47:                                               ; preds = %27
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 1), align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %55 = call i32 @msnd_fifo_read_io(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 2), i64 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %34
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %93

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @DAQDS__size, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 1), align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* @DAPQ_DATA_BUFF, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @DAQDS_wSize, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writew(i32 %73, i64 %76)
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = srem i32 %81, 3
  %83 = load i32, i32* @DAQDS__size, align 4
  %84 = call i32 @PCTODSP_OFFSET(i32 %83)
  %85 = mul nsw i32 %82, %84
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev, i32 0, i32 0), align 8
  %88 = load i64, i64* @JQS_wTail, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writew(i32 %86, i64 %89)
  %91 = load i32, i32* @HDEX_PLAY_START, align 4
  %92 = call i32 @msnd_send_dsp_cmd(%struct.TYPE_3__* @dev, i32 %91)
  br label %15

93:                                               ; preds = %59, %25
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @PCTODSP_OFFSET(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msnd_fifo_read_io(i32*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @msnd_send_dsp_cmd(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
