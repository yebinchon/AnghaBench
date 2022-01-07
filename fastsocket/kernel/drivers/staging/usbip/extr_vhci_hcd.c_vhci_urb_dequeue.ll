; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_5__, i32, i32, i32, %struct.vhci_priv* }
%struct.TYPE_5__ = type { i32 }
%struct.vhci_priv = type { i32, i32, %struct.vhci_device* }
%struct.vhci_device = type { i32, %struct.TYPE_5__, i32, i32, i32, %struct.vhci_priv* }
%struct.vhci_unlink = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"vhci_hcd: dequeue a urb %p\0A\00", align 1
@the_controller = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"vhci_hcd: device %p seems to be disconnected\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"vhci_hcd: vhci_urb_dequeue() gives back urb %p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"malloc vhci_unlink\0A\00", align 1
@VDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"seqnum max\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"vhci_hcd: device %p seems to be still connected\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @vhci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vhci_priv*, align 8
  %10 = alloca %struct.vhci_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vhci_unlink*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.urb*, %struct.urb** %6, align 8
  %16 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.urb* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 5
  %23 = load %struct.vhci_priv*, %struct.vhci_priv** %22, align 8
  store %struct.vhci_priv* %23, %struct.vhci_priv** %9, align 8
  %24 = load %struct.vhci_priv*, %struct.vhci_priv** %9, align 8
  %25 = icmp ne %struct.vhci_priv* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  store i32 0, i32* %4, align 4
  br label %186

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = bitcast %struct.urb* %33 to %struct.vhci_device*
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %32, %struct.vhci_device* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %186

45:                                               ; preds = %31
  %46 = load %struct.vhci_priv*, %struct.vhci_priv** %9, align 8
  %47 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %46, i32 0, i32 2
  %48 = load %struct.vhci_device*, %struct.vhci_device** %47, align 8
  store %struct.vhci_device* %48, %struct.vhci_device** %10, align 8
  %49 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %50 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %45
  %55 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %56 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %55, i32 0, i32 2
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %60 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.vhci_device* %59)
  %61 = load %struct.vhci_priv*, %struct.vhci_priv** %9, align 8
  %62 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %61, i32 0, i32 1
  %63 = call i32 @list_del(i32* %62)
  %64 = load %struct.vhci_priv*, %struct.vhci_priv** %9, align 8
  %65 = call i32 @kfree(%struct.vhci_priv* %64)
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 5
  store %struct.vhci_priv* null, %struct.vhci_priv** %67, align 8
  %68 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %69 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %68, i32 0, i32 2
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %72)
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %75 = load %struct.urb*, %struct.urb** %6, align 8
  %76 = bitcast %struct.urb* %75 to %struct.vhci_device*
  %77 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %74, %struct.vhci_device* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %83 = call i32 @vhci_to_hcd(%struct.TYPE_4__* %82)
  %84 = load %struct.urb*, %struct.urb** %6, align 8
  %85 = bitcast %struct.urb* %84 to %struct.vhci_device*
  %86 = load %struct.urb*, %struct.urb** %6, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @usb_hcd_giveback_urb(i32 %83, %struct.vhci_device* %85, i32 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  br label %151

94:                                               ; preds = %45
  %95 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %96 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %95, i32 0, i32 2
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call %struct.vhci_unlink* @kzalloc(i32 12, i32 %99)
  store %struct.vhci_unlink* %100, %struct.vhci_unlink** %14, align 8
  %101 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %102 = icmp ne %struct.vhci_unlink* %101, null
  br i1 %102, label %119, label %103

103:                                              ; preds = %94
  %104 = call i32 @usbip_uerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %106 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %105, i32 0, i32 2
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %114 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %113, i32 0, i32 1
  %115 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %116 = call i32 @usbip_event_add(%struct.TYPE_5__* %114, i32 %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %186

119:                                              ; preds = %94
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = call i32 @atomic_inc_return(i32* %121)
  %123 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %124 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %126 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 65535
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %119
  %132 = load %struct.vhci_priv*, %struct.vhci_priv** %9, align 8
  %133 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %136 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %138 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), %struct.vhci_device* %137)
  %139 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %140 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %139, i32 0, i32 1
  %141 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %142 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %141, i32 0, i32 4
  %143 = call i32 @list_add_tail(i32* %140, i32* %142)
  %144 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %145 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %144, i32 0, i32 3
  %146 = call i32 @wake_up(i32* %145)
  %147 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %148 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %147, i32 0, i32 2
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  br label %151

151:                                              ; preds = %131, %54
  %152 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %153 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %180, label %157

157:                                              ; preds = %151
  %158 = load %struct.urb*, %struct.urb** %6, align 8
  %159 = call i32 (i8*, ...) @usbip_uinfo(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %158)
  %160 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = bitcast %struct.urb* %161 to %struct.vhci_device*
  %163 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %160, %struct.vhci_device* %162)
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %169 = call i32 @vhci_to_hcd(%struct.TYPE_4__* %168)
  %170 = load %struct.urb*, %struct.urb** %6, align 8
  %171 = bitcast %struct.urb* %170 to %struct.vhci_device*
  %172 = load %struct.urb*, %struct.urb** %6, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @usb_hcd_giveback_urb(i32 %169, %struct.vhci_device* %171, i32 %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @spin_lock_irqsave(i32* %177, i64 %178)
  br label %180

180:                                              ; preds = %157, %151
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @spin_unlock_irqrestore(i32* %182, i64 %183)
  %185 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %180, %103, %39, %26
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @usbip_uinfo(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.vhci_device*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vhci_priv*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.vhci_device*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.vhci_device*, i32) #1

declare dso_local i32 @vhci_to_hcd(%struct.TYPE_4__*) #1

declare dso_local %struct.vhci_unlink* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_uerr(i8*) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
