; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.TYPE_2__, i64, i64, %struct.wb35_rx }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_rx = type { i64, i64, i32, i32, i32*, i32*, i64, %struct.urb* }
%struct.urb = type { i32 }

@MAX_USB_RX_BUFFER_NUMBER = common dso_local global i64 0, align 8
@MAX_USB_RX_BUFFER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"w35und: Rx memory alloc failed\0A\00", align 1
@Wb35Rx_Complete = common dso_local global i32 0, align 4
@VM_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Rx URB sending error\0A\00", align 1
@VM_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @Wb35Rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Rx(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_rx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %11, align 8
  store %struct.wbsoft_priv* %12, %struct.wbsoft_priv** %3, align 8
  %13 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %13, i32 0, i32 0
  store %struct.hw_data* %14, %struct.hw_data** %4, align 8
  %15 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %15, i32 0, i32 3
  store %struct.wb35_rx* %16, %struct.wb35_rx** %5, align 8
  %17 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %18 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %17, i32 0, i32 7
  %19 = load %struct.urb*, %struct.urb** %18, align 8
  store %struct.urb* %19, %struct.urb** %7, align 8
  %20 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %21 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %26 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %1
  br label %102

30:                                               ; preds = %24
  %31 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %32 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %102

36:                                               ; preds = %30
  %37 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %38 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %41 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %102

48:                                               ; preds = %36
  %49 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %50 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* @MAX_USB_RX_BUFFER_NUMBER, align 8
  %54 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %55 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = urem i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %60 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @MAX_USB_RX_BUFFER, align 4
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32* @kzalloc(i32 %61, i32 %62)
  %64 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %65 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %67 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %48
  %71 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %102

72:                                               ; preds = %48
  %73 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %74 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %6, align 8
  %76 = load %struct.urb*, %struct.urb** %7, align 8
  %77 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %78 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %82 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @usb_rcvbulkpipe(i32 %84, i32 3)
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @MAX_USB_RX_BUFFER, align 4
  %88 = load i32, i32* @Wb35Rx_Complete, align 4
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = call i32 @usb_fill_bulk_urb(%struct.urb* %76, i32 %80, i32 %85, i32* %86, i32 %87, i32 %88, %struct.ieee80211_hw* %89)
  %91 = load i32, i32* @VM_RUNNING, align 4
  %92 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %93 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.urb*, %struct.urb** %7, align 8
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call i32 @usb_submit_urb(%struct.urb* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %72
  %100 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %102

101:                                              ; preds = %72
  br label %109

102:                                              ; preds = %99, %70, %47, %35, %29
  %103 = load i32, i32* @VM_STOP, align 4
  %104 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %105 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %107 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %106, i32 0, i32 2
  %108 = call i32 @atomic_dec(i32* %107)
  br label %109

109:                                              ; preds = %102, %101
  ret void
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
