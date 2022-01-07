; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.gred_sched_data = type { i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.gred_sched = type { i64, i64, %struct.gred_sched_data** }
%struct.TYPE_11__ = type { i64 }

@GRED_VQ_MASK = common dso_local global i64 0, align 8
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @gred_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.gred_sched_data*, align 8
  %7 = alloca %struct.gred_sched*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  store %struct.gred_sched_data* null, %struct.gred_sched_data** %6, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.gred_sched* %12, %struct.gred_sched** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @tc_index_to_dp(%struct.sk_buff* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %17 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %22 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %21, i32 0, i32 2
  %23 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %23, i64 %24
  %26 = load %struct.gred_sched_data*, %struct.gred_sched_data** %25, align 8
  store %struct.gred_sched_data* %26, %struct.gred_sched_data** %6, align 8
  %27 = icmp eq %struct.gred_sched_data* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %20, %2
  %29 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %30 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %33 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %32, i32 0, i32 2
  %34 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %34, i64 %35
  %37 = load %struct.gred_sched_data*, %struct.gred_sched_data** %36, align 8
  store %struct.gred_sched_data* %37, %struct.gred_sched_data** %6, align 8
  %38 = icmp eq %struct.gred_sched_data* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 1
  %42 = call i64 @skb_queue_len(i32* %41)
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = call %struct.TYPE_11__* @qdisc_dev(%struct.Qdisc* %43)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %51 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %49, %struct.Qdisc* %50)
  store i32 %51, i32* %3, align 4
  br label %280

52:                                               ; preds = %39
  br label %271

53:                                               ; preds = %28
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GRED_VQ_MASK, align 8
  %58 = xor i64 %57, -1
  %59 = and i64 %56, %58
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %59, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %20
  %65 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %66 = call i64 @gred_wred_mode(%struct.gred_sched* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %132, label %68

68:                                               ; preds = %64
  %69 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %70 = call i64 @gred_rio_mode(%struct.gred_sched* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %128, %72
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %77 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %73
  %81 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %82 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %81, i32 0, i32 2
  %83 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %83, i64 %85
  %87 = load %struct.gred_sched_data*, %struct.gred_sched_data** %86, align 8
  %88 = icmp ne %struct.gred_sched_data* %87, null
  br i1 %88, label %89, label %127

89:                                               ; preds = %80
  %90 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %91 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %90, i32 0, i32 2
  %92 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %92, i64 %94
  %96 = load %struct.gred_sched_data*, %struct.gred_sched_data** %95, align 8
  %97 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %100 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %89
  %104 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %105 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %104, i32 0, i32 2
  %106 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %106, i64 %108
  %110 = load %struct.gred_sched_data*, %struct.gred_sched_data** %109, align 8
  %111 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %110, i32 0, i32 4
  %112 = call i64 @red_is_idling(%struct.TYPE_10__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %103
  %115 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %116 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %115, i32 0, i32 2
  %117 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %117, i64 %119
  %121 = load %struct.gred_sched_data*, %struct.gred_sched_data** %120, align 8
  %122 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %114, %103, %89, %80
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %73

131:                                              ; preds = %73
  br label %132

132:                                              ; preds = %131, %68, %64
  %133 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %134 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = call i64 @qdisc_pkt_len(%struct.sk_buff* %137)
  %139 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %140 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  %145 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %146 = call i64 @gred_wred_mode(%struct.gred_sched* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %132
  %149 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %150 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %151 = call i32 @gred_load_wred_set(%struct.gred_sched* %149, %struct.gred_sched_data* %150)
  br label %152

152:                                              ; preds = %148, %132
  %153 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %154 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %153, i32 0, i32 4
  %155 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %156 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %157 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %158 = call i32 @gred_backlog(%struct.gred_sched* %155, %struct.gred_sched_data* %156, %struct.Qdisc* %157)
  %159 = call i64 @red_calc_qavg(%struct.TYPE_10__* %154, i32 %158)
  %160 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %161 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %164 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %163, i32 0, i32 4
  %165 = call i64 @red_is_idling(%struct.TYPE_10__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %152
  %168 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %169 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %168, i32 0, i32 4
  %170 = call i32 @red_end_of_idle_period(%struct.TYPE_10__* %169)
  br label %171

171:                                              ; preds = %167, %152
  %172 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %173 = call i64 @gred_wred_mode(%struct.gred_sched* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %177 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %178 = call i32 @gred_store_wred_set(%struct.gred_sched* %176, %struct.gred_sched_data* %177)
  br label %179

179:                                              ; preds = %175, %171
  %180 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %181 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %180, i32 0, i32 4
  %182 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %183 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = add i64 %185, %186
  %188 = call i32 @red_action(%struct.TYPE_10__* %181, i64 %187)
  switch i32 %188, label %244 [
    i32 130, label %189
    i32 128, label %190
    i32 129, label %215
  ]

189:                                              ; preds = %179
  br label %244

190:                                              ; preds = %179
  %191 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %192 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %197 = call i32 @gred_use_ecn(%struct.gred_sched* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %199, %190
  %204 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %205 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %275

209:                                              ; preds = %199
  %210 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %211 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %244

215:                                              ; preds = %179
  %216 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %217 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %222 = call i32 @gred_use_harddrop(%struct.gred_sched* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %215
  %225 = load %struct.gred_sched*, %struct.gred_sched** %7, align 8
  %226 = call i32 @gred_use_ecn(%struct.gred_sched* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %228, %224, %215
  %233 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %234 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  br label %275

238:                                              ; preds = %228
  %239 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %240 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %179, %238, %209, %189
  %245 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %246 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %249 = call i64 @qdisc_pkt_len(%struct.sk_buff* %248)
  %250 = add nsw i64 %247, %249
  %251 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %252 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp sle i64 %250, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %244
  %256 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %257 = call i64 @qdisc_pkt_len(%struct.sk_buff* %256)
  %258 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %259 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %257
  store i64 %261, i64* %259, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %264 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %262, %struct.Qdisc* %263)
  store i32 %264, i32* %3, align 4
  br label %280

265:                                              ; preds = %244
  %266 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %267 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %265, %52
  %272 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %273 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %274 = call i32 @qdisc_drop(%struct.sk_buff* %272, %struct.Qdisc* %273)
  store i32 %274, i32* %3, align 4
  br label %280

275:                                              ; preds = %232, %203
  %276 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %277 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %278 = call i32 @qdisc_drop(%struct.sk_buff* %276, %struct.Qdisc* %277)
  %279 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %275, %271, %255, %48
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @tc_index_to_dp(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.TYPE_11__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @gred_wred_mode(%struct.gred_sched*) #1

declare dso_local i64 @gred_rio_mode(%struct.gred_sched*) #1

declare dso_local i64 @red_is_idling(%struct.TYPE_10__*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @gred_load_wred_set(%struct.gred_sched*, %struct.gred_sched_data*) #1

declare dso_local i64 @red_calc_qavg(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gred_backlog(%struct.gred_sched*, %struct.gred_sched_data*, %struct.Qdisc*) #1

declare dso_local i32 @red_end_of_idle_period(%struct.TYPE_10__*) #1

declare dso_local i32 @gred_store_wred_set(%struct.gred_sched*, %struct.gred_sched_data*) #1

declare dso_local i32 @red_action(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @gred_use_ecn(%struct.gred_sched*) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @gred_use_harddrop(%struct.gred_sched*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
