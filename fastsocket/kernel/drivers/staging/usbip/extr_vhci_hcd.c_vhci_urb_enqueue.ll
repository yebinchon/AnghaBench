; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_6__*, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.vhci_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"enter, usb_hcd %p urb %p mem_flags %d\0A\00", align 1
@the_controller = common dso_local global %struct.TYPE_7__* null, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"URB already unlinked!, status %d\0A\00", align 1
@PIPE_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid request to devnum 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"SetAddress Request (%d) to port %d\0A\00", align 1
@VDEV_ST_USED = common dso_local global i32 0, align 4
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Not yet?: Get_Descriptor to device 0 (get max pipe size)\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"invalid request to devnum 0 bRequest %u, wValue %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @vhci_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usb_ctrlrequest*, align 8
  %13 = alloca %struct.vhci_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.urb*, %struct.urb** %6, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.usb_hcd* %18, %struct.urb* %19, i32 %20)
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.urb*, %struct.urb** %6, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %3
  %32 = phi i1 [ false, %3 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EINPROGRESS, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  br label %186

58:                                               ; preds = %31
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %59, %struct.urb* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %173

65:                                               ; preds = %58
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @usb_pipedevice(i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %161

71:                                               ; preds = %65
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @usb_pipetype(i32 %74)
  store i64 %75, i64* %11, align 8
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %79, %struct.usb_ctrlrequest** %12, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.vhci_device* @port_to_vdev(i32 %82)
  store %struct.vhci_device* %83, %struct.vhci_device** %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @PIPE_CONTROL, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %89 = icmp ne %struct.usb_ctrlrequest* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87, %71
  %91 = load %struct.device*, %struct.device** %8, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %169

95:                                               ; preds = %87
  %96 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %97 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %150 [
    i32 128, label %99
    i32 129, label %135
  ]

99:                                               ; preds = %95
  %100 = load %struct.device*, %struct.device** %8, align 8
  %101 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %102 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %105 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_info(%struct.device* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.urb*, %struct.urb** %6, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %112 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %111, i32 0, i32 0
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  %113 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %114 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load i32, i32* @VDEV_ST_USED, align 4
  %118 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %119 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %122 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.urb*, %struct.urb** %6, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @EINPROGRESS, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %99
  %132 = load %struct.urb*, %struct.urb** %6, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %99
  br label %169

135:                                              ; preds = %95
  %136 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %137 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @USB_DT_DEVICE, align 4
  %140 = shl i32 %139, 8
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %135
  %145 = load %struct.urb*, %struct.urb** %6, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.vhci_device*, %struct.vhci_device** %13, align 8
  %149 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %148, i32 0, i32 0
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %149, align 8
  br label %162

150:                                              ; preds = %95
  %151 = load %struct.device*, %struct.device** %8, align 8
  %152 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %153 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %156 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %9, align 4
  br label %169

161:                                              ; preds = %65
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct.urb*, %struct.urb** %6, align 8
  %164 = call i32 @vhci_tx_urb(%struct.urb* %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  store i32 0, i32* %4, align 4
  br label %186

169:                                              ; preds = %150, %134, %90
  %170 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %171 = load %struct.urb*, %struct.urb** %6, align 8
  %172 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %170, %struct.urb* %171)
  br label %173

173:                                              ; preds = %169, %64
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_controller, align 8
  %179 = call i32 @vhci_to_hcd(%struct.TYPE_7__* %178)
  %180 = load %struct.urb*, %struct.urb** %6, align 8
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @usb_hcd_giveback_urb(i32 %179, %struct.urb* %180, i32 %183)
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %173, %162, %45
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @usbip_dbg_vhci_hc(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local %struct.vhci_device* @port_to_vdev(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vhci_tx_urb(%struct.urb*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

declare dso_local i32 @vhci_to_hcd(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
