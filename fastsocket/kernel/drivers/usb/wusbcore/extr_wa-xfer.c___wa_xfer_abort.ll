; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c___wa_xfer_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.wa_xfer_abort_buffer = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WA_XFER_ABORT = common dso_local global i32 0, align 4
@__wa_xfer_abort_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xfer %p: Can't submit abort request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wa_xfer*)* @__wa_xfer_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wa_xfer_abort(%struct.wa_xfer* %0) #0 {
  %2 = alloca %struct.wa_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wa_xfer_abort_buffer*, align 8
  %6 = alloca %struct.wa_rpipe*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %2, align 8
  %7 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.wa_rpipe*, %struct.wa_rpipe** %16, align 8
  store %struct.wa_rpipe* %17, %struct.wa_rpipe** %6, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.wa_xfer_abort_buffer* @kmalloc(i32 20, i32 %18)
  store %struct.wa_xfer_abort_buffer* %19, %struct.wa_xfer_abort_buffer** %5, align 8
  %20 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %21 = icmp eq %struct.wa_xfer_abort_buffer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %90

23:                                               ; preds = %1
  %24 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 16, i32* %26, align 4
  %27 = load i32, i32* @WA_XFER_ABORT, align 4
  %28 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %32 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %39 = call i32 @wa_xfer_id(%struct.wa_xfer* %38)
  %40 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %43, i32 0, i32 0
  %45 = call i32 @usb_init_urb(i32* %44)
  %46 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %46, i32 0, i32 0
  %48 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %49 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %54 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_sndbulkpipe(i32 %57, i32 %64)
  %66 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* @__wa_xfer_abort_cb, align 4
  %69 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %70 = call i32 @usb_fill_bulk_urb(i32* %47, i32 %52, i32 %65, %struct.TYPE_12__* %67, i32 16, i32 %68, %struct.wa_xfer_abort_buffer* %69)
  %71 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(i32* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %23
  br label %79

78:                                               ; preds = %23
  br label %91

79:                                               ; preds = %77
  %80 = call i64 (...) @printk_ratelimit()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %5, align 8
  %89 = call i32 @kfree(%struct.wa_xfer_abort_buffer* %88)
  br label %90

90:                                               ; preds = %87, %22
  br label %91

91:                                               ; preds = %90, %78
  ret void
}

declare dso_local %struct.wa_xfer_abort_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @wa_xfer_id(%struct.wa_xfer*) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, %struct.TYPE_12__*, i32, i32, %struct.wa_xfer_abort_buffer*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.wa_xfer*, i32) #1

declare dso_local i32 @kfree(%struct.wa_xfer_abort_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
