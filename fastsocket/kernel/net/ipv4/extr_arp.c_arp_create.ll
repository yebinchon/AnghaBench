; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8*, %struct.net_device* }
%struct.net_device = type { i8*, i8*, i32, i32 }
%struct.arphdr = type { i32, i32, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ARPHRD_IEEE802 = common dso_local global i32 0, align 4
@AX25_P_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @arp_create(i32 %0, i32 %1, i8 zeroext %2, %struct.net_device* %3, i8 zeroext %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.arphdr*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8 %2, i8* %12, align 1
  store %struct.net_device* %3, %struct.net_device** %13, align 8
  store i8 %4, i8* %14, align 1
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = load %struct.net_device*, %struct.net_device** %13, align 8
  %22 = call i64 @arp_hdr_len(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %13, align 8
  %24 = call i64 @LL_ALLOCATED_SPACE(%struct.net_device* %23)
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @alloc_skb(i64 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %18, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %149

31:                                               ; preds = %8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %33 = load %struct.net_device*, %struct.net_device** %13, align 8
  %34 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %33)
  %35 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %37 = call i32 @skb_reset_network_header(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %39 = load %struct.net_device*, %struct.net_device** %13, align 8
  %40 = call i64 @arp_hdr_len(%struct.net_device* %39)
  %41 = call i64 @skb_put(%struct.sk_buff* %38, i64 %40)
  %42 = inttoptr i64 %41 to %struct.arphdr*
  store %struct.arphdr* %42, %struct.arphdr** %19, align 8
  %43 = load %struct.net_device*, %struct.net_device** %13, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load i32, i32* @ETH_P_ARP, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = load %struct.net_device*, %struct.net_device** %13, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %16, align 8
  br label %56

56:                                               ; preds = %52, %31
  %57 = load i8*, i8** %15, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.net_device*, %struct.net_device** %13, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %65 = load %struct.net_device*, %struct.net_device** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @dev_hard_header(%struct.sk_buff* %64, %struct.net_device* %65, i32 %66, i8* %67, i8* %68, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %146

75:                                               ; preds = %63
  %76 = load %struct.net_device*, %struct.net_device** %13, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %79 [
  ]

79:                                               ; preds = %75
  %80 = load %struct.net_device*, %struct.net_device** %13, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @htons(i32 %82)
  %84 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %85 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @ETH_P_IP, align 4
  %87 = call i8* @htons(i32 %86)
  %88 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %89 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load %struct.net_device*, %struct.net_device** %13, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %95 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %97 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %101 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.arphdr*, %struct.arphdr** %19, align 8
  %103 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %102, i64 1
  %104 = bitcast %struct.arphdr* %103 to i8*
  store i8* %104, i8** %20, align 8
  %105 = load i8*, i8** %20, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load %struct.net_device*, %struct.net_device** %13, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcpy(i8* %105, i8* %106, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %13, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %20, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %20, align 8
  %117 = load i8*, i8** %20, align 8
  %118 = call i32 @memcpy(i8* %117, i8* %14, i32 4)
  %119 = load i8*, i8** %20, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %20, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %90
  %124 = load i8*, i8** %20, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = load %struct.net_device*, %struct.net_device** %13, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i8* %124, i8* %125, i32 %128)
  br label %136

130:                                              ; preds = %90
  %131 = load i8*, i8** %20, align 8
  %132 = load %struct.net_device*, %struct.net_device** %13, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memset(i8* %131, i32 0, i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.net_device*, %struct.net_device** %13, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %20, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %20, align 8
  %143 = load i8*, i8** %20, align 8
  %144 = call i32 @memcpy(i8* %143, i8* %12, i32 4)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %9, align 8
  br label %149

146:                                              ; preds = %74
  %147 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %148 = call i32 @kfree_skb(%struct.sk_buff* %147)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %149

149:                                              ; preds = %146, %136, %30
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %150
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @arp_hdr_len(%struct.net_device*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
