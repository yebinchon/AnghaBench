; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___sched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___sched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i64, i32, i32, %struct.sched_class*, %struct.TYPE_10__, %struct.TYPE_8__*, i64 }
%struct.sched_class = type { i32 (%struct.rq*)*, i32 (%struct.rq.0*, %struct.task_struct*)* }
%struct.rq = type opaque
%struct.rq.0 = type opaque
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sched_param = type { i64 }
%struct.rq.1 = type { %struct.task_struct* }

@SCHED_RESET_ON_FORK = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i32 0, align 4
@SCHED_BATCH = common dso_local global i32 0, align 4
@SCHED_IDLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_USER_RT_PRIO = common dso_local global i32 0, align 4
@MAX_RT_PRIO = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@RLIMIT_RTPRIO = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, %struct.sched_param*, i32)* @__sched_setscheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sched_setscheduler(%struct.task_struct* %0, i32 %1, %struct.sched_param* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sched_class*, align 8
  %17 = alloca %struct.rq.1*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sched_param* %2, %struct.sched_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  %20 = call i32 (...) @in_interrupt()
  %21 = call i32 @BUG_ON(i32 %20)
  br label %22

22:                                               ; preds = %252, %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store i32 %31, i32* %7, align 4
  br label %67

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SCHED_RESET_ON_FORK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* @SCHED_RESET_ON_FORK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SCHED_FIFO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SCHED_RR, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SCHED_NORMAL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SCHED_BATCH, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SCHED_IDLE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %336

66:                                               ; preds = %59, %55, %51, %47, %32
  br label %67

67:                                               ; preds = %66, %25
  %68 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %69 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %67
  %73 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %79 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @MAX_USER_RT_PRIO, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %98, label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %92 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @MAX_RT_PRIO, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %77, %67
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %336

101:                                              ; preds = %90, %85
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @rt_policy(i32 %102)
  %104 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %105 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = icmp ne i32 %103, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %336

113:                                              ; preds = %101
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %204

116:                                              ; preds = %113
  %117 = load i32, i32* @CAP_SYS_NICE, align 4
  %118 = call i32 @capable(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %204, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @rt_policy(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %120
  %125 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %126 = call i32 @lock_task_sighand(%struct.task_struct* %125, i64* %15)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @ESRCH, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %336

131:                                              ; preds = %124
  %132 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 7
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i64, i64* @RLIMIT_RTPRIO, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %19, align 8
  %141 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %142 = call i32 @unlock_task_sighand(%struct.task_struct* %141, i64* %15)
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %145 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %131
  %149 = load i64, i64* %19, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @EPERM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %336

154:                                              ; preds = %148, %131
  %155 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %156 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %159 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %164 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %19, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* @EPERM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  br label %336

171:                                              ; preds = %162, %154
  br label %172

172:                                              ; preds = %171, %120
  %173 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %174 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SCHED_IDLE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @SCHED_IDLE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* @EPERM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  br label %336

185:                                              ; preds = %178, %172
  %186 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %187 = call i32 @check_same_owner(%struct.task_struct* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @EPERM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %5, align 4
  br label %336

192:                                              ; preds = %185
  %193 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %194 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @EPERM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %5, align 4
  br label %336

203:                                              ; preds = %197, %192
  br label %204

204:                                              ; preds = %203, %116, %113
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %211 = call i32 @security_task_setscheduler(%struct.task_struct* %208, i32 %209, %struct.sched_param* %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %5, align 4
  br label %336

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216, %204
  %218 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %219 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %218, i32 0, i32 4
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @spin_lock_irqsave(i32* %219, i64 %220)
  %222 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %223 = call %struct.rq.1* @__task_rq_lock(%struct.task_struct* %222)
  store %struct.rq.1* %223, %struct.rq.1** %17, align 8
  %224 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %225 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %226 = getelementptr inbounds %struct.rq.1, %struct.rq.1* %225, i32 0, i32 0
  %227 = load %struct.task_struct*, %struct.task_struct** %226, align 8
  %228 = icmp eq %struct.task_struct* %224, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %217
  %230 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %231 = call i32 @__task_rq_unlock(%struct.rq.1* %230)
  %232 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %233 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %232, i32 0, i32 4
  %234 = load i64, i64* %15, align 8
  %235 = call i32 @spin_unlock_irqrestore(i32* %233, i64 %234)
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %5, align 4
  br label %336

238:                                              ; preds = %217
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, -1
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %244 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %242, %245
  br label %247

247:                                              ; preds = %241, %238
  %248 = phi i1 [ false, %238 ], [ %246, %241 ]
  %249 = zext i1 %248 to i32
  %250 = call i64 @unlikely(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %7, align 4
  %253 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %254 = call i32 @__task_rq_unlock(%struct.rq.1* %253)
  %255 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %256 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %255, i32 0, i32 4
  %257 = load i64, i64* %15, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* %256, i64 %257)
  br label %22

259:                                              ; preds = %247
  %260 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %261 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %13, align 4
  %264 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %265 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %266 = call i32 @task_current(%struct.rq.1* %264, %struct.task_struct* %265)
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %271 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %272 = call i32 @deactivate_task(%struct.rq.1* %270, %struct.task_struct* %271, i32 0)
  br label %273

273:                                              ; preds = %269, %259
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %278 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %277, i32 0, i32 5
  %279 = load %struct.sched_class*, %struct.sched_class** %278, align 8
  %280 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %279, i32 0, i32 1
  %281 = load i32 (%struct.rq.0*, %struct.task_struct*)*, i32 (%struct.rq.0*, %struct.task_struct*)** %280, align 8
  %282 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %283 = bitcast %struct.rq.1* %282 to %struct.rq.0*
  %284 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %285 = call i32 %281(%struct.rq.0* %283, %struct.task_struct* %284)
  br label %286

286:                                              ; preds = %276, %273
  %287 = load i32, i32* %18, align 4
  %288 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %289 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  %290 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %291 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  store i32 %292, i32* %11, align 4
  %293 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %294 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %293, i32 0, i32 5
  %295 = load %struct.sched_class*, %struct.sched_class** %294, align 8
  store %struct.sched_class* %295, %struct.sched_class** %16, align 8
  %296 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %297 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %300 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @__setscheduler(%struct.rq.1* %296, %struct.task_struct* %297, i32 %298, i64 %301)
  %303 = load i32, i32* %14, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %286
  %306 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %307 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %306, i32 0, i32 5
  %308 = load %struct.sched_class*, %struct.sched_class** %307, align 8
  %309 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %308, i32 0, i32 0
  %310 = load i32 (%struct.rq*)*, i32 (%struct.rq*)** %309, align 8
  %311 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %312 = bitcast %struct.rq.1* %311 to %struct.rq*
  %313 = call i32 %310(%struct.rq* %312)
  br label %314

314:                                              ; preds = %305, %286
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %319 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %320 = call i32 @activate_task(%struct.rq.1* %318, %struct.task_struct* %319, i32 0)
  %321 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %322 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %323 = load %struct.sched_class*, %struct.sched_class** %16, align 8
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* %14, align 4
  %326 = call i32 @check_class_changed(%struct.rq.1* %321, %struct.task_struct* %322, %struct.sched_class* %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %317, %314
  %328 = load %struct.rq.1*, %struct.rq.1** %17, align 8
  %329 = call i32 @__task_rq_unlock(%struct.rq.1* %328)
  %330 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %331 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %330, i32 0, i32 4
  %332 = load i64, i64* %15, align 8
  %333 = call i32 @spin_unlock_irqrestore(i32* %331, i64 %332)
  %334 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %335 = call i32 @rt_mutex_adjust_pi(%struct.task_struct* %334)
  store i32 0, i32* %5, align 4
  br label %336

336:                                              ; preds = %327, %229, %214, %200, %189, %182, %168, %151, %128, %110, %98, %63
  %337 = load i32, i32* %5, align 4
  ret i32 %337
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @rt_policy(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @check_same_owner(%struct.task_struct*) #1

declare dso_local i32 @security_task_setscheduler(%struct.task_struct*, i32, %struct.sched_param*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rq.1* @__task_rq_lock(%struct.task_struct*) #1

declare dso_local i32 @__task_rq_unlock(%struct.rq.1*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_current(%struct.rq.1*, %struct.task_struct*) #1

declare dso_local i32 @deactivate_task(%struct.rq.1*, %struct.task_struct*, i32) #1

declare dso_local i32 @__setscheduler(%struct.rq.1*, %struct.task_struct*, i32, i64) #1

declare dso_local i32 @activate_task(%struct.rq.1*, %struct.task_struct*, i32) #1

declare dso_local i32 @check_class_changed(%struct.rq.1*, %struct.task_struct*, %struct.sched_class*, i32, i32) #1

declare dso_local i32 @rt_mutex_adjust_pi(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
