; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_set_halt_and_wedge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_set_halt_and_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.dummy_ep = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dummy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, i32, i32)* @dummy_set_halt_and_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_set_halt_and_wedge(%struct.usb_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dummy_ep*, align 8
  %9 = alloca %struct.dummy*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %11 = icmp ne %struct.usb_ep* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %17 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %16)
  store %struct.dummy_ep* %17, %struct.dummy_ep** %8, align 8
  %18 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %19 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %18)
  store %struct.dummy* %19, %struct.dummy** %9, align 8
  %20 = load %struct.dummy*, %struct.dummy** %9, align 8
  %21 = getelementptr inbounds %struct.dummy, %struct.dummy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ESHUTDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %32 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %34 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %67

35:                                               ; preds = %27
  %36 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %37 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %42 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USB_DIR_IN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %51 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %50, i32 0, i32 2
  %52 = call i32 @list_empty(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %68

57:                                               ; preds = %49, %40, %35
  %58 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %59 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %64 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %30
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %54, %24, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
