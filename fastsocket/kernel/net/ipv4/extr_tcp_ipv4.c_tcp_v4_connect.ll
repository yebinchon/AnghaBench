; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.sock = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i32, i64, i32, i64, i64, i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.rtable = type { i32, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ip_options = type { i64, i64, i64 }
%struct.inet_peer = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@tcp_death_row = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TCP_PAWS_MSL = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_options*, align 8
  %17 = alloca %struct.inet_peer*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.inet_sock* @inet_sk(%struct.sock* %18)
  store %struct.inet_sock* %19, %struct.inet_sock** %8, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20)
  store %struct.tcp_sock* %21, %struct.tcp_sock** %9, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 24
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %303

30:                                               ; preds = %3
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EAFNOSUPPORT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %303

39:                                               ; preds = %30
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.ip_options* @rcu_dereference(i32 %46)
  store %struct.ip_options* %47, %struct.ip_options** %16, align 8
  %48 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %49 = icmp ne %struct.ip_options* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %39
  %51 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %52 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %303

61:                                               ; preds = %55
  %62 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %63 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %61, %50, %39
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %68 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = call i32 @RT_CONN_FLAGS(%struct.sock* %70)
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IPPROTO_TCP, align 4
  %76 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %77 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = call i32 @ip_route_connect(%struct.rtable** %11, i64 %66, i64 %69, i32 %71, i32 %74, i32 %75, i32 %78, i64 %81, %struct.sock* %82, i32 1)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %65
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @ENETUNREACH, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = call i32 @sock_net(%struct.sock* %92)
  %94 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %95 = call i32 @IP_INC_STATS_BH(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %4, align 4
  br label %303

98:                                               ; preds = %65
  %99 = load %struct.rtable*, %struct.rtable** %11, align 8
  %100 = getelementptr inbounds %struct.rtable, %struct.rtable* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RTCF_MULTICAST, align 4
  %103 = load i32, i32* @RTCF_BROADCAST, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load %struct.rtable*, %struct.rtable** %11, align 8
  %109 = call i32 @ip_rt_put(%struct.rtable* %108)
  %110 = load i32, i32* @ENETUNREACH, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %303

112:                                              ; preds = %98
  %113 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %114 = icmp ne %struct.ip_options* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %117 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115, %112
  %121 = load %struct.rtable*, %struct.rtable** %11, align 8
  %122 = getelementptr inbounds %struct.rtable, %struct.rtable* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %126 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load %struct.rtable*, %struct.rtable** %11, align 8
  %131 = getelementptr inbounds %struct.rtable, %struct.rtable* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %134 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %137 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %140 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %142 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %135
  %147 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %148 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %154 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %152, %146, %135
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tcp_death_row, i32 0, i32 0), align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %166 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %203, label %170

170:                                              ; preds = %164
  %171 = load %struct.rtable*, %struct.rtable** %11, align 8
  %172 = getelementptr inbounds %struct.rtable, %struct.rtable* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %12, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %203

176:                                              ; preds = %170
  %177 = load %struct.rtable*, %struct.rtable** %11, align 8
  %178 = call %struct.inet_peer* @rt_get_peer(%struct.rtable* %177)
  store %struct.inet_peer* %178, %struct.inet_peer** %17, align 8
  %179 = load %struct.inet_peer*, %struct.inet_peer** %17, align 8
  %180 = icmp ne %struct.inet_peer* %179, null
  br i1 %180, label %181, label %202

181:                                              ; preds = %176
  %182 = load %struct.inet_peer*, %struct.inet_peer** %17, align 8
  %183 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TCP_PAWS_MSL, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i64 (...) @get_seconds()
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %181
  %190 = load %struct.inet_peer*, %struct.inet_peer** %17, align 8
  %191 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %194 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.inet_peer*, %struct.inet_peer** %17, align 8
  %197 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  store i64 %198, i64* %201, align 8
  br label %202

202:                                              ; preds = %189, %181, %176
  br label %203

