; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_syncookies.c_cookie_v6_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_syncookies.c_cookie_v6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.inet6_request_sock = type { %struct.in6_addr, %struct.in6_addr, i64, %struct.sk_buff* }
%struct.in6_addr = type { i32 }
%struct.tcp_request_sock = type { i8*, i8*, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.tcp_sock = type { i64 }
%struct.tcphdr = type { i32, i32, i32, i32, i32 }
%struct.request_sock = type { i32, i64, i32, i32, i32, i64 }
%struct.dst_entry = type { i32 }
%struct.tcp_options_received = type { %struct.in6_addr, i32, i32, i64, %struct.in6_addr, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i64, %struct.in6_addr, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.TYPE_9__ = type { %struct.in6_addr, %struct.in6_addr }
%struct.TYPE_10__ = type { i32 }

@sysctl_tcp_syncookies = common dso_local global i32 0, align 4
@LINUX_MIB_SYNCOOKIESFAILED = common dso_local global i32 0, align 4
@LINUX_MIB_SYNCOOKIESRECV = common dso_local global i32 0, align 4
@tcp6_request_sock_ops = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@RTAX_WINDOW = common dso_local global i32 0, align 4
@RTAX_INITRWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @cookie_v6_check(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet_request_sock*, align 8
  %7 = alloca %struct.inet6_request_sock*, align 8
  %8 = alloca %struct.tcp_request_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.request_sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dst_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcp_options_received, align 8
  %19 = alloca %struct.in6_addr*, align 8
  %20 = alloca %struct.in6_addr, align 4
  %21 = alloca %struct.flowi, align 8
  %22 = alloca %struct.rt0_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %23)
  store %struct.ipv6_pinfo* %24, %struct.ipv6_pinfo** %9, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %25)
  store %struct.tcp_sock* %26, %struct.tcp_sock** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %27)
  store %struct.tcphdr* %28, %struct.tcphdr** %11, align 8
  %29 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = getelementptr i8, i8* %32, i64 -1
  store i8* %33, i8** %12, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %34, %struct.sock** %13, align 8
  %35 = load i32, i32* @sysctl_tcp_syncookies, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %2
  br label %349

