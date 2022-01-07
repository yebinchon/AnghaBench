; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tc_ctl_tfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tc_ctl_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tcmsg = type { i64, i64, i64, i32 }
%struct.net_device = type { %struct.Qdisc* }
%struct.Qdisc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)* }
%struct.tcf_proto = type { i64, i64, %struct.tcf_proto*, %struct.tcf_proto_ops*, i64, i32, %struct.Qdisc* }
%struct.tcf_proto_ops = type { i32 (%struct.tcf_proto.0*)*, i64 (%struct.tcf_proto.1*, i64)*, i32 (%struct.tcf_proto.2*, i64)*, i32 (%struct.tcf_proto.3*, i64, i64, %struct.nlattr.4**, i64*)*, i32, i32, i32 }
%struct.tcf_proto.0 = type opaque
%struct.tcf_proto.1 = type opaque
%struct.tcf_proto.2 = type opaque
%struct.tcf_proto.3 = type opaque
%struct.nlattr.4 = type opaque
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @tc_ctl_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_ctl_tfilter(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca %struct.tcf_proto**, align 8
  %20 = alloca %struct.tcf_proto**, align 8
  %21 = alloca %struct.tcf_proto*, align 8
  %22 = alloca %struct.tcf_proto_ops*, align 8
  %23 = alloca %struct.Qdisc_class_ops*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.net* @sock_net(i32 %31)
  store %struct.net* %32, %struct.net** %8, align 8
  %33 = load i32, i32* @TCA_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %9, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %10, align 8
  store i32 0, i32* %27, align 4
  %38 = load %struct.net*, %struct.net** %8, align 8
  %39 = icmp ne %struct.net* %38, @init_net
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %482, %43
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %46 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %45)
  store %struct.tcmsg* %46, %struct.tcmsg** %12, align 8
  %47 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %48 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @TC_H_MIN(i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %52 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @TC_H_MAJ(i64 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  store i64 %55, i64* %15, align 8
  %56 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %57 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  store i64 0, i64* %24, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %44
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %63 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 128
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %68 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NLM_F_CREATE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

76:                                               ; preds = %66
  %77 = call i64 @TC_H_MAKE(i32 -2147483648, i32 0)
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %76, %44
  %79 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %80 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.net_device* @__dev_get_by_index(%struct.net* @init_net, i32 %81)
  store %struct.net_device* %82, %struct.net_device** %17, align 8
  %83 = load %struct.net_device*, %struct.net_device** %17, align 8
  %84 = icmp eq %struct.net_device* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

88:                                               ; preds = %78
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %90 = load i32, i32* @TCA_MAX, align 4
  %91 = call i32 @nlmsg_parse(%struct.nlmsghdr* %89, i32 32, %struct.nlattr** %37, i32 %90, i32* null)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %26, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %26, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

96:                                               ; preds = %88
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %17, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load %struct.Qdisc*, %struct.Qdisc** %101, align 8
  store %struct.Qdisc* %102, %struct.Qdisc** %18, align 8
  %103 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %104 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %16, align 8
  br label %119

106:                                              ; preds = %96
  %107 = load %struct.net_device*, %struct.net_device** %17, align 8
  %108 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %109 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @TC_H_MAJ(i64 %110)
  %112 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %107, i64 %111)
  store %struct.Qdisc* %112, %struct.Qdisc** %18, align 8
  %113 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %114 = icmp eq %struct.Qdisc* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %121 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %123, align 8
  store %struct.Qdisc_class_ops* %124, %struct.Qdisc_class_ops** %23, align 8
  %125 = icmp eq %struct.Qdisc_class_ops* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

129:                                              ; preds = %119
  %130 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %23, align 8
  %131 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %130, i32 0, i32 2
  %132 = load %struct.tcf_proto** (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)** %131, align 8
  %133 = icmp eq %struct.tcf_proto** (%struct.Qdisc*, i64)* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EOPNOTSUPP, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

137:                                              ; preds = %129
  %138 = load i64, i64* %16, align 8
  %139 = call i64 @TC_H_MIN(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %23, align 8
  %143 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %142, i32 0, i32 0
  %144 = load i64 (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i64)** %143, align 8
  %145 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i64 %144(%struct.Qdisc* %145, i64 %146)
  store i64 %147, i64* %24, align 8
  %148 = load i64, i64* %24, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %137
  %155 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %23, align 8
  %156 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %155, i32 0, i32 2
  %157 = load %struct.tcf_proto** (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)** %156, align 8
  %158 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %159 = load i64, i64* %24, align 8
  %160 = call %struct.tcf_proto** %157(%struct.Qdisc* %158, i64 %159)
  store %struct.tcf_proto** %160, %struct.tcf_proto*** %20, align 8
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %26, align 4
  %163 = load %struct.tcf_proto**, %struct.tcf_proto*** %20, align 8
  %164 = icmp eq %struct.tcf_proto** %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %467

166:                                              ; preds = %154
  %167 = load %struct.tcf_proto**, %struct.tcf_proto*** %20, align 8
  store %struct.tcf_proto** %167, %struct.tcf_proto*** %19, align 8
  br label %168

168:                                              ; preds = %201, %166
  %169 = load %struct.tcf_proto**, %struct.tcf_proto*** %19, align 8
  %170 = load %struct.tcf_proto*, %struct.tcf_proto** %169, align 8
  store %struct.tcf_proto* %170, %struct.tcf_proto** %21, align 8
  %171 = icmp ne %struct.tcf_proto* %170, null
  br i1 %171, label %172, label %204

172:                                              ; preds = %168
  %173 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %174 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %14, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %172
  %179 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %180 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load i64, i64* %15, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %189 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i64, i64* %13, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193, %184
  br label %467

197:                                              ; preds = %193, %187
  br label %199

198:                                              ; preds = %178
  store %struct.tcf_proto* null, %struct.tcf_proto** %21, align 8
  br label %199

199:                                              ; preds = %198, %197
  br label %204

200:                                              ; preds = %172
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %203 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %202, i32 0, i32 2
  store %struct.tcf_proto** %203, %struct.tcf_proto*** %19, align 8
  br label %168

204:                                              ; preds = %199, %168
  %205 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %206 = call i32* @qdisc_root_sleeping_lock(%struct.Qdisc* %205)
  store i32* %206, i32** %11, align 8
  %207 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %208 = icmp eq %struct.tcf_proto* %207, null
  br i1 %208, label %209, label %299

209:                                              ; preds = %204
  %210 = load i64, i64* @TCA_KIND, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = icmp eq %struct.nlattr* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = load i64, i64* %13, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214, %209
  br label %467

218:                                              ; preds = %214
  %219 = load i32, i32* @ENOENT, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %26, align 4
  %221 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %222 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 128
  br i1 %224, label %232, label %225

225:                                              ; preds = %218
  %226 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %227 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @NLM_F_CREATE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %225, %218
  br label %467

233:                                              ; preds = %225
  %234 = load i32, i32* @ENOBUFS, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %26, align 4
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call %struct.tcf_proto* @kzalloc(i32 56, i32 %236)
  store %struct.tcf_proto* %237, %struct.tcf_proto** %21, align 8
  %238 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %239 = icmp eq %struct.tcf_proto* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  br label %467

241:                                              ; preds = %233
  %242 = load i32, i32* @ENOENT, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %26, align 4
  %244 = load i64, i64* @TCA_KIND, align 8
  %245 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %244
  %246 = load %struct.nlattr*, %struct.nlattr** %245, align 8
  %247 = call %struct.tcf_proto_ops* @tcf_proto_lookup_ops(%struct.nlattr* %246)
  store %struct.tcf_proto_ops* %247, %struct.tcf_proto_ops** %22, align 8
  %248 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %22, align 8
  %249 = icmp eq %struct.tcf_proto_ops* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %252 = call i32 @kfree(%struct.tcf_proto* %251)
  br label %467

253:                                              ; preds = %241
  %254 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %22, align 8
  %255 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %256 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %255, i32 0, i32 3
  store %struct.tcf_proto_ops* %254, %struct.tcf_proto_ops** %256, align 8
  %257 = load i64, i64* %13, align 8
  %258 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %259 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %258, i32 0, i32 1
  store i64 %257, i64* %259, align 8
  %260 = load i64, i64* %15, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %253
  br label %268

263:                                              ; preds = %253
  %264 = load %struct.tcf_proto**, %struct.tcf_proto*** %19, align 8
  %265 = load %struct.tcf_proto*, %struct.tcf_proto** %264, align 8
  %266 = call i64 @tcf_auto_prio(%struct.tcf_proto* %265)
  %267 = call i64 @TC_H_MAJ(i64 %266)
  br label %268

268:                                              ; preds = %263, %262
  %269 = phi i64 [ %260, %262 ], [ %267, %263 ]
  %270 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %271 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %273 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %274 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %273, i32 0, i32 6
  store %struct.Qdisc* %272, %struct.Qdisc** %274, align 8
  %275 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %22, align 8
  %276 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %279 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %278, i32 0, i32 5
  store i32 %277, i32* %279, align 8
  %280 = load i64, i64* %16, align 8
  %281 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %282 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %281, i32 0, i32 4
  store i64 %280, i64* %282, align 8
  %283 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %22, align 8
  %284 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %283, i32 0, i32 0
  %285 = load i32 (%struct.tcf_proto.0*)*, i32 (%struct.tcf_proto.0*)** %284, align 8
  %286 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %287 = bitcast %struct.tcf_proto* %286 to %struct.tcf_proto.0*
  %288 = call i32 %285(%struct.tcf_proto.0* %287)
  store i32 %288, i32* %26, align 4
  %289 = load i32, i32* %26, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %268
  %292 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %22, align 8
  %293 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @module_put(i32 %294)
  %296 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %297 = call i32 @kfree(%struct.tcf_proto* %296)
  br label %467

298:                                              ; preds = %268
  store i32 1, i32* %27, align 4
  br label %317

299:                                              ; preds = %204
  %300 = load i64, i64* @TCA_KIND, align 8
  %301 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %300
  %302 = load %struct.nlattr*, %struct.nlattr** %301, align 8
  %303 = icmp ne %struct.nlattr* %302, null
  br i1 %303, label %304, label %316

304:                                              ; preds = %299
  %305 = load i64, i64* @TCA_KIND, align 8
  %306 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %305
  %307 = load %struct.nlattr*, %struct.nlattr** %306, align 8
  %308 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %309 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %308, i32 0, i32 3
  %310 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %309, align 8
  %311 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i64 @nla_strcmp(%struct.nlattr* %307, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %304
  br label %467

316:                                              ; preds = %304, %299
  br label %317

317:                                              ; preds = %316, %298
  %318 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %319 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %318, i32 0, i32 3
  %320 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %319, align 8
  %321 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %320, i32 0, i32 1
  %322 = load i64 (%struct.tcf_proto.1*, i64)*, i64 (%struct.tcf_proto.1*, i64)** %321, align 8
  %323 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %324 = bitcast %struct.tcf_proto* %323 to %struct.tcf_proto.1*
  %325 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %326 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = call i64 %322(%struct.tcf_proto.1* %324, i64 %327)
  store i64 %328, i64* %25, align 8
  %329 = load i64, i64* %25, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %373

331:                                              ; preds = %317
  %332 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %333 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 130
  br i1 %335, label %336, label %357

336:                                              ; preds = %331
  %337 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %338 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %357

341:                                              ; preds = %336
  %342 = load i32*, i32** %11, align 8
  %343 = call i32 @spin_lock_bh(i32* %342)
  %344 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %345 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %344, i32 0, i32 2
  %346 = load %struct.tcf_proto*, %struct.tcf_proto** %345, align 8
  %347 = load %struct.tcf_proto**, %struct.tcf_proto*** %19, align 8
  store %struct.tcf_proto* %346, %struct.tcf_proto** %347, align 8
  %348 = load i32*, i32** %11, align 8
  %349 = call i32 @spin_unlock_bh(i32* %348)
  %350 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %351 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %352 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %353 = load i64, i64* %25, align 8
  %354 = call i32 @tfilter_notify(%struct.sk_buff* %350, %struct.nlmsghdr* %351, %struct.tcf_proto* %352, i64 %353, i32 130)
  %355 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %356 = call i32 @tcf_destroy(%struct.tcf_proto* %355)
  store i32 0, i32* %26, align 4
  br label %467

357:                                              ; preds = %336, %331
  %358 = load i32, i32* @ENOENT, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %26, align 4
  %360 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %361 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 128
  br i1 %363, label %371, label %364

364:                                              ; preds = %357
  %365 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %366 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @NLM_F_CREATE, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %364, %357
  br label %467

372:                                              ; preds = %364
  br label %423

373:                                              ; preds = %317
  %374 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %375 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  switch i32 %376, label %419 [
    i32 128, label %377
    i32 130, label %394
    i32 129, label %413
  ]

377:                                              ; preds = %373
  %378 = load i32, i32* @EEXIST, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %26, align 4
  %380 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %381 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @NLM_F_EXCL, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %377
  %387 = load i32, i32* %27, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %391 = call i32 @tcf_destroy(%struct.tcf_proto* %390)
  br label %392

392:                                              ; preds = %389, %386
  br label %467

393:                                              ; preds = %377
  br label %422

394:                                              ; preds = %373
  %395 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %396 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %395, i32 0, i32 3
  %397 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %396, align 8
  %398 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %397, i32 0, i32 2
  %399 = load i32 (%struct.tcf_proto.2*, i64)*, i32 (%struct.tcf_proto.2*, i64)** %398, align 8
  %400 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %401 = bitcast %struct.tcf_proto* %400 to %struct.tcf_proto.2*
  %402 = load i64, i64* %25, align 8
  %403 = call i32 %399(%struct.tcf_proto.2* %401, i64 %402)
  store i32 %403, i32* %26, align 4
  %404 = load i32, i32* %26, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %394
  %407 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %408 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %409 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %410 = load i64, i64* %25, align 8
  %411 = call i32 @tfilter_notify(%struct.sk_buff* %407, %struct.nlmsghdr* %408, %struct.tcf_proto* %409, i64 %410, i32 130)
  br label %412

412:                                              ; preds = %406, %394
  br label %467

413:                                              ; preds = %373
  %414 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %415 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %416 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %417 = load i64, i64* %25, align 8
  %418 = call i32 @tfilter_notify(%struct.sk_buff* %414, %struct.nlmsghdr* %415, %struct.tcf_proto* %416, i64 %417, i32 128)
  store i32 %418, i32* %26, align 4
  br label %467

419:                                              ; preds = %373
  %420 = load i32, i32* @EINVAL, align 4
  %421 = sub nsw i32 0, %420
  store i32 %421, i32* %26, align 4
  br label %467

422:                                              ; preds = %393
  br label %423

423:                                              ; preds = %422, %372
  %424 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %425 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %424, i32 0, i32 3
  %426 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %425, align 8
  %427 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %426, i32 0, i32 3
  %428 = load i32 (%struct.tcf_proto.3*, i64, i64, %struct.nlattr.4**, i64*)*, i32 (%struct.tcf_proto.3*, i64, i64, %struct.nlattr.4**, i64*)** %427, align 8
  %429 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %430 = bitcast %struct.tcf_proto* %429 to %struct.tcf_proto.3*
  %431 = load i64, i64* %24, align 8
  %432 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %433 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = bitcast %struct.nlattr** %37 to %struct.nlattr.4**
  %436 = call i32 %428(%struct.tcf_proto.3* %430, i64 %431, i64 %434, %struct.nlattr.4** %435, i64* %25)
  store i32 %436, i32* %26, align 4
  %437 = load i32, i32* %26, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %459

439:                                              ; preds = %423
  %440 = load i32, i32* %27, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %453

442:                                              ; preds = %439
  %443 = load i32*, i32** %11, align 8
  %444 = call i32 @spin_lock_bh(i32* %443)
  %445 = load %struct.tcf_proto**, %struct.tcf_proto*** %19, align 8
  %446 = load %struct.tcf_proto*, %struct.tcf_proto** %445, align 8
  %447 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %448 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %447, i32 0, i32 2
  store %struct.tcf_proto* %446, %struct.tcf_proto** %448, align 8
  %449 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %450 = load %struct.tcf_proto**, %struct.tcf_proto*** %19, align 8
  store %struct.tcf_proto* %449, %struct.tcf_proto** %450, align 8
  %451 = load i32*, i32** %11, align 8
  %452 = call i32 @spin_unlock_bh(i32* %451)
  br label %453

453:                                              ; preds = %442, %439
  %454 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %455 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %456 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %457 = load i64, i64* %25, align 8
  %458 = call i32 @tfilter_notify(%struct.sk_buff* %454, %struct.nlmsghdr* %455, %struct.tcf_proto* %456, i64 %457, i32 128)
  br label %466

459:                                              ; preds = %423
  %460 = load i32, i32* %27, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %464 = call i32 @tcf_destroy(%struct.tcf_proto* %463)
  br label %465

465:                                              ; preds = %462, %459
  br label %466

466:                                              ; preds = %465, %453
  br label %467

467:                                              ; preds = %466, %419, %413, %412, %392, %371, %341, %315, %291, %250, %240, %232, %217, %196, %165
  %468 = load i64, i64* %24, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %467
  %471 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %23, align 8
  %472 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %471, i32 0, i32 1
  %473 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %472, align 8
  %474 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %475 = load i64, i64* %24, align 8
  %476 = call i32 %473(%struct.Qdisc* %474, i64 %475)
  br label %477

477:                                              ; preds = %470, %467
  %478 = load i32, i32* %26, align 4
  %479 = load i32, i32* @EAGAIN, align 4
  %480 = sub nsw i32 0, %479
  %481 = icmp eq i32 %478, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %477
  br label %44

483:                                              ; preds = %477
  %484 = load i32, i32* %26, align 4
  store i32 %484, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %485

485:                                              ; preds = %483, %150, %134, %126, %115, %94, %85, %73, %40
  %486 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %486)
  %487 = load i32, i32* %4, align 4
  ret i32 %487
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @TC_H_MIN(i64) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local i64 @TC_H_MAKE(i32, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local %struct.tcf_proto* @kzalloc(i32, i32) #1

declare dso_local %struct.tcf_proto_ops* @tcf_proto_lookup_ops(%struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.tcf_proto*) #1

declare dso_local i64 @tcf_auto_prio(%struct.tcf_proto*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tfilter_notify(%struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, i64, i32) #1

declare dso_local i32 @tcf_destroy(%struct.tcf_proto*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
