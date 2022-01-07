; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_find_dev_by_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_find_dev_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_dev = type { i32 }
%struct.wusbhc = type { i32 }
%struct.TYPE_2__ = type { %struct.wusb_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wusb_dev* (%struct.wusbhc*, i32)* @wusbhc_find_dev_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca %struct.wusb_dev*, align 8
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wusb_dev* null, %struct.wusb_dev** %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -129
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %24 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15
  store %struct.wusb_dev* null, %struct.wusb_dev** %3, align 8
  br label %62

28:                                               ; preds = %21
  %29 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.wusb_dev*, %struct.wusb_dev** %32, align 8
  store %struct.wusb_dev* %33, %struct.wusb_dev** %3, align 8
  br label %62

34:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %38 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.wusb_dev*, %struct.wusb_dev** %45, align 8
  store %struct.wusb_dev* %46, %struct.wusb_dev** %8, align 8
  %47 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %48 = icmp ne %struct.wusb_dev* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %51 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  store %struct.wusb_dev* %56, %struct.wusb_dev** %3, align 8
  br label %62

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %35

61:                                               ; preds = %35
  store %struct.wusb_dev* null, %struct.wusb_dev** %3, align 8
  br label %62

62:                                               ; preds = %61, %55, %28, %27, %11
  %63 = load %struct.wusb_dev*, %struct.wusb_dev** %3, align 8
  ret %struct.wusb_dev* %63
}

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
