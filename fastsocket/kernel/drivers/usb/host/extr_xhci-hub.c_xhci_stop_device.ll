; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_stop_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_8__*, %struct.xhci_virt_device** }
%struct.TYPE_8__ = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.xhci_command = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't allocate command structure.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LAST_EP_INDEX = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s while waiting for stop endpoint command\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@LIST_POISON1 = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i32, i32)* @xhci_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_stop_device(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_device*, align 8
  %9 = alloca %struct.xhci_command*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 2
  %16 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %16, i64 %18
  %20 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %19, align 8
  store %struct.xhci_virt_device* %20, %struct.xhci_virt_device** %8, align 8
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %21, i32 0, i32 1, i32 %22)
  store %struct.xhci_command* %23, %struct.xhci_command** %9, align 8
  %24 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %25 = icmp ne %struct.xhci_command* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %28 = call i32 @xhci_dbg(%struct.xhci_hcd* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %136

31:                                               ; preds = %3
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* @LAST_EP_INDEX, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %69, %31
  %38 = load i32, i32* %13, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %42 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %40
  %51 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %52 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %50, %40
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %74 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %79 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %81 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %80, i32 0, i32 0
  %82 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %83 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(%struct.TYPE_9__* %81, i32* %83)
  %85 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %85, i32 %86, i32 0, i32 %87)
  %89 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %90 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %89)
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %91, i32 0, i32 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %96 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %99 = call i32 @wait_for_completion_interruptible_timeout(i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %72
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %108 = call i32 @xhci_warn(%struct.xhci_hcd* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %110 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %109, i32 0, i32 0
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %114 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LIST_POISON1, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %102
  %120 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %121 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %120, i32 0, i32 0
  %122 = call i32 @list_del(%struct.TYPE_9__* %121)
  br label %123

123:                                              ; preds = %119, %102
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %125 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %124, i32 0, i32 0
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* @ETIME, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %12, align 4
  br label %131

130:                                              ; preds = %72
  br label %131

131:                                              ; preds = %130, %123
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %133 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %134 = call i32 @xhci_free_command(%struct.xhci_hcd* %132, %struct.xhci_command* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %131, %26
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i8*) #1

declare dso_local i32 @list_del(%struct.TYPE_9__*) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
