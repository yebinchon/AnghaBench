; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_beet.c_xfrm4_beet_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_beet.c_xfrm4_beet_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.iphdr = type { i32, i64, i32, i32, i32 }
%struct.ip_beet_phdr = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_BEETPH = common dso_local global i64 0, align 8
@IPV4_BEET_PHMAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm4_beet_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_beet_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_beet_phdr*, align 8
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.TYPE_8__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPPROTO_BEETPH, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @pskb_may_pull(%struct.sk_buff* %22, i32 16)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %136

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ip_beet_phdr*
  store %struct.ip_beet_phdr* %30, %struct.ip_beet_phdr** %8, align 8
  %31 = load %struct.ip_beet_phdr*, %struct.ip_beet_phdr** %8, align 8
  %32 = getelementptr inbounds %struct.ip_beet_phdr, %struct.ip_beet_phdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add i64 16, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ip_beet_phdr*, %struct.ip_beet_phdr** %8, align 8
  %38 = getelementptr inbounds %struct.ip_beet_phdr, %struct.ip_beet_phdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 8
  %41 = load i32, i32* @IPV4_BEET_PHMAXLEN, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 250
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %47, %26
  br label %136

55:                                               ; preds = %51
  %56 = load %struct.ip_beet_phdr*, %struct.ip_beet_phdr** %8, align 8
  %57 = getelementptr inbounds %struct.ip_beet_phdr, %struct.ip_beet_phdr* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_8__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @pskb_may_pull(%struct.sk_buff* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %136

67:                                               ; preds = %55
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @__skb_pull(%struct.sk_buff* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %2
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @skb_push(%struct.sk_buff* %72, i32 32)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @skb_reset_network_header(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %78, %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @skb_mac_header(%struct.sk_buff* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memmove(i64 %83, i32 %85, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @skb_set_mac_header(%struct.sk_buff* %90, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @xfrm4_beet_make_header(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %98)
  store %struct.iphdr* %99, %struct.iphdr** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sdiv i32 %100, 4
  %102 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @htons(i32 %108)
  %110 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %113 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i32 @skb_network_header(%struct.sk_buff* %128)
  %130 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @ip_fast_csum(i32 %129, i32 %132)
  %134 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %71, %66, %54, %25
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm4_beet_make_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_fast_csum(i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
