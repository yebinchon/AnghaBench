; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_rx.c_i1480u_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u = type { i32, %struct.i1480u_rx_buf*, %struct.TYPE_6__*, i32*, %struct.net_device* }
%struct.i1480u_rx_buf = type { i32*, %struct.sk_buff*, %struct.i1480u* }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.device = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@i1480u_RX_BUFS = common dso_local global i32 0, align 4
@i1480u_MAX_RX_PKT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"RX: cannot allocate RX buffer %d\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RX: cannot allocate URB %d\0A\00", align 1
@i1480u_rx_cb = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"RX: cannot submit URB %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480u_rx_setup(%struct.i1480u* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i1480u*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.i1480u_rx_buf*, align 8
  store %struct.i1480u* %0, %struct.i1480u** %3, align 8
  %11 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %12 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %16 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %19 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %23 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %30, %struct.usb_endpoint_descriptor** %8, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %124, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @i1480u_RX_BUFS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %127

35:                                               ; preds = %31
  %36 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %37 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %36, i32 0, i32 1
  %38 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %38, i64 %40
  store %struct.i1480u_rx_buf* %41, %struct.i1480u_rx_buf** %10, align 8
  %42 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %43 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %44 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %43, i32 0, i32 2
  store %struct.i1480u* %42, %struct.i1480u** %44, align 8
  %45 = load i64, i64* @i1480u_MAX_RX_PKT_SIZE, align 8
  %46 = call %struct.sk_buff* @dev_alloc_skb(i64 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %128

55:                                               ; preds = %35
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  store %struct.net_device* %56, %struct.net_device** %58, align 8
  %59 = load i32, i32* @CHECKSUM_NONE, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 @skb_reserve(%struct.sk_buff* %62, i32 2)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %66 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %65, i32 0, i32 1
  store %struct.sk_buff* %64, %struct.sk_buff** %66, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32* @usb_alloc_urb(i32 0, i32 %67)
  %69 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %70 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %72 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %55
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %128

84:                                               ; preds = %55
  %85 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %86 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %89 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %92 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usb_rcvbulkpipe(i32 %93, i32 %96)
  %98 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %99 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %98, i32 0, i32 1
  %100 = load %struct.sk_buff*, %struct.sk_buff** %99, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @i1480u_MAX_RX_PKT_SIZE, align 8
  %104 = sub nsw i64 %103, 2
  %105 = load i32, i32* @i1480u_rx_cb, align 4
  %106 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %107 = call i32 @usb_fill_bulk_urb(i32* %87, i32 %90, i32 %97, i32 %102, i64 %104, i32 %105, %struct.i1480u_rx_buf* %106)
  %108 = load %struct.i1480u_rx_buf*, %struct.i1480u_rx_buf** %10, align 8
  %109 = getelementptr inbounds %struct.i1480u_rx_buf, %struct.i1480u_rx_buf* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @GFP_NOIO, align 4
  %112 = call i32 @usb_submit_urb(i32* %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %84
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  br label %128

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %31

127:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %132

128:                                              ; preds = %118, %78, %49
  %129 = load %struct.i1480u*, %struct.i1480u** %3, align 8
  %130 = call i32 @i1480u_rx_release(%struct.i1480u* %129)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32, i64, i32, %struct.i1480u_rx_buf*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @i1480u_rx_release(%struct.i1480u*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
