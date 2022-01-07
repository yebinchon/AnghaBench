; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_ether.c_rx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_ether.c_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.usb_request = type { i64, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@RX_EXTRA = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no rx skb\0A\00", align 1
@rx_complete = common dso_local global i32 0, align 4
@WORK_RX_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rx submit --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth_dev*, %struct.usb_request*, i32)* @rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_submit(%struct.eth_dev* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eth_dev*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_ep*, align 8
  %12 = alloca i64, align 8
  store %struct.eth_dev* %0, %struct.eth_dev** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %16 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %15, i32 0, i32 4
  %17 = load i64, i64* %12, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %20 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %25 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.usb_ep*, %struct.usb_ep** %27, align 8
  store %struct.usb_ep* %28, %struct.usb_ep** %11, align 8
  br label %30

29:                                               ; preds = %3
  store %struct.usb_ep* null, %struct.usb_ep** %11, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %32 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %31, i32 0, i32 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.usb_ep*, %struct.usb_ep** %11, align 8
  %36 = icmp ne %struct.usb_ep* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOTCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %142

40:                                               ; preds = %30
  %41 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %42 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 4, %45
  %47 = load i64, i64* @RX_EXTRA, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %52 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load %struct.usb_ep*, %struct.usb_ep** %11, align 8
  %59 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.usb_ep*, %struct.usb_ep** %11, align 8
  %67 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = urem i64 %65, %69
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @NET_IP_ALIGN, align 8
  %75 = add i64 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.sk_buff* @alloc_skb(i64 %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %8, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = icmp eq %struct.sk_buff* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %40
  %81 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %82 = call i32 (%struct.eth_dev*, i8*, ...) @DBG(%struct.eth_dev* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %110

83:                                               ; preds = %40
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load i64, i64* @NET_IP_ALIGN, align 8
  %86 = call i32 @skb_reserve(%struct.sk_buff* %84, i64 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %91 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %94 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @rx_complete, align 4
  %96 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %97 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %100 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %99, i32 0, i32 2
  store %struct.sk_buff* %98, %struct.sk_buff** %100, align 8
  %101 = load %struct.usb_ep*, %struct.usb_ep** %11, align 8
  %102 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @usb_ep_queue(%struct.usb_ep* %101, %struct.usb_request* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %83
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %112 = load i32, i32* @WORK_RX_MEMORY, align 4
  %113 = call i32 @defer_kevent(%struct.eth_dev* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %83
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (%struct.eth_dev*, i8*, ...) @DBG(%struct.eth_dev* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %124)
  br label %126

126:                                              ; preds = %123, %117
  %127 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %128 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %127, i32 0, i32 0
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %132 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %131, i32 0, i32 1
  %133 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %134 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %133, i32 0, i32 1
  %135 = call i32 @list_add(i32* %132, i32* %134)
  %136 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %137 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %136, i32 0, i32 0
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  br label %140

140:                                              ; preds = %126, %114
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %37
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @DBG(%struct.eth_dev*, i8*, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @defer_kevent(%struct.eth_dev*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
