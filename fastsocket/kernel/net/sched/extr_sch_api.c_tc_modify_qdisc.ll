; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_modify_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_modify_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.tcmsg = type { i64, i64, i32 }
%struct.net_device = type { %struct.netdev_queue, %struct.Qdisc* }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.Qdisc = type { i64, %struct.netdev_queue*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@TC_H_INGRESS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @tc_modify_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_modify_qdisc(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.Qdisc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.netdev_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  %23 = load i32, i32* @TCA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = icmp ne %struct.net* %28, @init_net
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %391, %33
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %35)
  store %struct.tcmsg* %36, %struct.tcmsg** %9, align 8
  %37 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %38 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %15, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  %40 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %41 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.net_device* @__dev_get_by_index(%struct.net* @init_net, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %12, align 8
  %44 = icmp eq %struct.net_device* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

48:                                               ; preds = %34
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = load i32, i32* @TCA_MAX, align 4
  %51 = call i32 @nlmsg_parse(%struct.nlmsghdr* %49, i32 24, %struct.nlattr** %27, i32 %50, i32* null)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

56:                                               ; preds = %48
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %243

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @TC_H_ROOT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @TC_H_INGRESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @TC_H_MAJ(i64 %69)
  %71 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %68, i64 %70)
  store %struct.Qdisc* %71, %struct.Qdisc** %15, align 8
  %72 = icmp eq %struct.Qdisc* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

76:                                               ; preds = %67
  %77 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %77, i64 %78)
  store %struct.Qdisc* %79, %struct.Qdisc** %14, align 8
  br label %85

80:                                               ; preds = %63
  %81 = load %struct.net_device*, %struct.net_device** %12, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %82, i32 0, i32 0
  %84 = load %struct.Qdisc*, %struct.Qdisc** %83, align 8
  store %struct.Qdisc* %84, %struct.Qdisc** %14, align 8
  br label %85

85:                                               ; preds = %80, %76
  br label %90

86:                                               ; preds = %59
  %87 = load %struct.net_device*, %struct.net_device** %12, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load %struct.Qdisc*, %struct.Qdisc** %88, align 8
  store %struct.Qdisc* %89, %struct.Qdisc** %14, align 8
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %92 = icmp ne %struct.Qdisc* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %95 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  br label %99

99:                                               ; preds = %98, %93, %90
  %100 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %101 = icmp ne %struct.Qdisc* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %104 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %109 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %112 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %242

115:                                              ; preds = %107, %102, %99
  %116 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %117 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %198

120:                                              ; preds = %115
  %121 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %122 = icmp ne %struct.Qdisc* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %125 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @NLM_F_REPLACE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @EEXIST, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

133:                                              ; preds = %123, %120
  %134 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %135 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @TC_H_MIN(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

142:                                              ; preds = %133
  %143 = load %struct.net_device*, %struct.net_device** %12, align 8
  %144 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %145 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %143, i64 %146)
  store %struct.Qdisc* %147, %struct.Qdisc** %14, align 8
  %148 = icmp eq %struct.Qdisc* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %305

150:                                              ; preds = %142
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %152 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @NLM_F_EXCL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32, i32* @EEXIST, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

