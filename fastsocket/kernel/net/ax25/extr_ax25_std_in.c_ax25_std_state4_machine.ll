; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_state4_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_state4_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_EMODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_EWINDOW = common dso_local global i64 0, align 8
@AX25_UA = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_STATE_3 = common dso_local global i8* null, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@AX25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@AX25_STATE_1 = common dso_local global i8* null, align 8
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@AX25_COND_REJECT = common dso_local global i32 0, align 4
@AX25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @ax25_std_state4_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_std_state4_machine(%struct.TYPE_19__* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %378 [
    i32 129, label %17
    i32 128, label %17
    i32 137, label %77
    i32 136, label %85
    i32 130, label %89
    i32 131, label %89
    i32 132, label %175
    i32 134, label %253
    i32 135, label %372
    i32 133, label %372
  ]

17:                                               ; preds = %7, %7
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* @AX25_MODULUS, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  br label %48

34:                                               ; preds = %17
  %35 = load i32, i32* @AX25_EMODULUS, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @AX25_VALUES_EWINDOW, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %34, %20
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = load i32, i32* @AX25_UA, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AX25_RESPONSE, align 4
  %53 = call i32 @ax25_send_control(%struct.TYPE_19__* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = call i32 @ax25_stop_t1timer(%struct.TYPE_19__* %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = call i32 @ax25_stop_t2timer(%struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = call i32 @ax25_start_t3timer(%struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = call i32 @ax25_start_idletimer(%struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load i8*, i8** @AX25_STATE_3, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 6
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = call i32 @ax25_requeue_frames(%struct.TYPE_19__* %75)
  br label %379

77:                                               ; preds = %7
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = load i32, i32* @AX25_UA, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @AX25_RESPONSE, align 4
  %82 = call i32 @ax25_send_control(%struct.TYPE_19__* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = call i32 @ax25_disconnect(%struct.TYPE_19__* %83, i32 0)
  br label %379

85:                                               ; preds = %7
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = load i32, i32* @ECONNRESET, align 4
  %88 = call i32 @ax25_disconnect(%struct.TYPE_19__* %86, i32 %87)
  br label %379

89:                                               ; preds = %7, %7
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 130
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %89
  %100 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @AX25_RESPONSE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %109
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = call i32 @ax25_stop_t1timer(%struct.TYPE_19__* %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 6
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @ax25_validate_nr(%struct.TYPE_19__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %112
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @ax25_frames_acked(%struct.TYPE_19__* %122, i32 %123)
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %121
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %134 = call i32 @ax25_start_t3timer(%struct.TYPE_19__* %133)
  %135 = load i8*, i8** @AX25_STATE_3, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  br label %141

138:                                              ; preds = %121
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = call i32 @ax25_requeue_frames(%struct.TYPE_19__* %139)
  br label %141

141:                                              ; preds = %138, %132
  br label %148

142:                                              ; preds = %112
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %144 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__* %143)
  %145 = load i8*, i8** @AX25_STATE_1, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %141
  br label %379

149:                                              ; preds = %109, %105
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @AX25_COMMAND, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %158 = call i32 @ax25_std_enquiry_response(%struct.TYPE_19__* %157)
  br label %159

159:                                              ; preds = %156, %153, %149
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @ax25_validate_nr(%struct.TYPE_19__* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @ax25_frames_acked(%struct.TYPE_19__* %165, i32 %166)
  br label %174

168:                                              ; preds = %159
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %170 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__* %169)
  %171 = load i8*, i8** @AX25_STATE_1, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %168, %164
  br label %379

175:                                              ; preds = %7
  %176 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %225

184:                                              ; preds = %175
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @AX25_RESPONSE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %225

188:                                              ; preds = %184
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %190 = call i32 @ax25_stop_t1timer(%struct.TYPE_19__* %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 6
  store i32 0, i32* %192, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @ax25_validate_nr(%struct.TYPE_19__* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %188
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @ax25_frames_acked(%struct.TYPE_19__* %198, i32 %199)
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %203, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %197
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = call i32 @ax25_start_t3timer(%struct.TYPE_19__* %209)
  %211 = load i8*, i8** @AX25_STATE_3, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  br label %217

214:                                              ; preds = %197
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %216 = call i32 @ax25_requeue_frames(%struct.TYPE_19__* %215)
  br label %217

217:                                              ; preds = %214, %208
  br label %224

218:                                              ; preds = %188
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %220 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__* %219)
  %221 = load i8*, i8** @AX25_STATE_1, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %218, %217
  br label %379

225:                                              ; preds = %184, %175
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @AX25_COMMAND, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %234 = call i32 @ax25_std_enquiry_response(%struct.TYPE_19__* %233)
  br label %235

235:                                              ; preds = %232, %229, %225
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @ax25_validate_nr(%struct.TYPE_19__* %236, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @ax25_frames_acked(%struct.TYPE_19__* %241, i32 %242)
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %245 = call i32 @ax25_requeue_frames(%struct.TYPE_19__* %244)
  br label %252

246:                                              ; preds = %235
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %248 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__* %247)
  %249 = load i8*, i8** @AX25_STATE_1, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %246, %240
  br label %379

253:                                              ; preds = %7
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @ax25_validate_nr(%struct.TYPE_19__* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %260 = call i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__* %259)
  %261 = load i8*, i8** @AX25_STATE_1, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  br label %379

264:                                              ; preds = %253
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @ax25_frames_acked(%struct.TYPE_19__* %265, i32 %266)
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %264
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %279 = call i32 @ax25_std_enquiry_response(%struct.TYPE_19__* %278)
  br label %280

280:                                              ; preds = %277, %274
  br label %379

281:                                              ; preds = %264
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %340

287:                                              ; preds = %281
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = srem i32 %291, %294
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %299 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %300 = call i32 @ax25_rx_iframe(%struct.TYPE_19__* %298, %struct.sk_buff* %299)
  store i32 %300, i32* %15, align 4
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @AX25_COND_OWN_RX_BUSY, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %287
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  br label %311

311:                                              ; preds = %307, %287
  %312 = load i32, i32* @AX25_COND_REJECT, align 4
  %313 = xor i32 %312, -1
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %311
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %322 = call i32 @ax25_std_enquiry_response(%struct.TYPE_19__* %321)
  br label %339

323:                                              ; preds = %311
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %323
  %331 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 4
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %337 = call i32 @ax25_start_t2timer(%struct.TYPE_19__* %336)
  br label %338

338:                                              ; preds = %330, %323
  br label %339

339:                                              ; preds = %338, %320
  br label %371

340:                                              ; preds = %281
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @AX25_COND_REJECT, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %352 = call i32 @ax25_std_enquiry_response(%struct.TYPE_19__* %351)
  br label %353

353:                                              ; preds = %350, %347
  br label %370

354:                                              ; preds = %340
  %355 = load i32, i32* @AX25_COND_REJECT, align 4
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  %360 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* @AX25_RESPONSE, align 4
  %363 = call i32 @ax25_send_control(%struct.TYPE_19__* %360, i32 132, i32 %361, i32 %362)
  %364 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %354, %353
  br label %371

371:                                              ; preds = %370, %339
  br label %379

372:                                              ; preds = %7, %7
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %374 = call i32 @ax25_std_establish_data_link(%struct.TYPE_19__* %373)
  %375 = load i8*, i8** @AX25_STATE_1, align 8
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 3
  store i8* %375, i8** %377, align 8
  br label %379

378:                                              ; preds = %7
  br label %379

379:                                              ; preds = %378, %372, %371, %280, %258, %252, %224, %174, %148, %85, %77, %48
  %380 = load i32, i32* %15, align 4
  ret i32 %380
}

declare dso_local i32 @ax25_send_control(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_stop_t2timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_requeue_frames(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ax25_validate_nr(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ax25_frames_acked(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ax25_std_nr_error_recovery(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_std_enquiry_response(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_rx_iframe(%struct.TYPE_19__*, %struct.sk_buff*) #1

declare dso_local i32 @ax25_start_t2timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ax25_std_establish_data_link(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
