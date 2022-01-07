; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_in.c_ax25_ds_state3_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_in.c_ax25_ds_state3_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_EMODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_EWINDOW = common dso_local global i64 0, align 8
@AX25_UA = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@AX25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_STATE_1 = common dso_local global i8* null, align 8
@AX25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COND_REJECT = common dso_local global i32 0, align 4
@AX25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @ax25_ds_state3_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_ds_state3_machine(%struct.TYPE_22__* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %326 [
    i32 129, label %17
    i32 128, label %17
    i32 137, label %72
    i32 136, label %82
    i32 130, label %88
    i32 131, label %88
    i32 132, label %135
    i32 134, label %184
    i32 135, label %320
    i32 133, label %320
  ]

17:                                               ; preds = %7, %7
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* @AX25_MODULUS, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  br label %48

34:                                               ; preds = %17
  %35 = load i32, i32* @AX25_EMODULUS, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @AX25_VALUES_EWINDOW, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %34, %20
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = load i32, i32* @AX25_UA, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AX25_RESPONSE, align 4
  %53 = call i32 @ax25_send_control(%struct.TYPE_22__* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = call i32 @ax25_stop_t1timer(%struct.TYPE_22__* %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %57 = call i32 @ax25_start_t3timer(%struct.TYPE_22__* %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = call i32 @ax25_start_idletimer(%struct.TYPE_22__* %58)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 6
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = call i32 @ax25_requeue_frames(%struct.TYPE_22__* %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = call i32 @ax25_dama_on(%struct.TYPE_22__* %70)
  br label %327

72:                                               ; preds = %7
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = load i32, i32* @AX25_UA, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @AX25_RESPONSE, align 4
  %77 = call i32 @ax25_send_control(%struct.TYPE_22__* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = call i32 @ax25_dama_off(%struct.TYPE_22__* %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %81 = call i32 @ax25_disconnect(%struct.TYPE_22__* %80, i32 0)
  br label %327

82:                                               ; preds = %7
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = call i32 @ax25_dama_off(%struct.TYPE_22__* %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = load i32, i32* @ECONNRESET, align 4
  %87 = call i32 @ax25_disconnect(%struct.TYPE_22__* %85, i32 %86)
  br label %327

88:                                               ; preds = %7, %7
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 130
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %104

98:                                               ; preds = %88
  %99 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @ax25_validate_nr(%struct.TYPE_22__* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ax25_check_iframes_acked(%struct.TYPE_22__* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 5
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @AX25_COMMAND, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %125)
  br label %127

127:                                              ; preds = %124, %121, %117
  br label %134

128:                                              ; preds = %104
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %130 = call i32 @ax25_ds_nr_error_recovery(%struct.TYPE_22__* %129)
  %131 = load i8*, i8** @AX25_STATE_1, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %128, %127
  br label %327

135:                                              ; preds = %7
  %136 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @ax25_validate_nr(%struct.TYPE_22__* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %135
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 5
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %146
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @ax25_frames_acked(%struct.TYPE_22__* %156, i32 %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %160 = call i32 @ax25_calculate_rtt(%struct.TYPE_22__* %159)
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %162 = call i32 @ax25_stop_t1timer(%struct.TYPE_22__* %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %164 = call i32 @ax25_start_t3timer(%struct.TYPE_22__* %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %166 = call i32 @ax25_requeue_frames(%struct.TYPE_22__* %165)
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @AX25_COMMAND, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %155
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %175 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %174)
  br label %176

176:                                              ; preds = %173, %170, %155
  br label %183

177:                                              ; preds = %135
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %179 = call i32 @ax25_ds_nr_error_recovery(%struct.TYPE_22__* %178)
  %180 = load i8*, i8** @AX25_STATE_1, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %177, %176
  br label %327

184:                                              ; preds = %7
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @ax25_validate_nr(%struct.TYPE_22__* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %191 = call i32 @ax25_ds_nr_error_recovery(%struct.TYPE_22__* %190)
  %192 = load i8*, i8** @AX25_STATE_1, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  br label %327

195:                                              ; preds = %184
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @ax25_frames_acked(%struct.TYPE_22__* %203, i32 %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 5
  store i32 0, i32* %207, align 8
  br label %217

208:                                              ; preds = %195
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @ax25_check_iframes_acked(%struct.TYPE_22__* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 5
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %208
  br label %217

217:                                              ; preds = %216, %202
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %217
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %229 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %228)
  br label %230

230:                                              ; preds = %227, %224
  br label %327

231:                                              ; preds = %217
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %290

237:                                              ; preds = %231
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = srem i32 %241, %244
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %250 = call i32 @ax25_rx_iframe(%struct.TYPE_22__* %248, %struct.sk_buff* %249)
  store i32 %250, i32* %15, align 4
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %237
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %257, %237
  %262 = load i32, i32* @AX25_COND_REJECT, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %272 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %271)
  br label %289

273:                                              ; preds = %261
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %273
  %281 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %287 = call i32 @ax25_start_t2timer(%struct.TYPE_22__* %286)
  br label %288

288:                                              ; preds = %280, %273
  br label %289

289:                                              ; preds = %288, %270
  br label %319

290:                                              ; preds = %231
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @AX25_COND_REJECT, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %290
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %302 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %301)
  br label %303

303:                                              ; preds = %300, %297
  br label %318

304:                                              ; preds = %290
  %305 = load i32, i32* @AX25_COND_REJECT, align 4
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %311 = call i32 @ax25_ds_enquiry_response(%struct.TYPE_22__* %310)
  %312 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %313 = xor i32 %312, -1
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %304, %303
  br label %319

319:                                              ; preds = %318, %289
  br label %327

320:                                              ; preds = %7, %7
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %322 = call i32 @ax25_ds_establish_data_link(%struct.TYPE_22__* %321)
  %323 = load i8*, i8** @AX25_STATE_1, align 8
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 4
  store i8* %323, i8** %325, align 8
  br label %327

326:                                              ; preds = %7
  br label %327

327:                                              ; preds = %326, %320, %319, %230, %189, %183, %134, %82, %72, %48
  %328 = load i32, i32* %15, align 4
  ret i32 %328
}

declare dso_local i32 @ax25_send_control(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_requeue_frames(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_dama_on(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_dama_off(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ax25_validate_nr(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ax25_check_iframes_acked(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ax25_ds_enquiry_response(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_ds_nr_error_recovery(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_frames_acked(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ax25_calculate_rtt(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_rx_iframe(%struct.TYPE_22__*, %struct.sk_buff*) #1

declare dso_local i32 @ax25_start_t2timer(%struct.TYPE_22__*) #1

declare dso_local i32 @ax25_ds_establish_data_link(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
