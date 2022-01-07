; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.wa_xfer*, i32, i32* }
%struct.wa_xfer = type { i32, %struct.usb_host_endpoint*, i32, %struct.urb*, i32 }

@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BUG? urb %p: NULL xfer buffer & NODMA\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"xfer %p urb %p pipe 0x%02x [%d bytes] %s %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nodma\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"inbound\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"outbound\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@wusbd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_urb_enqueue(%struct.wahc* %0, %struct.usb_host_endpoint* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wahc*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.wa_xfer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %6, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %7, align 8
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.wahc*, %struct.wahc** %6, align 8
  %16 = getelementptr inbounds %struct.wahc, %struct.wahc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = call i32 (...) @irqs_disabled()
  %20 = call i32 (...) @in_atomic()
  %21 = or i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.urb*, %struct.urb** %8, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.urb*, %struct.urb** %8, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = load %struct.urb*, %struct.urb** %8, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = load %struct.urb*, %struct.urb** %8, align 8
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.urb* %40)
  %42 = call i32 (...) @dump_stack()
  br label %43

43:                                               ; preds = %38, %33, %26, %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.wa_xfer* @kzalloc(i32 40, i32 %46)
  store %struct.wa_xfer* %47, %struct.wa_xfer** %12, align 8
  %48 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %49 = icmp eq %struct.wa_xfer* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %139

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.urb*, %struct.urb** %8, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EINPROGRESS, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %136

61:                                               ; preds = %51
  %62 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %63 = call i32 @wa_xfer_init(%struct.wa_xfer* %62)
  %64 = load %struct.wahc*, %struct.wahc** %6, align 8
  %65 = call i32 @wa_get(%struct.wahc* %64)
  %66 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %67 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %70 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %69, i32 0, i32 3
  store %struct.urb* %68, %struct.urb** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %73 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %75 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %76 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %75, i32 0, i32 1
  store %struct.usb_host_endpoint* %74, %struct.usb_host_endpoint** %76, align 8
  %77 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %78 = load %struct.urb*, %struct.urb** %8, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 3
  store %struct.wa_xfer* %77, %struct.wa_xfer** %79, align 8
  %80 = load %struct.device*, %struct.device** %11, align 8
  %81 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = load %struct.urb*, %struct.urb** %8, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.urb*, %struct.urb** %8, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.urb*, %struct.urb** %8, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %97 = load %struct.urb*, %struct.urb** %8, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @USB_DIR_IN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %109 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.wa_xfer* %81, %struct.urb* %82, i32 %85, i32 %88, i8* %96, i8* %104, i8* %108)
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %61
  %113 = load %struct.urb*, %struct.urb** %8, align 8
  %114 = call i32 @usb_get_urb(%struct.urb* %113)
  %115 = load %struct.wahc*, %struct.wahc** %6, align 8
  %116 = getelementptr inbounds %struct.wahc, %struct.wahc* %115, i32 0, i32 1
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @spin_lock_irqsave(i32* %116, i64 %117)
  %119 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %120 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %119, i32 0, i32 0
  %121 = load %struct.wahc*, %struct.wahc** %6, align 8
  %122 = getelementptr inbounds %struct.wahc, %struct.wahc* %121, i32 0, i32 2
  %123 = call i32 @list_add_tail(i32* %120, i32* %122)
  %124 = load %struct.wahc*, %struct.wahc** %6, align 8
  %125 = getelementptr inbounds %struct.wahc, %struct.wahc* %124, i32 0, i32 1
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* @wusbd, align 4
  %129 = load %struct.wahc*, %struct.wahc** %6, align 8
  %130 = getelementptr inbounds %struct.wahc, %struct.wahc* %129, i32 0, i32 0
  %131 = call i32 @queue_work(i32 %128, i32* %130)
  br label %135

132:                                              ; preds = %61
  %133 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %134 = call i32 @wa_urb_enqueue_b(%struct.wa_xfer* %133)
  br label %135

135:                                              ; preds = %132, %112
  store i32 0, i32* %5, align 4
  br label %141

136:                                              ; preds = %60
  %137 = load %struct.wa_xfer*, %struct.wa_xfer** %12, align 8
  %138 = call i32 @kfree(%struct.wa_xfer* %137)
  br label %139

139:                                              ; preds = %136, %50
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @in_atomic(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.urb*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local %struct.wa_xfer* @kzalloc(i32, i32) #1

declare dso_local i32 @wa_xfer_init(%struct.wa_xfer*) #1

declare dso_local i32 @wa_get(%struct.wahc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.wa_xfer*, %struct.urb*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @usb_get_urb(%struct.urb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wa_urb_enqueue_b(%struct.wa_xfer*) #1

declare dso_local i32 @kfree(%struct.wa_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