43:                                               ; preds = %37
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i64 @tcp_synq_no_recent_overflow(%struct.sock* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @cookie_check(%struct.sk_buff* %48, i8* %49)
  store i32 %50, i32* %15, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %43
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 @sock_net(%struct.sock* %53)
  %55 = load i32, i32* @LINUX_MIB_SYNCOOKIESFAILED, align 4
  %56 = call i32 @NET_INC_STATS_BH(i32 %54, i32 %55)
  br label %349

57:                                               ; preds = %47
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call i32 @sock_net(%struct.sock* %58)
  %60 = load i32, i32* @LINUX_MIB_SYNCOOKIESRECV, align 4
  %61 = call i32 @NET_INC_STATS_BH(i32 %59, i32 %60)
  %62 = call i32 @memset(%struct.tcp_options_received* %18, i32 0, i32 72)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @tcp_parse_options(%struct.sk_buff* %63, %struct.tcp_options_received* %18, i32 0)
  %65 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = call i32 @cookie_check_timestamp(%struct.tcp_options_received* %18)
  br label %70

70:                                               ; preds = %68, %57
  store %struct.sock* null, %struct.sock** %13, align 8
  %71 = call %struct.request_sock* @inet6_reqsk_alloc(i32* @tcp6_request_sock_ops)
  store %struct.request_sock* %71, %struct.request_sock** %14, align 8
  %72 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %73 = icmp ne %struct.request_sock* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %349

75:                                               ; preds = %70
  %76 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %77 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %76)
  store %struct.inet_request_sock* %77, %struct.inet_request_sock** %6, align 8
  %78 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %79 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %78)
  store %struct.inet6_request_sock* %79, %struct.inet6_request_sock** %7, align 8
  %80 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %81 = call %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock* %80)
  store %struct.tcp_request_sock* %81, %struct.tcp_request_sock** %8, align 8
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %85 = call i64 @security_inet_conn_request(%struct.sock* %82, %struct.sk_buff* %83, %struct.request_sock* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %351

88:                                               ; preds = %75
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %91 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %93 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %96 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %101 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %103 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %102, i32 0, i32 1
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = call i32 @ipv6_addr_copy(%struct.in6_addr* %103, %struct.in6_addr* %106)
  %108 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %109 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %108, i32 0, i32 0
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = call i32 @ipv6_addr_copy(%struct.in6_addr* %109, %struct.in6_addr* %112)
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i64 @ipv6_opt_accepted(%struct.sock* %114, %struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %146, label %118

118:                                              ; preds = %88
  %119 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %120 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %118
  %126 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %127 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %125
  %133 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %134 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %141 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139, %132, %125, %118, %88
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = call i32 @atomic_inc(i32* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %152 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %151, i32 0, i32 3
  store %struct.sk_buff* %150, %struct.sk_buff** %152, align 8
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.sock*, %struct.sock** %4, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %158 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = load %struct.sock*, %struct.sock** %4, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %153
  %164 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %165 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %164, i32 0, i32 1
  %166 = call i32 @ipv6_addr_type(%struct.in6_addr* %165)
  %167 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = call i64 @inet6_iif(%struct.sk_buff* %171)
  %173 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %174 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %170, %163, %153
  %176 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %177 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %179 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %178, i32 0, i32 5
  store i64 0, i64* %179, align 8
  %180 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %181 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %180, i32 0, i32 6
  store i64 0, i64* %181, align 8
  %182 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 12
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %185 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 11
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %189 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 10
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %193 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 9
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %197 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %201 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  %202 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %175
  %206 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 8
  %207 = load i32, i32* %206, align 8
  br label %209

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %208, %205
  %210 = phi i32 [ %207, %205 ], [ 0, %208 ]
  %211 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %212 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %18, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  br label %220

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %216
  %221 = phi i32 [ %218, %216 ], [ 0, %219 ]
  %222 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %223 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %225 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @ntohl(i32 %226)
  %228 = getelementptr i8, i8* %227, i64 -1
  %229 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %230 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %8, align 8
  %233 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %19, align 8
  %234 = bitcast %struct.flowi* %21 to %struct.tcp_options_received*
  %235 = call i32 @memset(%struct.tcp_options_received* %234, i32 0, i32 72)
  %236 = load i32, i32* @IPPROTO_TCP, align 4
  %237 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 5
  store i32 %236, i32* %237, align 4
  %238 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  %239 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %240 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %239, i32 0, i32 1
  %241 = call i32 @ipv6_addr_copy(%struct.in6_addr* %238, %struct.in6_addr* %240)
  %242 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %243 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %242, i32 0, i32 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = icmp ne %struct.TYPE_8__* %244, null
  br i1 %245, label %246, label %267

246:                                              ; preds = %220
  %247 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %248 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %247, i32 0, i32 0
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %246
  %254 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %255 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %254, i32 0, i32 0
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %259, %struct.rt0_hdr** %22, align 8
  %260 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  %261 = call i32 @ipv6_addr_copy(%struct.in6_addr* %20, %struct.in6_addr* %260)
  %262 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  %263 = load %struct.rt0_hdr*, %struct.rt0_hdr** %22, align 8
  %264 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %263, i32 0, i32 0
  %265 = load %struct.in6_addr*, %struct.in6_addr** %264, align 8
  %266 = call i32 @ipv6_addr_copy(%struct.in6_addr* %262, %struct.in6_addr* %265)
  store %struct.in6_addr* %20, %struct.in6_addr** %19, align 8
  br label %267

267:                                              ; preds = %253, %246, %220
  %268 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 4
  %269 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %7, align 8
  %270 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %269, i32 0, i32 0
  %271 = call i32 @ipv6_addr_copy(%struct.in6_addr* %268, %struct.in6_addr* %270)
  %272 = load %struct.sock*, %struct.sock** %4, align 8
  %273 = getelementptr inbounds %struct.sock, %struct.sock* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 3
  store i64 %274, i64* %275, align 8
  %276 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %277 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %276)
  %278 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 2
  store i32 %279, i32* %280, align 8
  %281 = load %struct.sock*, %struct.sock** %4, align 8
  %282 = call %struct.TYPE_10__* @inet_sk(%struct.sock* %281)
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 1
  store i32 %284, i32* %285, align 4
  %286 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %287 = bitcast %struct.flowi* %21 to %struct.tcp_options_received*
  %288 = call i32 @security_req_classify_flow(%struct.request_sock* %286, %struct.tcp_options_received* %287)
  %289 = load %struct.sock*, %struct.sock** %4, align 8
  %290 = bitcast %struct.flowi* %21 to %struct.tcp_options_received*
  %291 = call i64 @ip6_dst_lookup(%struct.sock* %289, %struct.dst_entry** %16, %struct.tcp_options_received* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %267
  br label %351

294:                                              ; preds = %267
  %295 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  %296 = icmp ne %struct.in6_addr* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  %299 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  %300 = call i32 @ipv6_addr_copy(%struct.in6_addr* %298, %struct.in6_addr* %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load %struct.sock*, %struct.sock** %4, align 8
  %303 = call i32 @sock_net(%struct.sock* %302)
  %304 = bitcast %struct.flowi* %21 to %struct.tcp_options_received*
  %305 = load %struct.sock*, %struct.sock** %4, align 8
  %306 = call i64 @xfrm_lookup(i32 %303, %struct.dst_entry** %16, %struct.tcp_options_received* %304, %struct.sock* %305, i32 0)
  %307 = icmp slt i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  br label %351

309:                                              ; preds = %301
  %310 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %311 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  br label %320

315:                                              ; preds = %309
  %316 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %317 = load i32, i32* @RTAX_WINDOW, align 4
  %318 = call i32 @dst_metric(%struct.dst_entry* %316, i32 %317)
  %319 = sext i32 %318 to i64
  br label %320

320:                                              ; preds = %315, %314
  %321 = phi i64 [ %312, %314 ], [ %319, %315 ]
  %322 = trunc i64 %321 to i32
  %323 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %324 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %323, i32 0, i32 2
  store i32 %322, i32* %324, align 8
  %325 = load %struct.sock*, %struct.sock** %4, align 8
  %326 = call i32 @tcp_full_space(%struct.sock* %325)
  %327 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %328 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %331 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %330, i32 0, i32 3
  %332 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %333 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %332, i32 0, i32 2
  %334 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %335 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %338 = load i32, i32* @RTAX_INITRWND, align 4
  %339 = call i32 @dst_metric(%struct.dst_entry* %337, i32 %338)
  %340 = call i32 @tcp_select_initial_window(i32 %326, i32 %329, i32* %331, i32* %333, i32 %336, i32* %17, i32 %339)
  %341 = load i32, i32* %17, align 4
  %342 = load %struct.inet_request_sock*, %struct.inet_request_sock** %6, align 8
  %343 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  %344 = load %struct.sock*, %struct.sock** %4, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %346 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %347 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  %348 = call %struct.sock* @get_cookie_sock(%struct.sock* %344, %struct.sk_buff* %345, %struct.request_sock* %346, %struct.dst_entry* %347)
  store %struct.sock* %348, %struct.sock** %13, align 8
  br label %349

349:                                              ; preds = %320, %74, %52, %42
  %350 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %350, %struct.sock** %3, align 8
  br label %354

351:                                              ; preds = %308, %293, %87
  %352 = load %struct.request_sock*, %struct.request_sock** %14, align 8
  %353 = call i32 @reqsk_free(%struct.request_sock* %352)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %354

354:                                              ; preds = %351, %349
  %355 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %355
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i64 @tcp_synq_no_recent_overflow(%struct.sock*) #1

declare dso_local i32 @cookie_check(%struct.sk_buff*, i8*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @memset(%struct.tcp_options_received*, i32, i32) #1

declare dso_local i32 @tcp_parse_options(%struct.sk_buff*, %struct.tcp_options_received*, i32) #1

declare dso_local i32 @cookie_check_timestamp(%struct.tcp_options_received*) #1

declare dso_local %struct.request_sock* @inet6_reqsk_alloc(i32*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @security_inet_conn_request(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, %struct.tcp_options_received*) #1

declare dso_local i64 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.tcp_options_received*) #1

declare dso_local i64 @xfrm_lookup(i32, %struct.dst_entry**, %struct.tcp_options_received*, %struct.sock*, i32) #1

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_select_initial_window(i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local %struct.sock* @get_cookie_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
