; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxPutTxUrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxPutTxUrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i32, i32, i32 }

@ZM_MAX_TX_URB_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"UsbTxUrbQ inconsistent: TxUrbHead: %d, TxUrbTail: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxPutTxUrb(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.usbdrv_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  store %struct.usbdrv_private* %8, %struct.usbdrv_private** %3, align 8
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %10 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %9, i32 0, i32 2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %14 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @ZM_MAX_TX_URB_NUM, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %21 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ZM_MAX_TX_URB_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %28 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %30 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %35 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %38 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %43 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %42, i32 0, i32 2
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
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
