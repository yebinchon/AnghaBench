; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_stop_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__, i32, %struct.musb_hw_ep*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.musb_hw_ep = type { i32, i64, i32, i64, i64 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, %struct.usb_gadget_driver*)* @stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_activity(%struct.musb* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.musb_hw_ep*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.musb*, %struct.musb** %3, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %4, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %16 = load %struct.musb*, %struct.musb** %3, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.musb*, %struct.musb** %3, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.musb*, %struct.musb** %3, align 8
  %26 = getelementptr inbounds %struct.musb, %struct.musb* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.musb*, %struct.musb** %3, align 8
  %28 = call i32 @musb_pullup(%struct.musb* %27, i32 0)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.musb*, %struct.musb** %3, align 8
  %31 = call i32 @musb_stop(%struct.musb* %30)
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %33 = icmp ne %struct.usb_gadget_driver* %32, null
  br i1 %33, label %34, label %102

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %35 = load %struct.musb*, %struct.musb** %3, align 8
  %36 = getelementptr inbounds %struct.musb, %struct.musb* %35, i32 0, i32 4
  %37 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %36, align 8
  store %struct.musb_hw_ep* %37, %struct.musb_hw_ep** %6, align 8
  br label %38

38:                                               ; preds = %84, %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.musb*, %struct.musb** %3, align 8
  %41 = getelementptr inbounds %struct.musb, %struct.musb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %38
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @musb_ep_select(i32 %47, i32 %48)
  %50 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %51 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %56 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %55, i32 0, i32 2
  %57 = load i32, i32* @ESHUTDOWN, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @nuke(i32* %56, i32 %58)
  br label %83

60:                                               ; preds = %44
  %61 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %62 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %67 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %66, i32 0, i32 2
  %68 = load i32, i32* @ESHUTDOWN, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @nuke(i32* %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %73 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %78 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %77, i32 0, i32 0
  %79 = load i32, i32* @ESHUTDOWN, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @nuke(i32* %78, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %88 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %87, i32 1
  store %struct.musb_hw_ep* %88, %struct.musb_hw_ep** %6, align 8
  br label %38

89:                                               ; preds = %38
  %90 = load %struct.musb*, %struct.musb** %3, align 8
  %91 = getelementptr inbounds %struct.musb, %struct.musb* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %94 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %94, align 8
  %96 = load %struct.musb*, %struct.musb** %3, align 8
  %97 = getelementptr inbounds %struct.musb, %struct.musb* %96, i32 0, i32 2
  %98 = call i32 %95(%struct.TYPE_2__* %97)
  %99 = load %struct.musb*, %struct.musb** %3, align 8
  %100 = getelementptr inbounds %struct.musb, %struct.musb* %99, i32 0, i32 1
  %101 = call i32 @spin_lock(i32* %100)
  br label %102

102:                                              ; preds = %89, %29
  ret void
}

declare dso_local i32 @musb_pullup(%struct.musb*, i32) #1

declare dso_local i32 @musb_stop(%struct.musb*) #1

declare dso_local i32 @musb_ep_select(i32, i32) #1

declare dso_local i32 @nuke(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
