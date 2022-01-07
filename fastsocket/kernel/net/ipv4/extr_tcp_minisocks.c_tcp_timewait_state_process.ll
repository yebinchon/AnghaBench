; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.inet_timewait_sock = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i64, i32, i64, i32 }
%struct.tcp_timewait_sock = type { i64, i64, i64, i64, i8* }
%struct.tcp_options_received = type { i64, i64, i8*, i64 }
%struct.sock = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@TCP_FIN_WAIT2 = common dso_local global i64 0, align 8
@TCP_TW_ACK = common dso_local global i32 0, align 4
@TCP_TW_SUCCESS = common dso_local global i32 0, align 4
@tcp_death_row = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TCP_TW_RST = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@sysctl_tcp_rfc1337 = common dso_local global i64 0, align 8
@TCP_TW_SYN = common dso_local global i32 0, align 4
@LINUX_MIB_PAWSESTABREJECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_timewait_state_process(%struct.inet_timewait_sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.tcp_timewait_sock*, align 8
  %9 = alloca %struct.tcp_options_received, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %13 = bitcast %struct.inet_timewait_sock* %12 to %struct.sock*
  %14 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %13)
  store %struct.tcp_timewait_sock* %14, %struct.tcp_timewait_sock** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %19, 10
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %23 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @tcp_parse_options(%struct.sk_buff* %27, %struct.tcp_options_received* %9, i32 0)
  %29 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %34 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 3
  store i64 %35, i64* %36, align 8
  %37 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %38 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @tcp_paws_reject(%struct.tcp_options_received* %9, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %32, %26
  br label %46

46:                                               ; preds = %45, %21, %3
  %47 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %48 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TCP_FIN_WAIT2, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %204

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %65 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %68 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %71 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @tcp_in_window(i64 %59, i64 %63, i64 %66, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %55, %52
  %77 = load i32, i32* @TCP_TW_ACK, align 4
  store i32 %77, i32* %4, align 4
  br label %356

78:                                               ; preds = %55
  %79 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %240

84:                                               ; preds = %78
  %85 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %95 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @before(i64 %93, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %145

100:                                              ; preds = %89, %84
  %101 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %111 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @after(i64 %109, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %119, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115, %105, %100
  %126 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %127 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %126)
  %128 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %128, i32* %4, align 4
  br label %356

129:                                              ; preds = %115
  %130 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %135)
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %140 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  %143 = icmp ne i64 %138, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %134, %129
  br label %145

145:                                              ; preds = %144, %99
  %146 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %147 = call i32 @inet_twsk_deschedule(%struct.inet_timewait_sock* %146, %struct.TYPE_5__* @tcp_death_row)
  %148 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %149 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %148)
  %150 = load i32, i32* @TCP_TW_RST, align 4
  store i32 %150, i32* %4, align 4
  br label %356

151:                                              ; preds = %134
  %152 = load i64, i64* @TCP_TIME_WAIT, align 8
  %153 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %154 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %155)
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %160 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %151
  %165 = call i8* (...) @get_seconds()
  %166 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %167 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  %168 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %171 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %164, %151
  %173 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %174 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AF_INET, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %172
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcp_death_row, i32 0, i32 0), align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %183 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %188 = call i64 @tcp_v4_tw_remember_stamp(%struct.inet_timewait_sock* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %192 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %193 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %196 = call i32 @inet_twsk_schedule(%struct.inet_timewait_sock* %191, %struct.TYPE_5__* @tcp_death_row, i32 %194, i32 %195)
  br label %202

197:                                              ; preds = %186, %181, %178, %172
  %198 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %199 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %200 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %201 = call i32 @inet_twsk_schedule(%struct.inet_timewait_sock* %198, %struct.TYPE_5__* @tcp_death_row, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %190
  %203 = load i32, i32* @TCP_TW_ACK, align 4
  store i32 %203, i32* %4, align 4
  br label %356

204:                                              ; preds = %46
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %267, label %207

207:                                              ; preds = %204
  %208 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %209 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %213 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %211, %214
  br i1 %215, label %216, label %267

216:                                              ; preds = %207
  %217 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %218 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %222 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %221)
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %220, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %216
  %227 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %228 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %267

231:                                              ; preds = %226, %216
  %232 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %233 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %231
  %237 = load i64, i64* @sysctl_tcp_rfc1337, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  br label %240

240:                                              ; preds = %239, %83
  %241 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %242 = call i32 @inet_twsk_deschedule(%struct.inet_timewait_sock* %241, %struct.TYPE_5__* @tcp_death_row)
  %243 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %244 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %243)
  %245 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %245, i32* %4, align 4
  br label %356

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %231
  %248 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %249 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %250 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %251 = call i32 @inet_twsk_schedule(%struct.inet_timewait_sock* %248, %struct.TYPE_5__* @tcp_death_row, i32 %249, i32 %250)
  %252 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %259 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %258, i32 0, i32 3
  store i64 %257, i64* %259, align 8
  %260 = call i8* (...) @get_seconds()
  %261 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %262 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %261, i32 0, i32 4
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %255, %247
  %264 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %265 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %264)
  %266 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %266, i32* %4, align 4
  br label %356