203:                                              ; preds = %202, %170, %164, %161
  %204 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %205 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %208 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %211 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.sock*, %struct.sock** %5, align 8
  %213 = call %struct.TYPE_11__* @inet_csk(%struct.sock* %212)
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %216 = icmp ne %struct.ip_options* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %203
  %218 = load %struct.ip_options*, %struct.ip_options** %16, align 8
  %219 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.sock*, %struct.sock** %5, align 8
  %222 = call %struct.TYPE_11__* @inet_csk(%struct.sock* %221)
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  store i64 %220, i64* %223, align 8
  br label %224

224:                                              ; preds = %217, %203
  %225 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %226 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  store i32 536, i32* %227, align 8
  %228 = load %struct.sock*, %struct.sock** %5, align 8
  %229 = load i32, i32* @TCP_SYN_SENT, align 4
  %230 = call i32 @tcp_set_state(%struct.sock* %228, i32 %229)
  %231 = load %struct.sock*, %struct.sock** %5, align 8
  %232 = call i32 @inet_hash_connect(%struct.TYPE_10__* @tcp_death_row, %struct.sock* %231)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  br label %292

236:                                              ; preds = %224
  %237 = load i32, i32* @IPPROTO_TCP, align 4
  %238 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %239 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %242 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.sock*, %struct.sock** %5, align 8
  %245 = call i32 @ip_route_newports(%struct.rtable** %11, i32 %237, i32 %240, i64 %243, %struct.sock* %244)
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %236
  br label %292

249:                                              ; preds = %236
  %250 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %251 = load %struct.sock*, %struct.sock** %5, align 8
  %252 = getelementptr inbounds %struct.sock, %struct.sock* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load %struct.sock*, %struct.sock** %5, align 8
  %254 = load %struct.rtable*, %struct.rtable** %11, align 8
  %255 = getelementptr inbounds %struct.rtable, %struct.rtable* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = call i32 @sk_setup_caps(%struct.sock* %253, i32* %256)
  %258 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %259 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %278, label %262

262:                                              ; preds = %249
  %263 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %264 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %267 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %270 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %273 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @secure_tcp_sequence_number(i64 %265, i64 %268, i32 %271, i64 %274)
  %276 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %277 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %262, %249
  %279 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %280 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @jiffies, align 4
  %283 = xor i32 %281, %282
  %284 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %285 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  %286 = load %struct.sock*, %struct.sock** %5, align 8
  %287 = call i32 @tcp_connect(%struct.sock* %286)
  store i32 %287, i32* %15, align 4
  store %struct.rtable* null, %struct.rtable** %11, align 8
  %288 = load i32, i32* %15, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %278
  br label %292

291:                                              ; preds = %278
  store i32 0, i32* %4, align 4
  br label %303

292:                                              ; preds = %290, %248, %235
  %293 = load %struct.sock*, %struct.sock** %5, align 8
  %294 = load i32, i32* @TCP_CLOSE, align 4
  %295 = call i32 @tcp_set_state(%struct.sock* %293, i32 %294)
  %296 = load %struct.rtable*, %struct.rtable** %11, align 8
  %297 = call i32 @ip_rt_put(%struct.rtable* %296)
  %298 = load %struct.sock*, %struct.sock** %5, align 8
  %299 = getelementptr inbounds %struct.sock, %struct.sock* %298, i32 0, i32 0
  store i64 0, i64* %299, align 8
  %300 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %301 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %300, i32 0, i32 2
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* %15, align 4
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %292, %291, %107, %96, %58, %36, %27
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.ip_options* @rcu_dereference(i32) #1

declare dso_local i32 @ip_route_connect(%struct.rtable**, i64, i64, i32, i32, i32, i32, i64, %struct.sock*, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.inet_peer* @rt_get_peer(%struct.rtable*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local %struct.TYPE_11__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_hash_connect(%struct.TYPE_10__*, %struct.sock*) #1

declare dso_local i32 @ip_route_newports(%struct.rtable**, i32, i32, i64, %struct.sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @secure_tcp_sequence_number(i64, i64, i32, i64) #1

declare dso_local i32 @tcp_connect(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
