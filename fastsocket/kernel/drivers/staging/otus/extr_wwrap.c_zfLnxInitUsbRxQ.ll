; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxInitUsbRxQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxInitUsbRxQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32**, i32*, i64, i64 }

@ZM_MAX_RX_URB_NUM = common dso_local global i32 0, align 4
@ZM_MAX_RX_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxInitUsbRxQ(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  store %struct.usbdrv_private* %8, %struct.usbdrv_private** %5, align 8
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %10 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* @ZM_MAX_RX_URB_NUM, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32** %11, i32 0, i32 %15)
  %17 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %18 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ZM_MAX_RX_URB_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* @ZM_MAX_RX_BUFFER_SIZE, align 4
  %25 = call i32* @dev_alloc_skb(i32 %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %28 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %26, i32** %32, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %38 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %69, %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ZM_MAX_RX_URB_NUM, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %46 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @zfLnxPutUsbRxBuffer(%struct.TYPE_5__* %44, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %55 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %62 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @zfLnxUsbIn(%struct.TYPE_5__* %53, i32 %60, i32* %67)
  br label %69

69:                                               ; preds = %43
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %39

72:                                               ; preds = %39
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32* @dev_alloc_skb(i32) #1

declare dso_local i32 @zfLnxPutUsbRxBuffer(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @zfLnxUsbIn(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
