; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_log_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_log_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_loginfo = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nfulnl_instance = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@NF_LOG_TYPE_ULOG = common dso_local global i64 0, align 8
@default_loginfo = common dso_local global %struct.nf_loginfo zeroinitializer, align 8
@NFULNL_CFG_F_SEQ = common dso_local global i32 0, align 4
@NFULNL_CFG_F_SEQ_GLOBAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfulnl_log_packet(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, %struct.nf_loginfo* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_loginfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfulnl_instance*, align 8
  %18 = alloca %struct.nf_loginfo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.nf_loginfo* %5, %struct.nf_loginfo** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %22 = icmp ne %struct.nf_loginfo* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %7
  %24 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %25 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NF_LOG_TYPE_ULOG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  store %struct.nf_loginfo* %30, %struct.nf_loginfo** %18, align 8
  br label %32

31:                                               ; preds = %23, %7
  store %struct.nf_loginfo* @default_loginfo, %struct.nf_loginfo** %18, align 8
  br label %32

32:                                               ; preds = %31, %29
  %33 = load %struct.nf_loginfo*, %struct.nf_loginfo** %18, align 8
  %34 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nfulnl_instance* @instance_lookup_get(i32 %37)
  store %struct.nfulnl_instance* %38, %struct.nfulnl_instance** %17, align 8
  %39 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %40 = icmp ne %struct.nfulnl_instance* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %264

42:                                               ; preds = %32
  store i32 0, i32* %20, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %20, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = call i32 @NLMSG_SPACE(i32 4)
  %51 = call i32 @nla_total_size(i32 4)
  %52 = add i32 %50, %51
  %53 = call i32 @nla_total_size(i32 4)
  %54 = add i32 %52, %53
  %55 = call i32 @nla_total_size(i32 4)
  %56 = add i32 %54, %55
  %57 = call i32 @nla_total_size(i32 4)
  %58 = add i32 %56, %57
  %59 = call i32 @nla_total_size(i32 4)
  %60 = add i32 %58, %59
  %61 = call i32 @nla_total_size(i32 4)
  %62 = add i32 %60, %61
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @nla_total_size(i32 %63)
  %65 = add i32 %62, %64
  %66 = call i32 @nla_total_size(i32 4)
  %67 = add i32 %65, %66
  %68 = call i32 @nla_total_size(i32 4)
  %69 = add i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.net_device*, %struct.net_device** %11, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %49
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call i64 @skb_mac_header_was_set(%struct.sk_buff* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nla_total_size(i32 %81)
  %83 = call i32 @nla_total_size(i32 4)
  %84 = add i32 %82, %83
  %85 = call i32 @nla_total_size(i32 4)
  %86 = add i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %76, %72, %49
  %90 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %91 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %90, i32 0, i32 6
  %92 = call i32 @spin_lock_bh(i32* %91)
  %93 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %94 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NFULNL_CFG_F_SEQ, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = call i32 @nla_total_size(i32 4)
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %89
  %104 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %105 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NFULNL_CFG_F_SEQ_GLOBAL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = call i32 @nla_total_size(i32 4)
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %116 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %19, align 4
  %118 = load %struct.nf_loginfo*, %struct.nf_loginfo** %18, align 8
  %119 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %114
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.nf_loginfo*, %struct.nf_loginfo** %18, align 8
  %127 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ugt i32 %125, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.nf_loginfo*, %struct.nf_loginfo** %18, align 8
  %134 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %132, %124
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %141 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %170 [
    i32 130, label %143
    i32 129, label %143
    i32 128, label %144
  ]

143:                                              ; preds = %139, %139
  store i32 0, i32* %16, align 4
  br label %171

144:                                              ; preds = %139
  %145 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %146 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %144
  %150 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %151 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ugt i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %149, %144
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %16, align 4
  br label %165

161:                                              ; preds = %149
  %162 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %163 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @nla_total_size(i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %15, align 4
  br label %171

170:                                              ; preds = %139
  br label %257

171:                                              ; preds = %165, %143
  %172 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %173 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load i32, i32* %15, align 4
  %178 = zext i32 %177 to i64
  %179 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %180 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @skb_tailroom(i64 %181)
  %183 = sext i32 %182 to i64
  %184 = sub i64 %183, 4
  %185 = icmp ugt i64 %178, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %188 = call i32 @__nfulnl_flush(%struct.nfulnl_instance* %187)
  br label %189

189:                                              ; preds = %186, %176, %171
  %190 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %191 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %189
  %195 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %196 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i64 @nfulnl_alloc_skb(i32 %197, i32 %198)
  %200 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %201 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %200, i32 0, i32 8
  store i64 %199, i64* %201, align 8
  %202 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %203 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %202, i32 0, i32 8
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %194
  br label %263

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %189
  %209 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %210 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = add i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.net_device*, %struct.net_device** %11, align 8
  %219 = load %struct.net_device*, %struct.net_device** %12, align 8
  %220 = load %struct.nf_loginfo*, %struct.nf_loginfo** %18, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @__build_packet_message(%struct.nfulnl_instance* %213, %struct.sk_buff* %214, i32 %215, i32 %216, i32 %217, %struct.net_device* %218, %struct.net_device* %219, %struct.nf_loginfo* %220, i8* %221, i32 %222)
  %224 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %225 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %19, align 4
  %228 = icmp uge i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %208
  %230 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %231 = call i32 @__nfulnl_flush(%struct.nfulnl_instance* %230)
  br label %256

232:                                              ; preds = %208
  %233 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %234 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %233, i32 0, i32 7
  %235 = call i32 @timer_pending(%struct.TYPE_9__* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %255, label %237

237:                                              ; preds = %232
  %238 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %239 = call i32 @instance_get(%struct.nfulnl_instance* %238)
  %240 = load i64, i64* @jiffies, align 8
  %241 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %242 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @HZ, align 4
  %245 = mul nsw i32 %243, %244
  %246 = sdiv i32 %245, 100
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %240, %247
  %249 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %250 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  store i64 %248, i64* %251, align 8
  %252 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %253 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %252, i32 0, i32 7
  %254 = call i32 @add_timer(%struct.TYPE_9__* %253)
  br label %255

255:                                              ; preds = %237, %232
  br label %256

256:                                              ; preds = %255, %229
  br label %257

257:                                              ; preds = %263, %256, %170
  %258 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %259 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %258, i32 0, i32 6
  %260 = call i32 @spin_unlock_bh(i32* %259)
  %261 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %17, align 8
  %262 = call i32 @instance_put(%struct.nfulnl_instance* %261)
  br label %264

263:                                              ; preds = %206
  br label %257

264:                                              ; preds = %257, %41
  ret void
}

declare dso_local %struct.nfulnl_instance* @instance_lookup_get(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NLMSG_SPACE(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i64 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_tailroom(i64) #1

declare dso_local i32 @__nfulnl_flush(%struct.nfulnl_instance*) #1

declare dso_local i64 @nfulnl_alloc_skb(i32, i32) #1

declare dso_local i32 @__build_packet_message(%struct.nfulnl_instance*, %struct.sk_buff*, i32, i32, i32, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*, i32) #1

declare dso_local i32 @timer_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @instance_get(%struct.nfulnl_instance*) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @instance_put(%struct.nfulnl_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