160:                                              ; preds = %150
  %161 = load i64, i64* @TCA_KIND, align 8
  %162 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %161
  %163 = load %struct.nlattr*, %struct.nlattr** %162, align 8
  %164 = icmp ne %struct.nlattr* %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load i64, i64* @TCA_KIND, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %170 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @nla_strcmp(%struct.nlattr* %168, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

179:                                              ; preds = %165, %160
  %180 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %181 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %182 = icmp eq %struct.Qdisc* %180, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %185 = icmp ne %struct.Qdisc* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %188 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %189 = call i64 @check_loop(%struct.Qdisc* %187, %struct.Qdisc* %188, i32 0)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186, %179
  %192 = load i32, i32* @ELOOP, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

194:                                              ; preds = %186, %183
  %195 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %196 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %195, i32 0, i32 3
  %197 = call i32 @atomic_inc(i32* %196)
  br label %395

198:                                              ; preds = %115
  %199 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %200 = icmp eq %struct.Qdisc* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %305

202:                                              ; preds = %198
  %203 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %204 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @NLM_F_CREATE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %202
  %210 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %211 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @NLM_F_REPLACE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %209
  %217 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %218 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @NLM_F_EXCL, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %216
  %224 = load i64, i64* @TCA_KIND, align 8
  %225 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %224
  %226 = load %struct.nlattr*, %struct.nlattr** %225, align 8
  %227 = icmp ne %struct.nlattr* %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load i64, i64* @TCA_KIND, align 8
  %230 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %229
  %231 = load %struct.nlattr*, %struct.nlattr** %230, align 8
  %232 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %233 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %232, i32 0, i32 2
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @nla_strcmp(%struct.nlattr* %231, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %228, %216
  br label %305

240:                                              ; preds = %228, %223, %209, %202
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241, %107
  br label %257

243:                                              ; preds = %56
  %244 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %245 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

251:                                              ; preds = %243
  %252 = load %struct.net_device*, %struct.net_device** %12, align 8
  %253 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %254 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %252, i64 %255)
  store %struct.Qdisc* %256, %struct.Qdisc** %14, align 8
  br label %257

257:                                              ; preds = %251, %242
  %258 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %259 = icmp eq %struct.Qdisc* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* @ENOENT, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

263:                                              ; preds = %257
  %264 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %265 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @NLM_F_EXCL, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  %271 = load i32, i32* @EEXIST, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

273:                                              ; preds = %263
  %274 = load i64, i64* @TCA_KIND, align 8
  %275 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %274
  %276 = load %struct.nlattr*, %struct.nlattr** %275, align 8
  %277 = icmp ne %struct.nlattr* %276, null
  br i1 %277, label %278, label %292

278:                                              ; preds = %273
  %279 = load i64, i64* @TCA_KIND, align 8
  %280 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %279
  %281 = load %struct.nlattr*, %struct.nlattr** %280, align 8
  %282 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %283 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %282, i32 0, i32 2
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @nla_strcmp(%struct.nlattr* %281, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %278
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

292:                                              ; preds = %278, %273
  %293 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %294 = call i32 @qdisc_change(%struct.Qdisc* %293, %struct.nlattr** %27)
  store i32 %294, i32* %16, align 4
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %299 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %300 = load i64, i64* %13, align 8
  %301 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %302 = call i32 @qdisc_notify(%struct.sk_buff* %298, %struct.nlmsghdr* %299, i64 %300, i32* null, %struct.Qdisc* %301)
  br label %303

303:                                              ; preds = %297, %292
  %304 = load i32, i32* %16, align 4
  store i32 %304, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

305:                                              ; preds = %239, %201, %149
  %306 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %307 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @NLM_F_CREATE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %305
  %313 = load i32, i32* @ENOENT, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

315:                                              ; preds = %305
  %316 = load i64, i64* %13, align 8
  %317 = load i64, i64* @TC_H_INGRESS, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %315
  %320 = load %struct.net_device*, %struct.net_device** %12, align 8
  %321 = load %struct.net_device*, %struct.net_device** %12, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 0
  %323 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %324 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %325 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %328 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call %struct.Qdisc* @qdisc_create(%struct.net_device* %320, %struct.netdev_queue* %322, %struct.Qdisc* %323, i64 %326, i64 %329, %struct.nlattr** %27, i32* %16)
  store %struct.Qdisc* %330, %struct.Qdisc** %14, align 8
  br label %383

331:                                              ; preds = %315
  %332 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %333 = icmp ne %struct.Qdisc* %332, null
  br i1 %333, label %334, label %361

334:                                              ; preds = %331
  %335 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %336 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %335, i32 0, i32 2
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %338, align 8
  %340 = icmp ne %struct.TYPE_3__* %339, null
  br i1 %340, label %341, label %361

341:                                              ; preds = %334
  %342 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %343 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %342, i32 0, i32 2
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)** %347, align 8
  %349 = icmp ne %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)* %348, null
  br i1 %349, label %350, label %361

