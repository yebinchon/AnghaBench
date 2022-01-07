; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_ep0tx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_ep0tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR9170_USB_EP_CTRL_MAX = common dso_local global i32 0, align 4
@AR9170_USB_REG_FIFO_SIZE = common dso_local global i32 0, align 4
@AR9170_USB_REG_EP0_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @usb_ep0tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_ep0tx_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AR9170_USB_EP_CTRL_MAX, align 4
  %11 = icmp ugt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AR9170_USB_EP_CTRL_MAX, align 4
  %16 = icmp ugt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @min(i32 %19, i32 4)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @AR9170_USB_REG_FIFO_SIZE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @setb(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GET_ARRAY(i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @memcpy(i32* %8, i32 %41, i32 %42)
  %44 = load i32, i32* @AR9170_USB_REG_EP0_DATA, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @set(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @min(i32 %52, i32 4)
  store i32 %53, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* @AR9170_USB_REG_FIFO_SIZE, align 4
  %56 = call i32 @setb(i32 %55, i32 15)
  ret i32 1
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @setb(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @GET_ARRAY(i8*, i32) #1

declare dso_local i32 @set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
