; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_tx_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_tx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_10__*, i32*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 (%struct.sk_buff*, %struct.net_device*)*, i32*, i32, i64, %struct.TYPE_8__, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@MGNT_QUEUE = common dso_local global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rtl8192_tx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_tx_isr(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  store %struct.r8192_priv* null, %struct.r8192_priv** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.net_device*
  %25 = call i32 @memcpy(%struct.net_device** %4, %struct.net_device* %24, i32 8)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %26)
  store %struct.r8192_priv* %27, %struct.r8192_priv** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TXCMD_QUEUE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %1
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %53, %58
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  br label %75

67:                                               ; preds = %33
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %67, %38
  br label %76

76:                                               ; preds = %75, %1
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  %82 = load %struct.urb*, %struct.urb** %2, align 8
  %83 = call i32 @usb_free_urb(%struct.urb* %82)
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i32 @atomic_dec(i32* %88)
  br label %90

90:                                               ; preds = %79, %76
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @MGNT_QUEUE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i64 @rtl8192_is_tx_queue_empty(%struct.net_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @ieee80211_ps_tx_ack(%struct.TYPE_10__* %112, i32 1)
  br label %114

114:                                              ; preds = %105, %101
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @BEACON_QUEUE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = call i64 @skb_queue_len(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %120
  %131 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %132 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %130
  %138 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %139 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = call %struct.sk_buff* @skb_dequeue(i32* %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %3, align 8
  %146 = icmp ne %struct.sk_buff* null, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %137
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %149 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = load %struct.net_device*, %struct.net_device** %4, align 8
  %155 = call i32 %152(%struct.sk_buff* %153, %struct.net_device* %154)
  br label %156

156:                                              ; preds = %147, %137
  br label %158

157:                                              ; preds = %130, %120
  br label %158

158:                                              ; preds = %156, %157, %116
  ret void
}

declare dso_local i32 @memcpy(%struct.net_device**, %struct.net_device*, i32) #1

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @rtl8192_is_tx_queue_empty(%struct.net_device*) #1

declare dso_local i32 @ieee80211_ps_tx_ack(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
