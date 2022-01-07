; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_echo_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_echo_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.ipv6_pinfo = type { i32, i32, i32, i64 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i8* }
%struct.flowi = type { i32, i64, i8*, i32, i32 }
%struct.icmpv6_msg = type { i8*, i64, %struct.sk_buff* }
%struct.dst_entry = type { i32 }
%struct.TYPE_4__ = type { %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { i32 }

@ICMPV6_ECHO_REPLY = common dso_local global i8* null, align 8
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@icmpv6_getfrag = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @icmpv6_echo_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmpv6_echo_reply(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.icmp6hdr*, align 8
  %9 = alloca %struct.icmp6hdr, align 8
  %10 = alloca %struct.flowi, align 8
  %11 = alloca %struct.icmpv6_msg, align 8
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call %struct.net* @dev_net(%struct.TYPE_5__* %17)
  store %struct.net* %18, %struct.net** %3, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %19)
  store %struct.icmp6hdr* %20, %struct.icmp6hdr** %8, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.in6_addr* %23, %struct.in6_addr** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %30 = call i32 @memcpy(%struct.icmp6hdr* %9, %struct.icmp6hdr* %29, i32 8)
  %31 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %32 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %9, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = call i32 @memset(%struct.flowi* %10, i32 0, i32 32)
  %34 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @ipv6_addr_copy(i32* %36, %struct.in6_addr* %39)
  %41 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %42 = icmp ne %struct.in6_addr* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 3
  %45 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %46 = call i32 @ipv6_addr_copy(i32* %44, %struct.in6_addr* %45)
  br label %47

47:                                               ; preds = %43, %28
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %55 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 2
  store i8* %54, i8** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %57 = call i32 @security_skb_classify_flow(%struct.sk_buff* %56, %struct.flowi* %10)
  %58 = load %struct.net*, %struct.net** %3, align 8
  %59 = call %struct.sock* @icmpv6_xmit_lock(%struct.net* %58)
  store %struct.sock* %59, %struct.sock** %4, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = icmp eq %struct.sock* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %159

63:                                               ; preds = %47
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %64)
  store %struct.ipv6_pinfo* %65, %struct.ipv6_pinfo** %6, align 8
  %66 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %71 = call i64 @ipv6_addr_is_multicast(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %75 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %69, %63
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 @ip6_dst_lookup(%struct.sock* %79, %struct.dst_entry** %12, %struct.flowi* %10)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %156

84:                                               ; preds = %78
  %85 = load %struct.net*, %struct.net** %3, align 8
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = call i32 @xfrm_lookup(%struct.net* %85, %struct.dst_entry** %12, %struct.flowi* %10, %struct.sock* %86, i32 0)
  store i32 %87, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %156

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %92 = call i64 @ipv6_addr_is_multicast(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %96 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %14, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %100 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %107 = call i32 @ip6_dst_hoplimit(%struct.dst_entry* %106)
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = call %struct.inet6_dev* @in6_dev_get(%struct.TYPE_5__* %111)
  store %struct.inet6_dev* %112, %struct.inet6_dev** %5, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %114 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 2
  store %struct.sk_buff* %113, %struct.sk_buff** %114, align 8
  %115 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %117 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load %struct.sock*, %struct.sock** %4, align 8
  %119 = load i32, i32* @icmpv6_getfrag, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 8
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %126 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %129 = bitcast %struct.dst_entry* %128 to %struct.rt6_info*
  %130 = load i32, i32* @MSG_DONTWAIT, align 4
  %131 = call i32 @ip6_append_data(%struct.sock* %118, i32 %119, %struct.icmpv6_msg* %11, i64 %123, i32 8, i32 %124, i32 %127, i32* null, %struct.flowi* %10, %struct.rt6_info* %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %108
  %135 = load %struct.sock*, %struct.sock** %4, align 8
  %136 = call i32 @ip6_flush_pending_frames(%struct.sock* %135)
  br label %144

137:                                              ; preds = %108
  %138 = load %struct.sock*, %struct.sock** %4, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 8
  %143 = call i32 @icmpv6_push_pending_frames(%struct.sock* %138, %struct.flowi* %10, %struct.icmp6hdr* %9, i64 %142)
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %137, %134
  %145 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %146 = icmp ne %struct.inet6_dev* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i64 @likely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %152 = call i32 @in6_dev_put(%struct.inet6_dev* %151)
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %155 = call i32 @dst_release(%struct.dst_entry* %154)
  br label %156

156:                                              ; preds = %153, %89, %83
  %157 = load %struct.sock*, %struct.sock** %4, align 8
  %158 = call i32 @icmpv6_xmit_unlock(%struct.sock* %157)
  br label %159

159:                                              ; preds = %156, %62
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_5__*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.icmp6hdr*, %struct.icmp6hdr*, i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, %struct.flowi*) #1

declare dso_local %struct.sock* @icmpv6_xmit_lock(%struct.net*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @ip6_dst_hoplimit(%struct.dst_entry*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.TYPE_5__*) #1

declare dso_local i32 @ip6_append_data(%struct.sock*, i32, %struct.icmpv6_msg*, i64, i32, i32, i32, i32*, %struct.flowi*, %struct.rt6_info*, i32) #1

declare dso_local i32 @ip6_flush_pending_frames(%struct.sock*) #1

declare dso_local i32 @icmpv6_push_pending_frames(%struct.sock*, %struct.flowi*, %struct.icmp6hdr*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_xmit_unlock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
