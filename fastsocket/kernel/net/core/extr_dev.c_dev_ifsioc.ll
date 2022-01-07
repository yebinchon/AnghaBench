; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_ifsioc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_ifsioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i8*, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32, i32 }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.ifreq.2 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@SIOCBONDENSLAVE = common dso_local global i32 0, align 4
@SIOCBONDRELEASE = common dso_local global i32 0, align 4
@SIOCBONDSETHWADDR = common dso_local global i32 0, align 4
@SIOCBONDSLAVEINFOQUERY = common dso_local global i32 0, align 4
@SIOCBONDINFOQUERY = common dso_local global i32 0, align 4
@SIOCBONDCHANGEACTIVE = common dso_local global i32 0, align 4
@SIOCGMIIPHY = common dso_local global i32 0, align 4
@SIOCGMIIREG = common dso_local global i32 0, align 4
@SIOCSMIIREG = common dso_local global i32 0, align 4
@SIOCBRADDIF = common dso_local global i32 0, align 4
@SIOCBRDELIF = common dso_local global i32 0, align 4
@SIOCWANDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ifreq*, i32)* @dev_ifsioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_ifsioc(%struct.net* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.net_device* @__dev_get_by_name(%struct.net* %11, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %300

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 4
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %23, align 8
  store %struct.net_device_ops* %24, %struct.net_device_ops** %10, align 8
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %208 [
    i32 135, label %26
    i32 131, label %32
    i32 130, label %35
    i32 134, label %41
    i32 133, label %46
    i32 132, label %75
    i32 138, label %99
    i32 137, label %136
    i32 128, label %173
    i32 129, label %187
    i32 136, label %200
  ]

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_change_flags(%struct.net_device* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %300

32:                                               ; preds = %21
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %300

35:                                               ; preds = %21
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_set_mtu(%struct.net_device* %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %300

41:                                               ; preds = %21
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 2
  %45 = call i32 @dev_set_mac_address(%struct.net_device* %42, %struct.TYPE_2__* %44)
  store i32 %45, i32* %4, align 4
  br label %300

46:                                               ; preds = %21
  %47 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %48 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %300

58:                                               ; preds = %46
  %59 = load %struct.net_device*, %struct.net_device** %9, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %63 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @min(i32 4, i64 %69)
  %71 = call i32 @memcpy(i32 %61, i32 %65, i32 %70)
  %72 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = call i32 @call_netdevice_notifiers(i32 %72, %struct.net_device* %73)
  store i32 0, i32* %4, align 4
  br label %300

75:                                               ; preds = %21
  %76 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %77 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %76, i32 0, i32 0
  %78 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %77, align 8
  %79 = icmp ne i32 (%struct.net_device.0*, i32*)* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.net_device*, %struct.net_device** %9, align 8
  %82 = call i32 @netif_device_present(%struct.net_device* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %300

87:                                               ; preds = %80
  %88 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %89 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %88, i32 0, i32 0
  %90 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = bitcast %struct.net_device* %91 to %struct.net_device.0*
  %93 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %94 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %93, i32 0, i32 3
  %95 = call i32 %90(%struct.net_device.0* %92, i32* %94)
  store i32 %95, i32* %4, align 4
  br label %300

96:                                               ; preds = %75
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %300

99:                                               ; preds = %21
  %100 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %101 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %106 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104, %99
  %110 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %111 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AF_UNSPEC, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109, %104
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %300

119:                                              ; preds = %109
  %120 = load %struct.net_device*, %struct.net_device** %9, align 8
  %121 = call i32 @netif_device_present(%struct.net_device* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %300

126:                                              ; preds = %119
  %127 = load %struct.net_device*, %struct.net_device** %9, align 8
  %128 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %129 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.net_device*, %struct.net_device** %9, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_mc_add(%struct.net_device* %127, i32 %131, i32 %134, i32 1)
  store i32 %135, i32* %4, align 4
  br label %300

136:                                              ; preds = %21
  %137 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %138 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %143 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141, %136
  %147 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %148 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AF_UNSPEC, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %146, %141
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %300

156:                                              ; preds = %146
  %157 = load %struct.net_device*, %struct.net_device** %9, align 8
  %158 = call i32 @netif_device_present(%struct.net_device* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %300

163:                                              ; preds = %156
  %164 = load %struct.net_device*, %struct.net_device** %9, align 8
  %165 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %166 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.net_device*, %struct.net_device** %9, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_mc_delete(%struct.net_device* %164, i32 %168, i32 %171, i32 1)
  store i32 %172, i32* %4, align 4
  br label %300

173:                                              ; preds = %21
  %174 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %175 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %300

181:                                              ; preds = %173
  %182 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %183 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.net_device*, %struct.net_device** %9, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  store i32 0, i32* %4, align 4
  br label %300

187:                                              ; preds = %21
  %188 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %189 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @IFNAMSIZ, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 0, i8* %194, align 1
  %195 = load %struct.net_device*, %struct.net_device** %9, align 8
  %196 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %197 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @dev_change_name(%struct.net_device* %195, i8* %198)
  store i32 %199, i32* %4, align 4
  br label %300

200:                                              ; preds = %21
  %201 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %202 = call i32 @net_hwtstamp_validate(%struct.ifreq* %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %4, align 4
  br label %300

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %21, %207
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %211 = icmp uge i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %215 = add i32 %214, 15
  %216 = icmp ule i32 %213, %215
  br i1 %216, label %268, label %217

217:                                              ; preds = %212, %208
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @SIOCBONDENSLAVE, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %268, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @SIOCBONDRELEASE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %268, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @SIOCBONDSETHWADDR, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %268, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @SIOCBONDSLAVEINFOQUERY, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %268, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @SIOCBONDINFOQUERY, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %268, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @SIOCBONDCHANGEACTIVE, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %268, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @SIOCGMIIPHY, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %268, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @SIOCGMIIREG, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %268, label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @SIOCSMIIREG, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %268, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @SIOCBRADDIF, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %268, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @SIOCBRDELIF, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %268, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %7, align 4
  %263 = icmp eq i32 %262, 136
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @SIOCWANDEV, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %294

268:                                              ; preds = %264, %261, %257, %253, %249, %245, %241, %237, %233, %229, %225, %221, %217, %212
  %269 = load i32, i32* @EOPNOTSUPP, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %8, align 4
  %271 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %272 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %271, i32 0, i32 1
  %273 = load i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)** %272, align 8
  %274 = icmp ne i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)* %273, null
  br i1 %274, label %275, label %293

275:                                              ; preds = %268
  %276 = load %struct.net_device*, %struct.net_device** %9, align 8
  %277 = call i32 @netif_device_present(%struct.net_device* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %275
  %280 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %281 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %280, i32 0, i32 1
  %282 = load i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)*, i32 (%struct.net_device.1*, %struct.ifreq.2*, i32)** %281, align 8
  %283 = load %struct.net_device*, %struct.net_device** %9, align 8
  %284 = bitcast %struct.net_device* %283 to %struct.net_device.1*
  %285 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %286 = bitcast %struct.ifreq* %285 to %struct.ifreq.2*
  %287 = load i32, i32* %7, align 4
  %288 = call i32 %282(%struct.net_device.1* %284, %struct.ifreq.2* %286, i32 %287)
  store i32 %288, i32* %8, align 4
  br label %292

289:                                              ; preds = %275
  %290 = load i32, i32* @ENODEV, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %289, %279
  br label %293

293:                                              ; preds = %292, %268
  br label %297

294:                                              ; preds = %264
  %295 = load i32, i32* @EINVAL, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %8, align 4
  br label %297

297:                                              ; preds = %294, %293
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %298, %205, %187, %181, %178, %163, %160, %153, %126, %123, %116, %96, %87, %84, %58, %55, %41, %35, %32, %26, %18
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @dev_change_flags(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dev_mc_delete(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dev_change_name(%struct.net_device*, i8*) #1

declare dso_local i32 @net_hwtstamp_validate(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
