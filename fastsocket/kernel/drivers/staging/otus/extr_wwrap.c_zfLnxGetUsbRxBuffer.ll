; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxGetUsbRxBuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxGetUsbRxBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i64, i64, i32, i32, i32** }

@ZM_MAX_RX_URB_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RxBufQ inconsistent: RxBufHead: %d, RxBufTail: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfLnxGetUsbRxBuffer(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.usbdrv_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %8, align 8
  store %struct.usbdrv_private* %9, %struct.usbdrv_private** %4, align 8
  %10 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %11 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %15 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %20 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %19, i32 0, i32 4
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %23 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %28 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = load i32, i32* @ZM_MAX_RX_URB_NUM, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = and i64 %30, %33
  %35 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %36 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %38 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  br label %54

41:                                               ; preds = %1
  %42 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %43 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %47 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %51 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %50, i32 0, i32 2
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32* null, i32** %2, align 8
  br label %60

54:                                               ; preds = %18
  %55 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %56 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %55, i32 0, i32 2
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32*, i32** %5, align 8
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %54, %41
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
