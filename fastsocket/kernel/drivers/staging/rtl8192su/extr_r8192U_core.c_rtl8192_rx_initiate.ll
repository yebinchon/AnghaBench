; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_rx_initiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_rx_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl8192_rx_info = type { i32, %struct.net_device*, %struct.urb* }

@MAX_RX_URB = common dso_local global i64 0, align 8
@RX_URB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl8192_rx_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8192_rx_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_rx_initiate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtl8192_rx_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @ieee80211_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.r8192_priv*
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = call i64 @skb_queue_len(i32* %12)
  %14 = load i64, i64* @MAX_RX_URB, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load i32, i32* @RX_URB_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sk_buff* @__dev_alloc_skb(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %65

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %24)
  store %struct.urb* %25, %struct.urb** %4, align 8
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  br label %65

31:                                               ; preds = %23
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_rcvbulkpipe(i32 %38, i32 3)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_tail_pointer(%struct.sk_buff* %40)
  %42 = load i32, i32* @RX_URB_SIZE, align 4
  %43 = load i32, i32* @rtl8192_rx_isr, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @usb_fill_bulk_urb(%struct.urb* %32, i32 %35, i32 %39, i32 %41, i32 %42, i32 %43, %struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %49, %struct.rtl8192_rx_info** %6, align 8
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %52 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %51, i32 0, i32 2
  store %struct.urb* %50, %struct.urb** %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %55 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %54, i32 0, i32 1
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  %56 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %57 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %56, i32 0, i32 0
  store i32 3, i32* %57, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @skb_queue_tail(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @usb_submit_urb(%struct.urb* %62, i32 %63)
  br label %10

65:                                               ; preds = %28, %22, %10
  br label %66

66:                                               ; preds = %88, %65
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 0
  %69 = call i64 @skb_queue_len(i32* %68)
  %70 = load i64, i64* @MAX_RX_URB, align 8
  %71 = add nsw i64 %70, 3
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %66
  %74 = load i32, i32* @RX_URB_SIZE, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.sk_buff* @__dev_alloc_skb(i32 %74, i32 %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %122

80:                                               ; preds = %73
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %81)
  store %struct.urb* %82, %struct.urb** %4, align 8
  %83 = load %struct.urb*, %struct.urb** %4, align 8
  %84 = icmp ne %struct.urb* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  br label %122

88:                                               ; preds = %80
  %89 = load %struct.urb*, %struct.urb** %4, align 8
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @usb_rcvbulkpipe(i32 %95, i32 9)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @skb_tail_pointer(%struct.sk_buff* %97)
  %99 = load i32, i32* @RX_URB_SIZE, align 4
  %100 = load i32, i32* @rtl8192_rx_isr, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @usb_fill_bulk_urb(%struct.urb* %89, i32 %92, i32 %96, i32 %98, i32 %99, i32 %100, %struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %106, %struct.rtl8192_rx_info** %6, align 8
  %107 = load %struct.urb*, %struct.urb** %4, align 8
  %108 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %109 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %108, i32 0, i32 2
  store %struct.urb* %107, %struct.urb** %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %112 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %111, i32 0, i32 1
  store %struct.net_device* %110, %struct.net_device** %112, align 8
  %113 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %6, align 8
  %114 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %113, i32 0, i32 0
  store i32 9, i32* %114, align 8
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 0
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @skb_queue_tail(i32* %116, %struct.sk_buff* %117)
  %119 = load %struct.urb*, %struct.urb** %4, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32 @usb_submit_urb(%struct.urb* %119, i32 %120)
  br label %66

122:                                              ; preds = %85, %79, %66
  ret i32 0
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
