; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_check_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, i32 (%struct.sock*, %struct.request_sock*)* }
%struct.tcphdr = type { i32, i32 }
%struct.tcp_options_received = type { i64, i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@TCP_FLAG_RST = common dso_local global i32 0, align 4
@TCP_FLAG_SYN = common dso_local global i32 0, align 4
@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@LINUX_MIB_PAWSESTABREJECTED = common dso_local global i32 0, align 4
@TCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@sysctl_tcp_abort_on_overflow = common dso_local global i32 0, align 4
@LINUX_MIB_EMBRYONICRSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_check_req(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.request_sock** %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.request_sock**, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcp_options_received, align 8
  %14 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store %struct.request_sock** %3, %struct.request_sock*** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %15)
  store %struct.tcphdr* %16, %struct.tcphdr** %10, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %18 = call i32 @tcp_flag_word(%struct.tcphdr* %17)
  %19 = load i32, i32* @TCP_FLAG_RST, align 4
  %20 = load i32, i32* @TCP_FLAG_SYN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TCP_FLAG_ACK, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %29, 2
  br i1 %30, label %31, label %58

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @tcp_parse_options(%struct.sk_buff* %32, %struct.tcp_options_received* %13, i32 0)
  %34 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %39 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = call i64 (...) @get_seconds()
  %43 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = sdiv i32 %43, %44
  %46 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %47 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %42, %50
  %52 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 3
  store i64 %51, i64* %52, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tcp_paws_reject(%struct.tcp_options_received* %13, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %37, %31
  br label %58

58:                                               ; preds = %57, %4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %64 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @TCP_FLAG_SYN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %77 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32 (%struct.sock*, %struct.request_sock*)*, i32 (%struct.sock*, %struct.request_sock*)** %79, align 8
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %83 = call i32 %80(%struct.sock* %81, %struct.request_sock* %82)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

84:                                               ; preds = %72, %68, %58
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @TCP_FLAG_ACK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %95 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = icmp ne i64 %93, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %101, %struct.sock** %5, align 8
  br label %315

102:                                              ; preds = %89, %84
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %115 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %120 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %119)
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %125 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i32 @tcp_in_window(i64 %109, i64 %113, i64 %118, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %154, label %130

130:                                              ; preds = %105, %102
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @TCP_FLAG_RST, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %137 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %136, i32 0, i32 2
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)** %139, align 8
  %141 = load %struct.sock*, %struct.sock** %6, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %144 = call i32 %140(%struct.sock* %141, %struct.sk_buff* %142, %struct.request_sock* %143)
  br label %145

145:                                              ; preds = %135, %130
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.sock*, %struct.sock** %6, align 8
  %150 = call i32 @sock_net(%struct.sock* %149)
  %151 = load i32, i32* @LINUX_MIB_PAWSESTABREJECTED, align 4
  %152 = call i32 @NET_INC_STATS_BH(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %145
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

154:                                              ; preds = %105
  %155 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %164 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %163)
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  %168 = call i32 @after(i64 %162, i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %158
  %171 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %174 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %170, %158, %154
  %176 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %177 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %181 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %180)
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %179, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load i32, i32* @TCP_FLAG_SYN, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %11, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %185, %175
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @TCP_FLAG_RST, align 4
  %193 = load i32, i32* @TCP_FLAG_SYN, align 4
  %194 = or i32 %192, %193
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load %struct.sock*, %struct.sock** %6, align 8
  %199 = call i32 @sock_net(%struct.sock* %198)
  %200 = load i32, i32* @TCP_MIB_ATTEMPTFAILS, align 4
  %201 = call i32 @TCP_INC_STATS_BH(i32 %199, i32 %200)
  br label %292

202:                                              ; preds = %190
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @TCP_FLAG_ACK, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

208:                                              ; preds = %202
  %209 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %210 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.sock*, %struct.sock** %6, align 8
  %213 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %212)
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %211, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %208
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff* %219)
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %224 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %223)
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, 1
  %228 = icmp eq i64 %222, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %218
  %230 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %231 = call %struct.TYPE_12__* @inet_rsk(%struct.request_sock* %230)
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

233:                                              ; preds = %218, %208
  %234 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %245 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %244)
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  store i64 %243, i64* %246, align 8
  br label %257

247:                                              ; preds = %237, %233
  %248 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %249 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %254 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %253)
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %252, %247
  br label %257

257:                                              ; preds = %256, %241
  %258 = load %struct.sock*, %struct.sock** %6, align 8
  %259 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %258)
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)** %262, align 8
  %264 = load %struct.sock*, %struct.sock** %6, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %266 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %267 = call %struct.sock* %263(%struct.sock* %264, %struct.sk_buff* %265, %struct.request_sock* %266, i32* null)
  store %struct.sock* %267, %struct.sock** %14, align 8
  %268 = load %struct.sock*, %struct.sock** %14, align 8
  %269 = icmp eq %struct.sock* %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %284

271:                                              ; preds = %257
  %272 = load %struct.sock*, %struct.sock** %6, align 8
  %273 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %274 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %275 = call i32 @inet_csk_reqsk_queue_unlink(%struct.sock* %272, %struct.request_sock* %273, %struct.request_sock** %274)
  %276 = load %struct.sock*, %struct.sock** %6, align 8
  %277 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %278 = call i32 @inet_csk_reqsk_queue_removed(%struct.sock* %276, %struct.request_sock* %277)
  %279 = load %struct.sock*, %struct.sock** %6, align 8
  %280 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %281 = load %struct.sock*, %struct.sock** %14, align 8
  %282 = call i32 @inet_csk_reqsk_queue_add(%struct.sock* %279, %struct.request_sock* %280, %struct.sock* %281)
  %283 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %283, %struct.sock** %5, align 8
  br label %315

284:                                              ; preds = %270
  %285 = load i32, i32* @sysctl_tcp_abort_on_overflow, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %289 = call %struct.TYPE_12__* @inet_rsk(%struct.request_sock* %288)
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  store i32 1, i32* %290, align 4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %197
  %293 = load %struct.sock*, %struct.sock** %6, align 8
  %294 = call i32 @sock_net(%struct.sock* %293)
  %295 = load i32, i32* @LINUX_MIB_EMBRYONICRSTS, align 4
  %296 = call i32 @NET_INC_STATS_BH(i32 %294, i32 %295)
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @TCP_FLAG_RST, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %292
  %302 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %303 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %302, i32 0, i32 2
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %305, align 8
  %307 = load %struct.sock*, %struct.sock** %6, align 8
  %308 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %309 = call i32 %306(%struct.sock* %307, %struct.sk_buff* %308)
  br label %310

310:                                              ; preds = %301, %292
  %311 = load %struct.sock*, %struct.sock** %6, align 8
  %312 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %313 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %314 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %311, %struct.request_sock* %312, %struct.request_sock** %313)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %315

315:                                              ; preds = %310, %287, %271, %229, %207, %153, %100, %75
  %316 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %316
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i32 @tcp_parse_options(%struct.sk_buff*, %struct.tcp_options_received*, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @tcp_paws_reject(%struct.tcp_options_received*, i32) #1

declare dso_local %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @tcp_in_window(i64, i64, i64, i64) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @after(i64, i64) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local %struct.TYPE_13__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_12__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_unlink(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @inet_csk_reqsk_queue_removed(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
