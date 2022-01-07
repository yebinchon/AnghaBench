; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_pack_DARQ_to_DARF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_pack_DARQ_to_DARF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@JQS_wTail = common dso_local global i64 0, align 8
@DAQDS__size = common dso_local global i32 0, align 4
@JQS_wSize = common dso_local global i64 0, align 8
@JQS_wHead = common dso_local global i64 0, align 8
@DARQ_DATA_BUFF = common dso_local global i64 0, align 8
@DAQDS_wSize = common dso_local global i64 0, align 8
@HPBLKSEL_1 = common dso_local global i32 0, align 4
@HP_BLKS = common dso_local global i64 0, align 8
@DAR_BUFF_SIZE = common dso_local global i32 0, align 4
@HPBLKSEL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pack_DARQ_to_DARF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_DARQ_to_DARF(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 3, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 8
  %8 = load i64, i64* @JQS_wTail, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readw(i64 %9)
  %11 = load i32, i32* @DAQDS__size, align 4
  %12 = call i32 @PCTODSP_OFFSET(i32 %11)
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 8
  %16 = load i64, i64* @JQS_wSize, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readw(i64 %17)
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %1
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 8
  %25 = load i64, i64* @JQS_wHead, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readw(i64 %26)
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi i1 [ false, %22 ], [ %32, %29 ]
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = call i32 @udelay(i32 1)
  br label %22

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 8
  %40 = load i64, i64* @JQS_wTail, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writew(i32 %38, i64 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @DAQDS__size, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @DARQ_DATA_BUFF, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @DAQDS_wSize, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readw(i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @HPBLKSEL_1, align 4
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %57 = load i64, i64* @HP_BLKS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @msnd_outb(i32 %55, i64 %58)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 8
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @DAR_BUFF_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @msnd_fifo_write_io(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), i64 %65, i32 %66)
  %68 = load i32, i32* @HPBLKSEL_0, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %70 = load i64, i64* @HP_BLKS, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @msnd_outb(i32 %68, i64 %71)
  ret i32 1
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @PCTODSP_OFFSET(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @msnd_outb(i32, i64) #1

declare dso_local i32 @msnd_fifo_write_io(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
