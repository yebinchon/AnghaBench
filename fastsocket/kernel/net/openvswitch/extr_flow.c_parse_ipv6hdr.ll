; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_ipv6hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_ipv6hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32* }
%struct.sw_flow_key = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32 }

@ipv6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NEXTHDR_NONE = common dso_local global i32 0, align 4
@IPV6_FLOWINFO_FLOWLABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, i32*)* @parse_ipv6hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipv6hdr(%struct.sk_buff* %0, %struct.sw_flow_key* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_network_offset(%struct.sk_buff* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv6, i32 0, i32 0), align 4
  %18 = call i32 @SW_FLOW_KEY_OFFSET(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %22, 16
  %24 = trunc i64 %23 to i32
  %25 = call i32 @check_header(%struct.sk_buff* %20, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %4, align 4
  br label %130

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %32)
  store %struct.ipv6hdr* %33, %struct.ipv6hdr** %11, align 8
  %34 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %35 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %38 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %37, i64 1
  %39 = bitcast %struct.ipv6hdr* %38 to i32*
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %39 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @NEXTHDR_NONE, align 4
  %49 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %50 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %53 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %52)
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %61 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %64 = bitcast %struct.ipv6hdr* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IPV6_FLOWINFO_FLOWLABEL, align 4
  %67 = call i32 @htonl(i32 %66)
  %68 = and i32 %65, %67
  %69 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %70 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %73 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %76 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %80 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %83 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @ipv6_skip_exthdr_fragoff(%struct.sk_buff* %86, i32 %87, i32* %12, i32* %13)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %31
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %130

97:                                               ; preds = %31
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @htons(i32 -8)
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @OVS_FRAG_TYPE_LATER, align 4
  %107 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %108 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %115

110:                                              ; preds = %100
  %111 = load i32, i32* @OVS_FRAG_TYPE_FIRST, align 4
  %112 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %113 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %97
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %121, %122
  %124 = call i32 @skb_set_transport_header(%struct.sk_buff* %120, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %127 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %116, %94, %29
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #1

declare dso_local i32 @check_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_skip_exthdr_fragoff(%struct.sk_buff*, i32, i32*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