267:                                              ; preds = %226, %207, %204
  %268 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %269 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %324

272:                                              ; preds = %267
  %273 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %274 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %324, label %277

277:                                              ; preds = %272
  %278 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %324, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %324, label %285

285:                                              ; preds = %282
  %286 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %287 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %286)
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %291 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @after(i64 %289, i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %285
  %296 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %324

299:                                              ; preds = %295
  %300 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %301 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %9, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = sub nsw i64 %302, %304
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %307, label %324

307:                                              ; preds = %299, %285
  %308 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %309 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 65535
  %312 = add nsw i64 %311, 2
  store i64 %312, i64* %11, align 8
  %313 = load i64, i64* %11, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load i64, i64* %11, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* %11, align 8
  br label %318

318:                                              ; preds = %315, %307
  %319 = load i64, i64* %11, align 8
  %320 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %321 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %320)
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 2
  store i64 %319, i64* %322, align 8
  %323 = load i32, i32* @TCP_TW_SYN, align 4
  store i32 %323, i32* %4, align 4
  br label %356

324:                                              ; preds = %299, %295, %282, %277, %272, %267
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %329 = call i32 @twsk_net(%struct.inet_timewait_sock* %328)
  %330 = load i32, i32* @LINUX_MIB_PAWSESTABREJECTED, align 4
  %331 = call i32 @NET_INC_STATS_BH(i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %327, %324
  %333 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %334 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %352, label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %10, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %342 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %340, %337
  %346 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %347 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %348 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %349 = call i32 @inet_twsk_schedule(%struct.inet_timewait_sock* %346, %struct.TYPE_5__* @tcp_death_row, i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %345, %340
  %351 = load i32, i32* @TCP_TW_ACK, align 4
  store i32 %351, i32* %4, align 4
  br label %356

352:                                              ; preds = %332
  %353 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %354 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %353)
  %355 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %355, i32* %4, align 4
  br label %356

356:                                              ; preds = %352, %350, %318, %263, %240, %202, %145, %125, %76
  %357 = load i32, i32* %4, align 4
  ret i32 %357
}

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_parse_options(%struct.sk_buff*, %struct.tcp_options_received*, i32) #1

declare dso_local i32 @tcp_paws_reject(%struct.tcp_options_received*, i32) #1

declare dso_local i32 @tcp_in_window(i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @before(i64, i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

declare dso_local i32 @inet_twsk_deschedule(%struct.inet_timewait_sock*, %struct.TYPE_5__*) #1

declare dso_local i8* @get_seconds(...) #1

declare dso_local i64 @tcp_v4_tw_remember_stamp(%struct.inet_timewait_sock*) #1

declare dso_local i32 @inet_twsk_schedule(%struct.inet_timewait_sock*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @twsk_net(%struct.inet_timewait_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
