; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_conn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.request_sock = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32 }
%struct.inet6_request_sock = type { i32, i32, %struct.sk_buff*, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.dccp_skb_cb = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_BAD_SERVICE_CODE = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@dccp6_request_sock_ops = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_v6_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_conn_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.dccp_request_sock*, align 8
  %8 = alloca %struct.inet6_request_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dccp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_8__* @dccp_hdr_request(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %18)
  store %struct.dccp_skb_cb* %19, %struct.dccp_skb_cb** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ETH_P_IP, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @dccp_v4_conn_request(%struct.sock* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %3, align 4
  br label %195

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %195

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @dccp_bad_service_code(%struct.sock* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @DCCP_RESET_CODE_BAD_SERVICE_CODE, align 4
  %42 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %43 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %192

44:                                               ; preds = %35
  %45 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %46 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %47 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %192

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i64 @sk_acceptq_is_full(%struct.sock* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @inet_csk_reqsk_queue_young(%struct.sock* %57)
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %192

61:                                               ; preds = %56, %52
  %62 = call %struct.request_sock* @inet6_reqsk_alloc(i32* @dccp6_request_sock_ops)
  store %struct.request_sock* %62, %struct.request_sock** %6, align 8
  %63 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %64 = icmp eq %struct.request_sock* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %192

66:                                               ; preds = %61
  %67 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = call i32 @dccp_sk(%struct.sock* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @dccp_reqsk_init(%struct.request_sock* %67, i32 %69, %struct.sk_buff* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %189

74:                                               ; preds = %66
  %75 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %76 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %75)
  store %struct.dccp_request_sock* %76, %struct.dccp_request_sock** %7, align 8
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i64 @dccp_parse_options(%struct.sock* %77, %struct.dccp_request_sock* %78, %struct.sk_buff* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %189

83:                                               ; preds = %74
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %87 = call i64 @security_inet_conn_request(%struct.sock* %84, %struct.sk_buff* %85, %struct.request_sock* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %189

90:                                               ; preds = %83
  %91 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %92 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %91)
  store %struct.inet6_request_sock* %92, %struct.inet6_request_sock** %8, align 8
  %93 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %94 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %93, i32 0, i32 1
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = call i32 @ipv6_addr_copy(i32* %94, i32* %97)
  %99 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %100 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %99, i32 0, i32 3
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @ipv6_addr_copy(i32* %100, i32* %103)
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i64 @ipv6_opt_accepted(%struct.sock* %105, %struct.sk_buff* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %137, label %109

109:                                              ; preds = %90
  %110 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %111 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %109
  %117 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %118 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %125 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %132 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130, %123, %116, %109, %90
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = call i32 @atomic_inc(i32* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %143 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %142, i32 0, i32 2
  store %struct.sk_buff* %141, %struct.sk_buff** %143, align 8
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.sock*, %struct.sock** %4, align 8
  %146 = getelementptr inbounds %struct.sock, %struct.sock* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %149 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.sock*, %struct.sock** %4, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %144
  %155 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %156 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %155, i32 0, i32 1
  %157 = call i32 @ipv6_addr_type(i32* %156)
  %158 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call i32 @inet6_iif(%struct.sk_buff* %162)
  %164 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %8, align 8
  %165 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %161, %154, %144
  %167 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %168 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %171 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = call i32 @dccp_v6_init_sequence(%struct.sk_buff* %172)
  %174 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %175 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %178 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.sock*, %struct.sock** %4, align 8
  %180 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %181 = call i64 @dccp_v6_send_response(%struct.sock* %179, %struct.request_sock* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %166
  br label %189

184:                                              ; preds = %166
  %185 = load %struct.sock*, %struct.sock** %4, align 8
  %186 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %187 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %188 = call i32 @inet6_csk_reqsk_queue_hash_add(%struct.sock* %185, %struct.request_sock* %186, i32 %187)
  store i32 0, i32* %3, align 4
  br label %195

189:                                              ; preds = %183, %89, %82, %73
  %190 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %191 = call i32 @reqsk_free(%struct.request_sock* %190)
  br label %192

192:                                              ; preds = %189, %65, %60, %51, %40
  %193 = load i32, i32* @DCCP_MIB_ATTEMPTFAILS, align 4
  %194 = call i32 @DCCP_INC_STATS_BH(i32 %193)
  store i32 -1, i32* %3, align 4
  br label %195

195:                                              ; preds = %192, %184, %34, %26
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @dccp_hdr_request(%struct.sk_buff*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dccp_v4_conn_request(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local i64 @dccp_bad_service_code(%struct.sock*, i32) #1

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_young(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet6_reqsk_alloc(i32*) #1

declare dso_local i64 @dccp_reqsk_init(%struct.request_sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_init_sequence(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v6_send_response(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet6_csk_reqsk_queue_hash_add(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
