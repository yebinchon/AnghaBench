; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.ip_vs_iphdr = type { i64, i32, i32 }
%struct.ip_vs_protocol = type { i64, %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)*, i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_iphdr.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@IP_DEFRAG_VS_OUT = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@sysctl_ip_vs_nat_icmp_send = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"packet continues traversal as normal\00", align 1
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_PORT_UNREACH = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ip_vs_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_out(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.ip_vs_iphdr, align 8
  %13 = alloca %struct.ip_vs_protocol*, align 8
  %14 = alloca %struct.ip_vs_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %20 = call i32 @EnterFunction(i32 11)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ETH_P_IP, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @AF_INET, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @AF_INET6, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %38, i32* %6, align 4
  br label %220

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @skb_network_header(%struct.sk_buff* %41)
  %43 = call i32 @ip_vs_fill_iphdr(i32 %40, i32 %42, %struct.ip_vs_iphdr* %12)
  %44 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IPPROTO_ICMP, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @ip_vs_out_icmp(%struct.sk_buff* %52, i32* %16)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %6, align 4
  br label %220

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_network_header(%struct.sk_buff* %60)
  %62 = call i32 @ip_vs_fill_iphdr(i32 %59, i32 %61, %struct.ip_vs_iphdr* %12)
  br label %63

63:                                               ; preds = %58, %39
  %64 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i64 %65)
  store %struct.ip_vs_protocol* %66, %struct.ip_vs_protocol** %13, align 8
  %67 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %68 = icmp ne %struct.ip_vs_protocol* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %74, i32* %6, align 4
  br label %220

75:                                               ; preds = %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IP_MF, align 4
  %81 = load i32, i32* @IP_OFFSET, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @htons(i32 %82)
  %84 = and i32 %79, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %88 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %86, %75
  %93 = phi i1 [ false, %75 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load i32, i32* @IP_DEFRAG_VS_OUT, align 4
  %100 = call i64 @ip_vs_gather_frags(%struct.sk_buff* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @NF_STOLEN, align 4
  store i32 %103, i32* %6, align 4
  br label %220

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call i32 @skb_network_header(%struct.sk_buff* %106)
  %108 = call i32 @ip_vs_fill_iphdr(i32 %105, i32 %107, %struct.ip_vs_iphdr* %12)
  br label %109

109:                                              ; preds = %104, %92
  %110 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %111 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %110, i32 0, i32 1
  %112 = load %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)*, %struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr.0*, i32, i32)** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %116 = bitcast %struct.ip_vs_iphdr* %12 to %struct.ip_vs_iphdr.0*
  %117 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.ip_vs_conn* %112(i32 %113, %struct.sk_buff* %114, %struct.ip_vs_protocol* %115, %struct.ip_vs_iphdr.0* %116, i32 %118, i32 0)
  store %struct.ip_vs_conn* %119, %struct.ip_vs_conn** %14, align 8
  %120 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %121 = icmp ne %struct.ip_vs_conn* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %212

126:                                              ; preds = %109
  %127 = load i64, i64* @sysctl_ip_vs_nat_icmp_send, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %207

129:                                              ; preds = %126
  %130 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %131 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IPPROTO_TCP, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %137 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IPPROTO_UDP, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %143 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IPPROTO_SCTP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %207

147:                                              ; preds = %141, %135, %129
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %152 = call i32* @skb_header_pointer(%struct.sk_buff* %148, i32 %150, i32 8, i32* %151)
  store i32* %152, i32** %19, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %156, i32* %6, align 4
  br label %220

157:                                              ; preds = %147
  %158 = load i32, i32* %15, align 4
  %159 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 2
  %162 = load i32*, i32** %19, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @ip_vs_lookup_real_service(i32 %158, i64 %160, i32* %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @IPPROTO_TCP, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IPPROTO_SCTP, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %199, label %177

177:                                              ; preds = %172, %167
  %178 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IPPROTO_TCP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @is_tcp_reset(%struct.sk_buff* %183, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %182, %177
  %189 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IPPROTO_SCTP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @is_sctp_abort(%struct.sk_buff* %194, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %193, %182, %172
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %202 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %203 = call i32 @icmp_send(%struct.sk_buff* %200, i32 %201, i32 %202, i32 0)
  %204 = load i32, i32* @NF_DROP, align 4
  store i32 %204, i32* %6, align 4
  br label %220

205:                                              ; preds = %193, %188
  br label %206

206:                                              ; preds = %205, %157
  br label %207

207:                                              ; preds = %206, %141, %126
  %208 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %210 = call i32 @IP_VS_DBG_PKT(i32 12, %struct.ip_vs_protocol* %208, %struct.sk_buff* %209, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %211 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %211, i32* %6, align 4
  br label %220

212:                                              ; preds = %109
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %13, align 8
  %216 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %217 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %12, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @handle_response(i32 %213, %struct.sk_buff* %214, %struct.ip_vs_protocol* %215, %struct.ip_vs_conn* %216, i32 %218)
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %212, %207, %199, %155, %102, %73, %56, %37
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_out_icmp(%struct.sk_buff*, i32*) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i64) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_gather_frags(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @ip_vs_lookup_real_service(i32, i64, i32*, i32) #1

declare dso_local i32 @is_tcp_reset(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_sctp_abort(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @handle_response(i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
