; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r819xU_cmdpkt.c_SendTxCommandPacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r819xU_cmdpkt.c_SendTxCommandPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.net_device*)*, i32*, i64, i32 (%struct.net_device*, i64)* }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@DESC_PACKET_TYPE_NORMAL = common dso_local global i32 0, align 4
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"===================NULL packet==================================> tx full!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendTxCommandPacket(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %8, align 8
  %14 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 4
  %18 = call %struct.sk_buff* @dev_alloc_skb(i64 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast %struct.net_device** %4 to i8*
  %24 = call i32 @memcpy(i8* %22, i8* %23, i32 8)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %10, align 8
  %31 = load i64, i64* @TXCMD_QUEUE, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @DESC_PACKET_TYPE_NORMAL, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %41 = call i32 @skb_reserve(%struct.sk_buff* %39, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i8* @skb_put(%struct.sk_buff* %42, i64 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @memset(i8* %45, i32 0, i64 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i8* %48, i8* %49, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 %60(%struct.net_device* %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %3
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = call i32 @skb_queue_empty(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %67
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79, %67, %3
  %87 = load i32, i32* @COMP_FIRMWARE, align 4
  %88 = call i32 @RT_TRACE(i32 %87, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call i32 @skb_queue_tail(i32* %97, %struct.sk_buff* %98)
  br label %109

100:                                              ; preds = %79
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 %105(%struct.sk_buff* %106, %struct.net_device* %107)
  br label %109

109:                                              ; preds = %100, %86
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
