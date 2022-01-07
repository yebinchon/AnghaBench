; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32, i32 }
%struct.icmphdr = type { i64 }
%struct.rtable = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.sec_path = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@XFRM_STATE_ICMP = common dso_local global i32 0, align 4
@ICMP_MIB_INMSGS = common dso_local global i32 0, align 4
@NR_ICMP_TYPES = common dso_local global i64 0, align 8
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@ICMP_ECHO = common dso_local global i64 0, align 8
@ICMP_TIMESTAMP = common dso_local global i64 0, align 8
@ICMP_ADDRESS = common dso_local global i64 0, align 8
@ICMP_ADDRESSREPLY = common dso_local global i64 0, align 8
@icmp_pointers = common dso_local global %struct.TYPE_12__* null, align 8
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.icmphdr*, align 8
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sec_path*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %8)
  store %struct.rtable* %9, %struct.rtable** %4, align 8
  %10 = load %struct.rtable*, %struct.rtable** %4, align 8
  %11 = getelementptr inbounds %struct.rtable, %struct.rtable* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %5, align 8
  %16 = load i32, i32* @XFRM_POLICY_IN, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call i32 @xfrm4_policy_check(i32* null, i32 %16, %struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %21)
  store %struct.sec_path* %22, %struct.sec_path** %6, align 8
  %23 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %24 = icmp ne %struct.sec_path* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %27 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %27, align 8
  %29 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %30 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %28, i64 %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XFRM_STATE_ICMP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25, %20
  br label %168

43:                                               ; preds = %25
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = call i32 @pskb_may_pull(%struct.sk_buff* %44, i32 12)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %168

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = call i32 @skb_network_offset(%struct.sk_buff* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call i32 @skb_set_network_header(%struct.sk_buff* %51, i32 8)
  %53 = load i32, i32* @XFRM_POLICY_IN, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %55 = call i32 @xfrm4_policy_check_reverse(i32* null, i32 %53, %struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %168

58:                                               ; preds = %48
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @skb_set_network_header(%struct.sk_buff* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.net*, %struct.net** %5, align 8
  %64 = load i32, i32* @ICMP_MIB_INMSGS, align 4
  %65 = call i32 @ICMP_INC_STATS_BH(%struct.net* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %85 [
    i32 129, label %69
    i32 128, label %77
  ]

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @csum_fold(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %85

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %62, %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = call i32 @__skb_checksum_complete(%struct.sk_buff* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %171

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %62, %75
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = call i32 @pskb_pull(%struct.sk_buff* %86, i32 8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %171

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %92 = call %struct.icmphdr* @icmp_hdr(%struct.sk_buff* %91)
  store %struct.icmphdr* %92, %struct.icmphdr** %3, align 8
  %93 = load %struct.net*, %struct.net** %5, align 8
  %94 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %95 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ICMPMSGIN_INC_STATS_BH(%struct.net* %93, i64 %96)
  %98 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %99 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NR_ICMP_TYPES, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %171

104:                                              ; preds = %90
  %105 = load %struct.rtable*, %struct.rtable** %4, align 8
  %106 = getelementptr inbounds %struct.rtable, %struct.rtable* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RTCF_BROADCAST, align 4
  %109 = load i32, i32* @RTCF_MULTICAST, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %158

113:                                              ; preds = %104
  %114 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %115 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ICMP_ECHO, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %121 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ICMP_TIMESTAMP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119, %113
  %126 = load %struct.net*, %struct.net** %5, align 8
  %127 = getelementptr inbounds %struct.net, %struct.net* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %171

132:                                              ; preds = %125, %119
  %133 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %134 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ICMP_ECHO, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %132
  %139 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %140 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ICMP_TIMESTAMP, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %146 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ICMP_ADDRESS, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %152 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ICMP_ADDRESSREPLY, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %171

157:                                              ; preds = %150, %144, %138, %132
  br label %158

158:                                              ; preds = %157, %104
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @icmp_pointers, align 8
  %160 = load %struct.icmphdr*, %struct.icmphdr** %3, align 8
  %161 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %167 = call i32 %165(%struct.sk_buff* %166)
  br label %168

168:                                              ; preds = %171, %158, %57, %47, %42
  %169 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %170 = call i32 @kfree_skb(%struct.sk_buff* %169)
  ret i32 0

171:                                              ; preds = %156, %131, %103, %89, %83
  %172 = load %struct.net*, %struct.net** %5, align 8
  %173 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %174 = call i32 @ICMP_INC_STATS_BH(%struct.net* %172, i32 %173)
  br label %168
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm4_policy_check_reverse(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ICMP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @__skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.icmphdr* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMPMSGIN_INC_STATS_BH(%struct.net*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
