; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }
%struct.atm_vcc = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.sockaddr_atmsvc }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"svc_connect %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@AF_ATMSVC = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ATM_ANYCLASS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@as_connect = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"*ABORT*\0A\00", align 1
@as_close = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @svc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sockaddr_atmsvc*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %18)
  store %struct.atm_vcc* %19, %struct.atm_vcc** %11, align 8
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %20)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %298

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %34 [
    i32 130, label %37
    i32 129, label %40
    i32 128, label %62
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %298

37:                                               ; preds = %30
  %38 = load i32, i32* @EISCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %298

40:                                               ; preds = %30
  %41 = load i32, i32* @ATM_VF_WAITING, align 4
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %43 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %42, i32 0, i32 4
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EALREADY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %298

49:                                               ; preds = %40
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  store i32 128, i32* %51, align 8
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.sock*, %struct.sock** %9, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %298

61:                                               ; preds = %49
  br label %262

62:                                               ; preds = %30
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = bitcast %struct.sockaddr* %63 to %struct.sockaddr_atmsvc*
  store %struct.sockaddr_atmsvc* %64, %struct.sockaddr_atmsvc** %10, align 8
  %65 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AF_ATMSVC, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EAFNOSUPPORT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %298

73:                                               ; preds = %62
  %74 = load i32, i32* @ATM_VF_HASQOS, align 4
  %75 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %76 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %75, i32 0, i32 4
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EBADFD, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %298

82:                                               ; preds = %73
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATM_ANYCLASS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %92 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATM_ANYCLASS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %82
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %298

101:                                              ; preds = %90
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %103 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %110 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %298

118:                                              ; preds = %108, %101
  %119 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %120 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %119, i32 0, i32 5
  %121 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %10, align 8
  %122 = bitcast %struct.sockaddr_atmsvc* %120 to i8*
  %123 = bitcast %struct.sockaddr_atmsvc* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i32, i32* @ATM_VF_WAITING, align 4
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %126 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %125, i32 0, i32 4
  %127 = call i32 @set_bit(i32 %124, i32* %126)
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %132 = call i32 @prepare_to_wait(i32 %130, i32* @wait, i32 %131)
  %133 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %134 = load i32, i32* @as_connect, align 4
  %135 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %136 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %135, i32 0, i32 5
  %137 = call i32 @sigd_enq(%struct.atm_vcc* %133, i32 %134, i32* null, i32* null, %struct.sockaddr_atmsvc* %136)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @O_NONBLOCK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %118
  %143 = load %struct.sock*, %struct.sock** %9, align 8
  %144 = getelementptr inbounds %struct.sock, %struct.sock* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @finish_wait(i32 %145, i32* @wait)
  %147 = load %struct.socket*, %struct.socket** %5, align 8
  %148 = getelementptr inbounds %struct.socket, %struct.socket* %147, i32 0, i32 0
  store i32 129, i32* %148, align 8
  %149 = load i32, i32* @EINPROGRESS, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %298

151:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %168, %151
  %153 = load i32, i32* @ATM_VF_WAITING, align 4
  %154 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %155 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %154, i32 0, i32 4
  %156 = call i32 @test_bit(i32 %153, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* @sigd, align 4
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %158, %152
  %162 = phi i1 [ false, %152 ], [ %160, %158 ]
  br i1 %162, label %163, label %237

163:                                              ; preds = %161
  %164 = call i32 (...) @schedule()
  %165 = load i32, i32* @current, align 4
  %166 = call i32 @signal_pending(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load %struct.sock*, %struct.sock** %9, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %173 = call i32 @prepare_to_wait(i32 %171, i32* @wait, i32 %172)
  br label %152

174:                                              ; preds = %163
  %175 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %176 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %177 = load i32, i32* @as_close, align 4
  %178 = call i32 @sigd_enq(%struct.atm_vcc* %176, i32 %177, i32* null, i32* null, %struct.sockaddr_atmsvc* null)
  br label %179

179:                                              ; preds = %190, %174
  %180 = load i32, i32* @ATM_VF_WAITING, align 4
  %181 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %182 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %181, i32 0, i32 4
  %183 = call i32 @test_bit(i32 %180, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* @sigd, align 4
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %185, %179
  %189 = phi i1 [ false, %179 ], [ %187, %185 ]
  br i1 %189, label %190, label %197

190:                                              ; preds = %188
  %191 = load %struct.sock*, %struct.sock** %9, align 8
  %192 = getelementptr inbounds %struct.sock, %struct.sock* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %195 = call i32 @prepare_to_wait(i32 %193, i32* @wait, i32 %194)
  %196 = call i32 (...) @schedule()
  br label %179

197:                                              ; preds = %188
  %198 = load %struct.sock*, %struct.sock** %9, align 8
  %199 = getelementptr inbounds %struct.sock, %struct.sock* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %222, label %202

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %214, %202
  %204 = load i32, i32* @ATM_VF_RELEASED, align 4
  %205 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %206 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %205, i32 0, i32 4
  %207 = call i32 @test_bit(i32 %204, i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = load i32, i32* @sigd, align 4
  %211 = icmp ne i32 %210, 0
  br label %212

212:                                              ; preds = %209, %203
  %213 = phi i1 [ false, %203 ], [ %211, %209 ]
  br i1 %213, label %214, label %221

214:                                              ; preds = %212
  %215 = load %struct.sock*, %struct.sock** %9, align 8
  %216 = getelementptr inbounds %struct.sock, %struct.sock* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %219 = call i32 @prepare_to_wait(i32 %217, i32* @wait, i32 %218)
  %220 = call i32 (...) @schedule()
  br label %203

221:                                              ; preds = %212
  br label %222

222:                                              ; preds = %221, %197
  %223 = load i32, i32* @ATM_VF_REGIS, align 4
  %224 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %225 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %224, i32 0, i32 4
  %226 = call i32 @clear_bit(i32 %223, i32* %225)
  %227 = load i32, i32* @ATM_VF_RELEASED, align 4
  %228 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %229 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %228, i32 0, i32 4
  %230 = call i32 @clear_bit(i32 %227, i32* %229)
  %231 = load i32, i32* @ATM_VF_CLOSE, align 4
  %232 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %233 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %232, i32 0, i32 4
  %234 = call i32 @clear_bit(i32 %231, i32* %233)
  %235 = load i32, i32* @EINTR, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %222, %161
  %238 = load %struct.sock*, %struct.sock** %9, align 8
  %239 = getelementptr inbounds %struct.sock, %struct.sock* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @finish_wait(i32 %240, i32* @wait)
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %298

245:                                              ; preds = %237
  %246 = load i32, i32* @sigd, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* @EUNATCH, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %12, align 4
  br label %298

251:                                              ; preds = %245
  %252 = load %struct.sock*, %struct.sock** %9, align 8
  %253 = getelementptr inbounds %struct.sock, %struct.sock* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.sock*, %struct.sock** %9, align 8
  %258 = getelementptr inbounds %struct.sock, %struct.sock* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %12, align 4
  br label %298

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %61
  %263 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %264 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = call i32 @SELECT_TOP_PCR(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %265)
  %267 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %268 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  store i32 %266, i32* %270, align 8
  %271 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %272 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  store i64 0, i64* %274, align 8
  %275 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %276 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  store i64 0, i64* %278, align 8
  %279 = load %struct.socket*, %struct.socket** %5, align 8
  %280 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %281 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %284 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %287 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @vcc_connect(%struct.socket* %279, i32 %282, i32 %285, i32 %288)
  store i32 %289, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %262
  %292 = load %struct.socket*, %struct.socket** %5, align 8
  %293 = getelementptr inbounds %struct.socket, %struct.socket* %292, i32 0, i32 0
  store i32 130, i32* %293, align 8
  br label %297

294:                                              ; preds = %262
  %295 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %296 = call i32 @svc_disconnect(%struct.atm_vcc* %295)
  br label %297

297:                                              ; preds = %294, %291
  br label %298

298:                                              ; preds = %297, %256, %248, %244, %142, %115, %98, %79, %70, %56, %46, %37, %34, %27
  %299 = load %struct.sock*, %struct.sock** %9, align 8
  %300 = call i32 @release_sock(%struct.sock* %299)
  %301 = load i32, i32* %12, align 4
  ret i32 %301
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, %struct.sockaddr_atmsvc*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @SELECT_TOP_PCR(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @vcc_connect(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @svc_disconnect(%struct.atm_vcc*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