350:                                              ; preds = %341
  %351 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %352 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %351, i32 0, i32 2
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 0
  %357 = load %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)** %356, align 8
  %358 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %359 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %360 = call %struct.netdev_queue* %357(%struct.Qdisc* %358, %struct.tcmsg* %359)
  store %struct.netdev_queue* %360, %struct.netdev_queue** %18, align 8
  br label %372

361:                                              ; preds = %341, %334, %331
  %362 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %363 = icmp ne %struct.Qdisc* %362, null
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %366 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %365, i32 0, i32 1
  %367 = load %struct.netdev_queue*, %struct.netdev_queue** %366, align 8
  store %struct.netdev_queue* %367, %struct.netdev_queue** %18, align 8
  br label %371

368:                                              ; preds = %361
  %369 = load %struct.net_device*, %struct.net_device** %12, align 8
  %370 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %369, i32 0)
  store %struct.netdev_queue* %370, %struct.netdev_queue** %18, align 8
  br label %371

371:                                              ; preds = %368, %364
  br label %372

372:                                              ; preds = %371, %350
  %373 = load %struct.net_device*, %struct.net_device** %12, align 8
  %374 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %375 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %376 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %377 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %380 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = call %struct.Qdisc* @qdisc_create(%struct.net_device* %373, %struct.netdev_queue* %374, %struct.Qdisc* %375, i64 %378, i64 %381, %struct.nlattr** %27, i32* %16)
  store %struct.Qdisc* %382, %struct.Qdisc** %14, align 8
  br label %383

383:                                              ; preds = %372, %319
  %384 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %385 = icmp eq %struct.Qdisc* %384, null
  br i1 %385, label %386, label %394

386:                                              ; preds = %383
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* @EAGAIN, align 4
  %389 = sub nsw i32 0, %388
  %390 = icmp eq i32 %387, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  br label %34

392:                                              ; preds = %386
  %393 = load i32, i32* %16, align 4
  store i32 %393, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

394:                                              ; preds = %383
  br label %395

395:                                              ; preds = %394, %194
  %396 = load %struct.net_device*, %struct.net_device** %12, align 8
  %397 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %398 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %399 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %400 = load i64, i64* %13, align 8
  %401 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %402 = call i32 @qdisc_graft(%struct.net_device* %396, %struct.Qdisc* %397, %struct.sk_buff* %398, %struct.nlmsghdr* %399, i64 %400, %struct.Qdisc* %401, i32* null)
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %16, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %413

405:                                              ; preds = %395
  %406 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %407 = icmp ne %struct.Qdisc* %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %410 = call i32 @qdisc_destroy(%struct.Qdisc* %409)
  br label %411

411:                                              ; preds = %408, %405
  %412 = load i32, i32* %16, align 4
  store i32 %412, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

413:                                              ; preds = %395
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %414

414:                                              ; preds = %413, %411, %392, %312, %303, %289, %270, %260, %248, %191, %176, %157, %139, %130, %73, %54, %45, %30
  %415 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %415)
  %416 = load i32, i32* %4, align 4
  ret i32 %416
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.Qdisc* @qdisc_leaf(%struct.Qdisc*, i64) #1

declare dso_local i64 @TC_H_MIN(i64) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i64 @check_loop(%struct.Qdisc*, %struct.Qdisc*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @qdisc_change(%struct.Qdisc*, %struct.nlattr**) #1

declare dso_local i32 @qdisc_notify(%struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_create(%struct.net_device*, %struct.netdev_queue*, %struct.Qdisc*, i64, i64, %struct.nlattr**, i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @qdisc_graft(%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i64, %struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
