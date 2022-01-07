; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_send_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, %struct.sk_buff*, i8*)* }
%struct.sk_buff = type { %struct.net_device*, i8* }
%struct.net_device = type { i32, i8* }
%struct.atalk_addr = type { i32, i32 }
%struct.elapaarp = type { i32, i32, i64, i32, i32, i32, i64, i32, i8*, i32, i32, i8*, i8* }

@aarp_dl = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_ATALK = common dso_local global i32 0, align 4
@AARP_HW_TYPE_ETHERNET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AARP_PA_ALEN = common dso_local global i32 0, align 4
@AARP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.atalk_addr*, %struct.atalk_addr*, i8*)* @aarp_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aarp_send_reply(%struct.net_device* %0, %struct.atalk_addr* %1, %struct.atalk_addr* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atalk_addr*, align 8
  %7 = alloca %struct.atalk_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.elapaarp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.atalk_addr* %1, %struct.atalk_addr** %6, align 8
  store %struct.atalk_addr* %2, %struct.atalk_addr** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 80
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aarp_dl, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.sk_buff* @alloc_skb(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %127

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aarp_dl, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = call i32 @skb_reserve(%struct.sk_buff* %30, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = call i32 @skb_reset_network_header(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i32 @skb_reset_transport_header(%struct.sk_buff* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = call i32 @skb_put(%struct.sk_buff* %43, i32 80)
  %45 = load i32, i32* @ETH_P_ATALK, align 4
  %46 = call i8* @htons(i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store %struct.net_device* %49, %struct.net_device** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = call %struct.elapaarp* @aarp_hdr(%struct.sk_buff* %52)
  store %struct.elapaarp* %53, %struct.elapaarp** %9, align 8
  %54 = load i32, i32* @AARP_HW_TYPE_ETHERNET, align 4
  %55 = call i8* @htons(i32 %54)
  %56 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %57 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %56, i32 0, i32 12
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @ETH_P_ATALK, align 4
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %61 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %60, i32 0, i32 11
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %64 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @AARP_PA_ALEN, align 4
  %66 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %67 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @AARP_REPLY, align 4
  %69 = call i8* @htons(i32 %68)
  %70 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %71 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %73 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32 %74, i8* %77, i32 %78)
  %80 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %81 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.atalk_addr*, %struct.atalk_addr** %6, align 8
  %83 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %86 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.atalk_addr*, %struct.atalk_addr** %6, align 8
  %88 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %91 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %29
  %95 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %96 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memset(i32 %97, i8 signext 0, i32 %98)
  br label %107

100:                                              ; preds = %29
  %101 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %102 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(i32 %103, i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %109 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.atalk_addr*, %struct.atalk_addr** %7, align 8
  %111 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %114 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.atalk_addr*, %struct.atalk_addr** %7, align 8
  %116 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %119 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aarp_dl, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_3__*, %struct.sk_buff*, i8*)*, i32 (%struct.TYPE_3__*, %struct.sk_buff*, i8*)** %121, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aarp_dl, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 %122(%struct.TYPE_3__* %123, %struct.sk_buff* %124, i8* %125)
  br label %127

127:                                              ; preds = %107, %28
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.elapaarp* @aarp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
