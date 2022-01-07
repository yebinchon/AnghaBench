; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.atmsvc_msg = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.atm_vcc = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"svc_accept %p -> %p\0A\00", align 1
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@as_reject = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@as_accept = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @svc_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_accept(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.atmsvc_msg*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %7, align 8
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %16)
  store %struct.atm_vcc* %17, %struct.atm_vcc** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call i32 @sock_net(%struct.sock* %20)
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = call i32 @svc_create(i32 %21, %struct.socket* %22, i32 0, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %255

27:                                               ; preds = %3
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %28)
  store %struct.atm_vcc* %29, %struct.atm_vcc** %11, align 8
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %30, %struct.atm_vcc* %31)
  br label %33

33:                                               ; preds = %27, %250
  %34 = load i32, i32* @wait, align 4
  %35 = call i32 @DEFINE_WAIT(i32 %34)
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %40 = call i32 @prepare_to_wait(i32 %38, i32* @wait, i32 %39)
  br label %41

41:                                               ; preds = %89, %33
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 3
  %44 = call %struct.sk_buff* @skb_dequeue(i32* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %8, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @sigd, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i1 [ false, %41 ], [ %48, %46 ]
  br i1 %50, label %51, label %95

51:                                               ; preds = %49
  %52 = load i32, i32* @ATM_VF_RELEASED, align 4
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %95

58:                                               ; preds = %51
  %59 = load i32, i32* @ATM_VF_CLOSE, align 4
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %61 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %95

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @O_NONBLOCK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %95

77:                                               ; preds = %69
  %78 = load %struct.sock*, %struct.sock** %7, align 8
  %79 = call i32 @release_sock(%struct.sock* %78)
  %80 = call i32 (...) @schedule()
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = call i32 @lock_sock(%struct.sock* %81)
  %83 = load i32, i32* @current, align 4
  %84 = call i64 @signal_pending(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ERESTARTSYS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %95

89:                                               ; preds = %77
  %90 = load %struct.sock*, %struct.sock** %7, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %94 = call i32 @prepare_to_wait(i32 %92, i32* @wait, i32 %93)
  br label %41

95:                                               ; preds = %86, %74, %64, %57, %49
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @finish_wait(i32 %98, i32* @wait)
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %255

103:                                              ; preds = %95
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EUNATCH, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  br label %255

109:                                              ; preds = %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.atmsvc_msg*
  store %struct.atmsvc_msg* %113, %struct.atmsvc_msg** %9, align 8
  %114 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %115 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %118 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @ATM_VF_HASQOS, align 4
  %120 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %121 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  %123 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %124 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %127 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %129 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %132 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %134 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %137 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.socket*, %struct.socket** %5, align 8
  %139 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %140 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %145 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %9, align 8
  %150 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @vcc_connect(%struct.socket* %138, i32 %143, i32 %148, i32 %153)
  store i32 %154, i32* %12, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 @dev_kfree_skb(%struct.sk_buff* %155)
  %157 = load %struct.sock*, %struct.sock** %7, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %109
  %164 = load i32, i32* @as_reject, align 4
  %165 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %166 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %167 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %166, i32 0, i32 1
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @sigd_enq2(i32* null, i32 %164, %struct.atm_vcc* %165, i32* null, i32* null, i32* %167, i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @EAGAIN, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load i32, i32* @EBUSY, align 4
  %176 = sub nsw i32 0, %175
  br label %179

177:                                              ; preds = %163
  %178 = load i32, i32* %12, align 4
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i32 [ %176, %174 ], [ %178, %177 ]
  store i32 %180, i32* %12, align 4
  br label %255

181:                                              ; preds = %109
  %182 = load i32, i32* @ATM_VF_WAITING, align 4
  %183 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %184 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %183, i32 0, i32 0
  %185 = call i32 @set_bit(i32 %182, i32* %184)
  %186 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %187 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %186)
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %191 = call i32 @prepare_to_wait(i32 %189, i32* @wait, i32 %190)
  %192 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %193 = load i32, i32* @as_accept, align 4
  %194 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %195 = call i32 @sigd_enq(%struct.atm_vcc* %192, i32 %193, %struct.atm_vcc* %194, i32* null, i32* null)
  br label %196

196:                                              ; preds = %207, %181
  %197 = load i32, i32* @ATM_VF_WAITING, align 4
  %198 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %199 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %198, i32 0, i32 0
  %200 = call i64 @test_bit(i32 %197, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i64, i64* @sigd, align 8
  %204 = icmp ne i64 %203, 0
  br label %205

205:                                              ; preds = %202, %196
  %206 = phi i1 [ false, %196 ], [ %204, %202 ]
  br i1 %206, label %207, label %219

207:                                              ; preds = %205
  %208 = load %struct.sock*, %struct.sock** %7, align 8
  %209 = call i32 @release_sock(%struct.sock* %208)
  %210 = call i32 (...) @schedule()
  %211 = load %struct.sock*, %struct.sock** %7, align 8
  %212 = call i32 @lock_sock(%struct.sock* %211)
  %213 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %214 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %213)
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %218 = call i32 @prepare_to_wait(i32 %216, i32* @wait, i32 %217)
  br label %196

219:                                              ; preds = %205
  %220 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %221 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %220)
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @finish_wait(i32 %223, i32* @wait)
  %225 = load i64, i64* @sigd, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %219
  %228 = load i32, i32* @EUNATCH, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %12, align 4
  br label %255

230:                                              ; preds = %219
  %231 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %232 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %231)
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  br label %251

237:                                              ; preds = %230
  %238 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %239 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %238)
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ERESTARTSYS, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %246 = call %struct.TYPE_6__* @sk_atm(%struct.atm_vcc* %245)
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %12, align 4
  br label %255

250:                                              ; preds = %237
  br label %33

251:                                              ; preds = %236
  %252 = load i32, i32* @SS_CONNECTED, align 4
  %253 = load %struct.socket*, %struct.socket** %5, align 8
  %254 = getelementptr inbounds %struct.socket, %struct.socket* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %244, %227, %179, %106, %102, %26
  %256 = load %struct.sock*, %struct.sock** %7, align 8
  %257 = call i32 @release_sock(%struct.sock* %256)
  %258 = load i32, i32* %12, align 4
  ret i32 %258
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @svc_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*, %struct.atm_vcc*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcc_connect(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sigd_enq2(i32*, i32, %struct.atm_vcc*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, %struct.atm_vcc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
