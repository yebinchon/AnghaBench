; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_update_metrics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_update_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i32, i32, i32, i32 }
%struct.dst_entry = type { i32, i32* }
%struct.inet_connection_sock = type { i64, i64 }

@sysctl_tcp_nometrics_save = common dso_local global i64 0, align 8
@DST_HOST = common dso_local global i32 0, align 4
@RTAX_RTT = common dso_local global i32 0, align 4
@RTAX_RTTVAR = common dso_local global i32 0, align 4
@RTAX_SSTHRESH = common dso_local global i32 0, align 4
@RTAX_CWND = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i64 0, align 8
@RTAX_REORDERING = common dso_local global i32 0, align 4
@sysctl_tcp_reordering = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_metrics(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %4, align 8
  %13 = load i64, i64* @sysctl_tcp_nometrics_save, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %336

16:                                               ; preds = %1
  %17 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %18 = call i32 @dst_confirm(%struct.dst_entry* %17)
  %19 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %20 = icmp ne %struct.dst_entry* %19, null
  br i1 %20, label %21, label %336

21:                                               ; preds = %16
  %22 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %23 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DST_HOST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %336

28:                                               ; preds = %21
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %29)
  store %struct.inet_connection_sock* %30, %struct.inet_connection_sock** %5, align 8
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %42 = load i32, i32* @RTAX_RTT, align 4
  %43 = call i32 @dst_metric_locked(%struct.dst_entry* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @RTAX_RTT, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %40
  br label %336

54:                                               ; preds = %35
  %55 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %56 = load i32, i32* @RTAX_RTT, align 4
  %57 = call i64 @dst_metric_rtt(%struct.dst_entry* %55, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %65 = load i32, i32* @RTAX_RTT, align 4
  %66 = call i32 @dst_metric_locked(%struct.dst_entry* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %73 = load i32, i32* @RTAX_RTT, align 4
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @set_dst_metric_rtt(%struct.dst_entry* %72, i32 %73, i64 %76)
  br label %87

78:                                               ; preds = %68
  %79 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %80 = load i32, i32* @RTAX_RTT, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = sub i64 %81, %84
  %86 = call i32 @set_dst_metric_rtt(%struct.dst_entry* %79, i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %78, %71
  br label %88

88:                                               ; preds = %87, %54
  %89 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %90 = load i32, i32* @RTAX_RTTVAR, align 4
  %91 = call i32 @dst_metric_locked(%struct.dst_entry* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %135, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %104 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %109 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %113 = load i32, i32* @RTAX_RTTVAR, align 4
  %114 = call i64 @dst_metric_rtt(%struct.dst_entry* %112, i32 %113)
  store i64 %114, i64* %8, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %8, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %8, align 8
  br label %130

122:                                              ; preds = %111
  %123 = load i64, i64* %8, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %123, %125
  %127 = lshr i64 %126, 2
  %128 = load i64, i64* %8, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %122, %119
  %131 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %132 = load i32, i32* @RTAX_RTTVAR, align 4
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @set_dst_metric_rtt(%struct.dst_entry* %131, i32 %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %88
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %137 = call i64 @tcp_in_initial_slowstart(%struct.tcp_sock* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %195

139:                                              ; preds = %135
  %140 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %141 = load i32, i32* @RTAX_SSTHRESH, align 4
  %142 = call i32 @dst_metric(%struct.dst_entry* %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %139
  %145 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %146 = load i32, i32* @RTAX_SSTHRESH, align 4
  %147 = call i32 @dst_metric_locked(%struct.dst_entry* %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %170, label %149

149:                                              ; preds = %144
  %150 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %151 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 1
  %154 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %155 = load i32, i32* @RTAX_SSTHRESH, align 4
  %156 = call i32 @dst_metric(%struct.dst_entry* %154, i32 %155)
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %149
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 1
  %163 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %164 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* @RTAX_SSTHRESH, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %162, i32* %169, align 4
  br label %170

170:                                              ; preds = %158, %149, %144, %139
  %171 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %172 = load i32, i32* @RTAX_CWND, align 4
  %173 = call i32 @dst_metric_locked(%struct.dst_entry* %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %194, label %175

175:                                              ; preds = %170
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %180 = load i32, i32* @RTAX_CWND, align 4
  %181 = call i32 @dst_metric(%struct.dst_entry* %179, i32 %180)
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %175
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %188 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @RTAX_CWND, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %183, %175, %170
  br label %304

195:                                              ; preds = %135
  %196 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %197 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %203, label %252

203:                                              ; preds = %195
  %204 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %205 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TCP_CA_Open, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %252

209:                                              ; preds = %203
  %210 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %211 = load i32, i32* @RTAX_SSTHRESH, align 4
  %212 = call i32 @dst_metric_locked(%struct.dst_entry* %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %230, label %214

214:                                              ; preds = %209
  %215 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %216 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = ashr i32 %217, 1
  %219 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %220 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @max(i32 %218, i32 %221)
  %223 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %224 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* @RTAX_SSTHRESH, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %222, i32* %229, align 4
  br label %230

230:                                              ; preds = %214, %209
  %231 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %232 = load i32, i32* @RTAX_CWND, align 4
  %233 = call i32 @dst_metric_locked(%struct.dst_entry* %231, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %230
  %236 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %237 = load i32, i32* @RTAX_CWND, align 4
  %238 = call i32 @dst_metric(%struct.dst_entry* %236, i32 %237)
  %239 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %240 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  %243 = ashr i32 %242, 1
  %244 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %245 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @RTAX_CWND, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %243, i32* %250, align 4
  br label %251

251:                                              ; preds = %235, %230
  br label %303

252:                                              ; preds = %203, %195
  %253 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %254 = load i32, i32* @RTAX_CWND, align 4
  %255 = call i32 @dst_metric_locked(%struct.dst_entry* %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %273, label %257

257:                                              ; preds = %252
  %258 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %259 = load i32, i32* @RTAX_CWND, align 4
  %260 = call i32 @dst_metric(%struct.dst_entry* %258, i32 %259)
  %261 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %262 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %260, %263
  %265 = ashr i32 %264, 1
  %266 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %267 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* @RTAX_CWND, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %265, i32* %272, align 4
  br label %273

273:                                              ; preds = %257, %252
  %274 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %275 = load i32, i32* @RTAX_SSTHRESH, align 4
  %276 = call i32 @dst_metric(%struct.dst_entry* %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %302

278:                                              ; preds = %273
  %279 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %280 = load i32, i32* @RTAX_SSTHRESH, align 4
  %281 = call i32 @dst_metric_locked(%struct.dst_entry* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %302, label %283

283:                                              ; preds = %278
  %284 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %285 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %288 = load i32, i32* @RTAX_SSTHRESH, align 4
  %289 = call i32 @dst_metric(%struct.dst_entry* %287, i32 %288)
  %290 = icmp sgt i32 %286, %289
  br i1 %290, label %291, label %302

291:                                              ; preds = %283
  %292 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %293 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %296 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* @RTAX_SSTHRESH, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32 %294, i32* %301, align 4
  br label %302

302:                                              ; preds = %291, %283, %278, %273
  br label %303

303:                                              ; preds = %302, %251
  br label %304

304:                                              ; preds = %303, %194
  %305 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %306 = load i32, i32* @RTAX_REORDERING, align 4
  %307 = call i32 @dst_metric_locked(%struct.dst_entry* %305, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %335, label %309

309:                                              ; preds = %304
  %310 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %311 = load i32, i32* @RTAX_REORDERING, align 4
  %312 = call i32 @dst_metric(%struct.dst_entry* %310, i32 %311)
  %313 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %314 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %334

317:                                              ; preds = %309
  %318 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %319 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @sysctl_tcp_reordering, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %334

323:                                              ; preds = %317
  %324 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %325 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %328 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* @RTAX_REORDERING, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  store i32 %326, i32* %333, align 4
  br label %334

334:                                              ; preds = %323, %317, %309
  br label %335

335:                                              ; preds = %334, %304
  br label %336

336:                                              ; preds = %15, %53, %335, %21, %16
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @dst_confirm(%struct.dst_entry*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i64 @dst_metric_rtt(%struct.dst_entry*, i32) #1

declare dso_local i32 @set_dst_metric_rtt(%struct.dst_entry*, i32, i64) #1

declare dso_local i64 @tcp_in_initial_slowstart(%struct.tcp_sock*) #1

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
