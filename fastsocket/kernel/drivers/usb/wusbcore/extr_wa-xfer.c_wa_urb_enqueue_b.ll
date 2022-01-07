; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_urb_enqueue_b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_urb_enqueue_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i32, i32, %struct.TYPE_2__*, %struct.wusb_dev*, i32, %struct.wahc*, %struct.urb* }
%struct.TYPE_2__ = type { i32 }
%struct.wusb_dev = type { i32 }
%struct.wahc = type { %struct.wusbhc* }
%struct.wusbhc = type { i32 }
%struct.urb = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wa_xfer*)* @wa_urb_enqueue_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_urb_enqueue_b(%struct.wa_xfer* %0) #0 {
  %2 = alloca %struct.wa_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.wahc*, align 8
  %7 = alloca %struct.wusbhc*, align 8
  %8 = alloca %struct.wusb_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.wa_xfer* %0, %struct.wa_xfer** %2, align 8
  %10 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %10, i32 0, i32 6
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %12, %struct.urb** %5, align 8
  %13 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %13, i32 0, i32 5
  %15 = load %struct.wahc*, %struct.wahc** %14, align 8
  store %struct.wahc* %15, %struct.wahc** %6, align 8
  %16 = load %struct.wahc*, %struct.wahc** %6, align 8
  %17 = getelementptr inbounds %struct.wahc, %struct.wahc* %16, i32 0, i32 0
  %18 = load %struct.wusbhc*, %struct.wusbhc** %17, align 8
  store %struct.wusbhc* %18, %struct.wusbhc** %7, align 8
  %19 = load %struct.wahc*, %struct.wahc** %6, align 8
  %20 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %21 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.urb*, %struct.urb** %5, align 8
  %24 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %25 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rpipe_get_by_ep(%struct.wahc* %19, %struct.TYPE_2__* %22, %struct.urb* %23, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %115

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %35 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %43 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %108

45:                                               ; preds = %31
  %46 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc* %46, i32* %49)
  store %struct.wusb_dev* %50, %struct.wusb_dev** %8, align 8
  %51 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %52 = icmp eq %struct.wusb_dev* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %55 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %108

57:                                               ; preds = %45
  %58 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %59 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %61, i32 0, i32 1
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %66 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %67 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %66, i32 0, i32 3
  store %struct.wusb_dev* %65, %struct.wusb_dev** %67, align 8
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EINPROGRESS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %97

78:                                               ; preds = %57
  %79 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = call i32 @__wa_xfer_setup(%struct.wa_xfer* %79, %struct.urb* %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %96

85:                                               ; preds = %78
  %86 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %87 = call i32 @__wa_xfer_submit(%struct.wa_xfer* %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %121

91:                                               ; preds = %85
  %92 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %93 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %92, i32 0, i32 1
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %136

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %99 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %98, i32 0, i32 1
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %103 = icmp ne %struct.wusb_dev* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %106 = call i32 @wusb_dev_put(%struct.wusb_dev* %105)
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %53, %41
  %109 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %110 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rpipe_put(i32 %113)
  br label %115

115:                                              ; preds = %108, %30
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %118 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %120 = call i32 @wa_xfer_giveback(%struct.wa_xfer* %119)
  br label %136

121:                                              ; preds = %90
  %122 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %123 = call i32 @__wa_xfer_is_done(%struct.wa_xfer* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %126 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %128 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %127, i32 0, i32 1
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %135 = call i32 @wa_xfer_completion(%struct.wa_xfer* %134)
  br label %136

136:                                              ; preds = %91, %115, %133, %121
  ret void
}

declare dso_local i32 @rpipe_get_by_ep(%struct.wahc*, %struct.TYPE_2__*, %struct.urb*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__wa_xfer_setup(%struct.wa_xfer*, %struct.urb*) #1

declare dso_local i32 @__wa_xfer_submit(%struct.wa_xfer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wusb_dev_put(%struct.wusb_dev*) #1

declare dso_local i32 @rpipe_put(i32) #1

declare dso_local i32 @wa_xfer_giveback(%struct.wa_xfer*) #1

declare dso_local i32 @__wa_xfer_is_done(%struct.wa_xfer*) #1

declare dso_local i32 @wa_xfer_completion(%struct.wa_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
