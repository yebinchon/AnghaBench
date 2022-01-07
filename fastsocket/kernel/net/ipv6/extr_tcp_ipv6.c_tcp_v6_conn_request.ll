; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_conn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.inet6_request_sock = type { %struct.sk_buff*, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.tcp_options_received = type { i32, i64, i64, i32 }
%struct.tcp_sock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.request_sock = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32* }

@ETH_P_IP = common dso_local global i32 0, align 4
@tcp6_request_sock_ops = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@sysctl_tcp_syncookies = common dso_local global i64 0, align 8
@tcp_request_sock_ipv6_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tcp_v6_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_conn_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet6_request_sock*, align 8
  %7 = alloca %struct.ipv6_pinfo*, align 8
  %8 = alloca %struct.tcp_options_received, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %9, align 8
  store %struct.request_sock* null, %struct.request_sock** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
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
  %29 = call i32 @tcp_v4_conn_request(%struct.sock* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %3, align 4
  br label %199

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %192

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = call i64 (...) @net_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @syn_flood_warning(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %192

49:                                               ; preds = %39, %35
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i64 @sk_acceptq_is_full(%struct.sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 @inet_csk_reqsk_queue_young(%struct.sock* %54)
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %192

58:                                               ; preds = %53, %49
  %59 = call %struct.request_sock* @inet6_reqsk_alloc(i32* @tcp6_request_sock_ops)
  store %struct.request_sock* %59, %struct.request_sock** %10, align 8
  %60 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %61 = icmp eq %struct.request_sock* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %192

63:                                               ; preds = %58
  %64 = call i32 @tcp_clear_options(%struct.tcp_options_received* %8)
  %65 = load i32, i32* @IPV6_MIN_MTU, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 4
  %68 = sub i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @tcp_parse_options(%struct.sk_buff* %76, %struct.tcp_options_received* %8, i32 0)
  %78 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %8, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  %81 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @tcp_openreq_init(%struct.request_sock* %81, %struct.tcp_options_received* %8, %struct.sk_buff* %82)
  %84 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %85 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %84)
  store %struct.inet6_request_sock* %85, %struct.inet6_request_sock** %6, align 8
  %86 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %87 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %86, i32 0, i32 2
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = call i32 @ipv6_addr_copy(i32* %87, i32* %90)
  %92 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %93 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %92, i32 0, i32 3
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = call i32 @ipv6_addr_copy(i32* %93, i32* %96)
  %98 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @tcp_hdr(%struct.sk_buff* %99)
  %101 = call i32 @TCP_ECN_create_request(%struct.request_sock* %98, i32 %100)
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %106 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sock*, %struct.sock** %4, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %63
  %112 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %113 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %112, i32 0, i32 2
  %114 = call i32 @ipv6_addr_type(i32* %113)
  %115 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @inet6_iif(%struct.sk_buff* %119)
  %121 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %122 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %111, %63
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %169, label %126

126:                                              ; preds = %123
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i64 @ipv6_opt_accepted(%struct.sock* %127, %struct.sk_buff* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %159, label %131

131:                                              ; preds = %126
  %132 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %133 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %159, label %138

138:                                              ; preds = %131
  %139 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %140 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %138
  %146 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %147 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %154 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %152, %145, %138, %131, %126
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = call i32 @atomic_inc(i32* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %6, align 8
  %165 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %164, i32 0, i32 0
  store %struct.sk_buff* %163, %struct.sk_buff** %165, align 8
  br label %166

166:                                              ; preds = %159, %152
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = call i64 @tcp_v6_init_sequence(%struct.sk_buff* %167)
  store i64 %168, i64* %11, align 8
  br label %169

169:                                              ; preds = %166, %123
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %172 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock* %171)
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  store i64 %170, i64* %173, align 8
  %174 = load i32, i32* @tcp_time_stamp, align 4
  %175 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %176 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock* %175)
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load %struct.sock*, %struct.sock** %4, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %180 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %181 = call i32 @security_inet_conn_request(%struct.sock* %178, %struct.sk_buff* %179, %struct.request_sock* %180)
  %182 = load %struct.sock*, %struct.sock** %4, align 8
  %183 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %184 = call i64 @tcp_v6_send_synack(%struct.sock* %182, %struct.request_sock* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %169
  br label %192

187:                                              ; preds = %169
  %188 = load %struct.sock*, %struct.sock** %4, align 8
  %189 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %190 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %191 = call i32 @inet6_csk_reqsk_queue_hash_add(%struct.sock* %188, %struct.request_sock* %189, i32 %190)
  store i32 0, i32* %3, align 4
  br label %199

192:                                              ; preds = %186, %62, %57, %48, %34
  %193 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %194 = icmp ne %struct.request_sock* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %197 = call i32 @reqsk_free(%struct.request_sock* %196)
  br label %198

198:                                              ; preds = %195, %192
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %187, %26
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @tcp_v4_conn_request(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @syn_flood_warning(%struct.sk_buff*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_young(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet6_reqsk_alloc(i32*) #1

declare dso_local i32 @tcp_clear_options(%struct.tcp_options_received*) #1

declare dso_local i32 @tcp_parse_options(%struct.sk_buff*, %struct.tcp_options_received*, i32) #1

declare dso_local i32 @tcp_openreq_init(%struct.request_sock*, %struct.tcp_options_received*, %struct.sk_buff*) #1

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @TCP_ECN_create_request(%struct.request_sock*, i32) #1

declare dso_local i32 @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @tcp_v6_init_sequence(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i64 @tcp_v6_send_synack(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet6_csk_reqsk_queue_hash_add(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
