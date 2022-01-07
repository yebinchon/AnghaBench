; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxUnlinkAllUrbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxUnlinkAllUrbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbdrv_private = type { i32*, i32*, i32**, i32** }

@ZM_MAX_TX_URB_NUM = common dso_local global i32 0, align 4
@ZM_MAX_RX_URB_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxUnlinkAllUrbs(%struct.usbdrv_private* %0) #0 {
  %2 = alloca %struct.usbdrv_private*, align 8
  %3 = alloca i32, align 4
  store %struct.usbdrv_private* %0, %struct.usbdrv_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ZM_MAX_TX_URB_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %10 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @usb_unlink_urb(i32* %24)
  br label %26

26:                                               ; preds = %17, %8
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ZM_MAX_RX_URB_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %37 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %46 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @usb_unlink_urb(i32* %51)
  br label %53

53:                                               ; preds = %44, %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %59 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @usb_unlink_urb(i32* %60)
  %62 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %63 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @usb_unlink_urb(i32* %64)
  ret void
}

declare dso_local i32 @usb_unlink_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
