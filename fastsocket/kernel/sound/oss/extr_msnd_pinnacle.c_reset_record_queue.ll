; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_reset_record_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_reset_record_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i64, i64 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DAQDS__size = common dso_local global i32 0, align 4
@JQS_wHead = common dso_local global i64 0, align 8
@JQS_wTail = common dso_local global i64 0, align 8
@HPBLKSEL_1 = common dso_local global i32 0, align 4
@HP_BLKS = common dso_local global i64 0, align 8
@DAR_BUFF_SIZE = common dso_local global i32 0, align 4
@HPBLKSEL_0 = common dso_local global i32 0, align 4
@DARQ_DATA_BUFF = common dso_local global i64 0, align 8
@DAQDS_wStart = common dso_local global i64 0, align 8
@DAQDS_wSize = common dso_local global i64 0, align 8
@DAQDS_wFormat = common dso_local global i64 0, align 8
@DAQDS_wSampleSize = common dso_local global i64 0, align 8
@DAQDS_wChannels = common dso_local global i64 0, align 8
@DAQDS_wSampleRate = common dso_local global i64 0, align 8
@HIMT_RECORD_DONE = common dso_local global i32 0, align 4
@DAQDS_wIntMsg = common dso_local global i64 0, align 8
@DAQDS_wFlags = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_record_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_record_queue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %4 = load i32, i32* @DAQDS__size, align 4
  %5 = mul nsw i32 0, %4
  %6 = call i32 @PCTODSP_OFFSET(i32 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 7), align 8
  %8 = load i64, i64* @JQS_wHead, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writew(i32 %6, i64 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %12 = load i32, i32* @DAQDS__size, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call i32 @PCTODSP_OFFSET(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 7), align 8
  %16 = load i64, i64* @JQS_wTail, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writew(i32 %14, i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 5), i64 %19)
  %21 = load i32, i32* @HPBLKSEL_1, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 6), align 8
  %23 = load i64, i64* @HP_BLKS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @msnd_outb(i32 %21, i64 %24)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4), align 8
  %27 = load i32, i32* @DAR_BUFF_SIZE, align 4
  %28 = mul nsw i32 %27, 3
  %29 = call i32 @memset_io(i64 %26, i32 0, i32 %28)
  %30 = load i32, i32* @HPBLKSEL_0, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 6), align 8
  %32 = load i64, i64* @HP_BLKS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @msnd_outb(i32 %30, i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 5), i64 %35)
  store i32 0, i32* %1, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4), align 8
  %38 = load i64, i64* @DARQ_DATA_BUFF, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %90, %0
  %41 = load i32, i32* %1, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = load i32, i32* @DAR_BUFF_SIZE, align 4
  %45 = load i32, i32* %1, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @PCTODSP_BASED(i32 %46)
  %48 = add nsw i32 %47, 16384
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @DAQDS_wStart, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writew(i32 %48, i64 %51)
  %53 = load i32, i32* @DAR_BUFF_SIZE, align 4
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @DAQDS_wSize, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %53, i64 %56)
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @DAQDS_wFormat, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writew(i32 1, i64 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @DAQDS_wSampleSize, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 %62, i64 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @DAQDS_wChannels, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writew(i32 %67, i64 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 4
  %73 = load i64, i64* %2, align 8
  %74 = load i64, i64* @DAQDS_wSampleRate, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writew(i32 %72, i64 %75)
  %77 = load i32, i32* @HIMT_RECORD_DONE, align 4
  %78 = mul nsw i32 %77, 256
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @DAQDS_wIntMsg, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writew(i32 %80, i64 %83)
  %85 = load i32, i32* %1, align 4
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @DAQDS_wFlags, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writew(i32 %85, i64 %88)
  br label %90

90:                                               ; preds = %43
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* @DAQDS__size, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %2, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %2, align 8
  br label %40

97:                                               ; preds = %40
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @PCTODSP_OFFSET(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msnd_outb(i32, i64) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PCTODSP_BASED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
