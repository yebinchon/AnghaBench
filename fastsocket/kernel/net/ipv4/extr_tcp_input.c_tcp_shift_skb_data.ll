; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_shift_skb_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_shift_skb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sacktag_state = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPCB_LOST = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@TCPCB_TAGBITS = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@LINUX_MIB_SACKSHIFTFALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32)* @tcp_shift_skb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp_shift_skb_data(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_sacktag_state* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tcp_sacktag_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcp_sock*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.tcp_sacktag_state* %2, %struct.tcp_sacktag_state** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20)
  store %struct.tcp_sock* %21, %struct.tcp_sock** %14, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call i32 @sk_can_gso(%struct.sock* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %269

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TCPCB_LOST, align 4
  %35 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %269

41:                                               ; preds = %29, %26
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = call i32 @skb_can_shift(%struct.sk_buff* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %269

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @after(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %269

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = call %struct.sk_buff* @tcp_write_queue_head(%struct.sock* %59)
  %61 = icmp eq %struct.sk_buff* %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %269

66:                                               ; preds = %57
  %67 = load %struct.sock*, %struct.sock** %8, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = call %struct.sk_buff* @tcp_write_queue_prev(%struct.sock* %67, %struct.sk_buff* %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %15, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TCPCB_TAGBITS, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %269

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @after(i32 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @before(i32 %88, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %87, %79
  %97 = phi i1 [ false, %79 ], [ %95, %87 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %18, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = call i32 @tcp_skb_pcount(%struct.sk_buff* %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = call i32 @tcp_skb_seglen(%struct.sk_buff* %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %111 = call i32 @tcp_skb_seglen(%struct.sk_buff* %110)
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %269

114:                                              ; preds = %101
  br label %186

115:                                              ; preds = %96
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @after(i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %267

124:                                              ; preds = %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = call i32 @tcp_skb_pcount(%struct.sk_buff* %125)
  %127 = icmp sle i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %267

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @after(i32 %130, i32 %134)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %129
  br label %269

142:                                              ; preds = %129
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %143, %147
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @BUG_ON(i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = call i32 @tcp_skb_mss(%struct.sk_buff* %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %164 = call i32 @tcp_skb_seglen(%struct.sk_buff* %163)
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %142
  br label %269

167:                                              ; preds = %142
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 1, i32* %17, align 4
  br label %185

172:                                              ; preds = %167
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %267

177:                                              ; preds = %172
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %16, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %16, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %171
  br label %186

186:                                              ; preds = %185, %114
  %187 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = load i32, i32* %18, align 4
  %190 = call i64 @skb_shift(%struct.sk_buff* %187, %struct.sk_buff* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  br label %269

193:                                              ; preds = %186
  %194 = load %struct.sock*, %struct.sock** %8, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @tcp_shifted_skb(%struct.sock* %194, %struct.sk_buff* %195, %struct.tcp_sacktag_state* %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %193
  br label %260

204:                                              ; preds = %193
  %205 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %206 = load %struct.sock*, %struct.sock** %8, align 8
  %207 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %206)
  %208 = icmp eq %struct.sk_buff* %205, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %260

210:                                              ; preds = %204
  %211 = load %struct.sock*, %struct.sock** %8, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %213 = call %struct.sk_buff* @tcp_write_queue_next(%struct.sock* %211, %struct.sk_buff* %212)
  store %struct.sk_buff* %213, %struct.sk_buff** %9, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %215 = call i32 @skb_can_shift(%struct.sk_buff* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %210
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = load %struct.sock*, %struct.sock** %8, align 8
  %220 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %219)
  %221 = icmp eq %struct.sk_buff* %218, %220
  br i1 %221, label %236, label %222

222:                                              ; preds = %217
  %223 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %224 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %223)
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @TCPCB_TAGBITS, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %236, label %231

231:                                              ; preds = %222
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = call i32 @tcp_skb_seglen(%struct.sk_buff* %233)
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %231, %222, %217, %210
  br label %260

237:                                              ; preds = %231
  %238 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %18, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %242 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %243 = load i32, i32* %18, align 4
  %244 = call i64 @skb_shift(%struct.sk_buff* %241, %struct.sk_buff* %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %237
  %247 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %248 = call i32 @tcp_skb_pcount(%struct.sk_buff* %247)
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %17, align 4
  %251 = load %struct.sock*, %struct.sock** %8, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %253 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %254 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %255 = call i32 @tcp_skb_pcount(%struct.sk_buff* %254)
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @tcp_shifted_skb(%struct.sock* %251, %struct.sk_buff* %252, %struct.tcp_sacktag_state* %253, i32 %255, i32 %256, i32 %257, i32 0)
  br label %259

259:                                              ; preds = %246, %237
  br label %260

260:                                              ; preds = %259, %236, %209, %203
  %261 = load i32, i32* %17, align 4
  %262 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %263 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %266, %struct.sk_buff** %7, align 8
  br label %274

267:                                              ; preds = %176, %128, %123
  %268 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %268, %struct.sk_buff** %7, align 8
  br label %274

269:                                              ; preds = %192, %166, %141, %113, %78, %65, %56, %45, %40, %25
  %270 = load %struct.sock*, %struct.sock** %8, align 8
  %271 = call i32 @sock_net(%struct.sock* %270)
  %272 = load i32, i32* @LINUX_MIB_SACKSHIFTFALLBACK, align 4
  %273 = call i32 @NET_INC_STATS_BH(i32 %271, i32 %272)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %274

274:                                              ; preds = %269, %267, %260
  %275 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %275
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sk_can_gso(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_can_shift(%struct.sk_buff*) #1

declare dso_local i32 @after(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_head(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_prev(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_seglen(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tcp_skb_mss(%struct.sk_buff*) #1

declare dso_local i64 @skb_shift(%struct.sk_buff*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_shifted_skb(%struct.sock*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_next(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
