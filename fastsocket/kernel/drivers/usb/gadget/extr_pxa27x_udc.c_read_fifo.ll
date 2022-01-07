; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"read udccsr:%03x, count:%d bytes%s req %p %d/%d\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*)* @read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fifo(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %10 = call i64 @epout_has_pkt(%struct.pxa_ep* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %14 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %15 = call i32 @read_packet(%struct.pxa_ep* %13, %struct.pxa27x_request* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @inc_ep_stats_bytes(%struct.pxa_ep* %16, i32 %17, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %25 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %30 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %31 = load i32, i32* @UDCCSR, align 4
  %32 = call i32 @udc_ep_readl(%struct.pxa_ep* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %38 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %39 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %38, i32 0, i32 0
  %40 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %41 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %45 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ep_dbg(%struct.pxa_ep* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8* %37, %struct.TYPE_2__* %39, i64 %43, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %12
  %52 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %53 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %57 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %12
  store i32 1, i32* %7, align 4
  br label %63

62:                                               ; preds = %51
  br label %8

63:                                               ; preds = %61, %8
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @epout_has_pkt(%struct.pxa_ep*) #1

declare dso_local i32 @read_packet(%struct.pxa_ep*, %struct.pxa27x_request*) #1

declare dso_local i32 @inc_ep_stats_bytes(%struct.pxa_ep*, i32, i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i32, i32, i8*, %struct.TYPE_2__*, i64, i64) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
