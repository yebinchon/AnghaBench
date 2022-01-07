; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ip_tunnel_parm = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ip_tunnel = type { %struct.net_device*, i32, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { %struct.net_device* }

@EPERM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_ioctl(%struct.net_device* %0, %struct.ip_tunnel_parm* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ip_tunnel_parm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ip_tunnel_net*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %10, align 8
  %17 = load %struct.net*, %struct.net** %9, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %17, i32 %20)
  store %struct.ip_tunnel_net* %21, %struct.ip_tunnel_net** %11, align 8
  %22 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = icmp ne %struct.net_device* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %239 [
    i32 128, label %30
    i32 131, label %56
    i32 130, label %56
    i32 129, label %195
  ]

30:                                               ; preds = %3
  store %struct.ip_tunnel* null, %struct.ip_tunnel** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %33 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = icmp eq %struct.net_device* %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %38 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %39 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %39, i32 0, i32 0
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net* %37, %struct.ip_tunnel_parm* %38, i32 %43)
  store %struct.ip_tunnel* %44, %struct.ip_tunnel** %8, align 8
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %47 = icmp eq %struct.ip_tunnel* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %49)
  store %struct.ip_tunnel* %50, %struct.ip_tunnel** %8, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %53, i32 0, i32 1
  %55 = call i32 @memcpy(%struct.ip_tunnel_parm* %52, i32* %54, i32 28)
  br label %242

56:                                               ; preds = %3, %3
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @CAP_NET_ADMIN, align 4
  %60 = call i32 @capable(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %243

63:                                               ; preds = %56
  %64 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* @IP_DF, align 4
  %71 = call i32 @htons(i32 %70)
  %72 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %79 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TUNNEL_KEY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %86 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %85, i32 0, i32 4
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %89 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TUNNEL_KEY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %99 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %100 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %101 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %100, i32 0, i32 0
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net* %98, %struct.ip_tunnel_parm* %99, i32 %104)
  store %struct.ip_tunnel* %105, %struct.ip_tunnel** %8, align 8
  %106 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %107 = icmp ne %struct.ip_tunnel* %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 131
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.net*, %struct.net** %9, align 8
  %113 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %114 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %115 = call %struct.ip_tunnel* @ip_tunnel_create(%struct.net* %112, %struct.ip_tunnel_net* %113, %struct.ip_tunnel_parm* %114)
  store %struct.ip_tunnel* %115, %struct.ip_tunnel** %8, align 8
  br label %116

116:                                              ; preds = %111, %108, %97
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %119 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %118, i32 0, i32 0
  %120 = load %struct.net_device*, %struct.net_device** %119, align 8
  %121 = icmp ne %struct.net_device* %117, %120
  br i1 %121, label %122, label %174

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 130
  br i1 %124, label %125, label %174

125:                                              ; preds = %122
  %126 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %127 = icmp ne %struct.ip_tunnel* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %130 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %129, i32 0, i32 0
  %131 = load %struct.net_device*, %struct.net_device** %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = icmp ne %struct.net_device* %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* @EEXIST, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %242

137:                                              ; preds = %128
  br label %173

138:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  %139 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %140 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ipv4_is_multicast(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @IFF_BROADCAST, align 4
  store i32 %146, i32* %12, align 4
  br label %156

147:                                              ; preds = %138
  %148 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %149 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @IFF_POINTOPOINT, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %147
  br label %156

156:                                              ; preds = %155, %145
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = xor i32 %159, %160
  %162 = load i32, i32* @IFF_POINTOPOINT, align 4
  %163 = load i32, i32* @IFF_BROADCAST, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %7, align 4
  br label %242

170:                                              ; preds = %156
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %171)
  store %struct.ip_tunnel* %172, %struct.ip_tunnel** %8, align 8
  br label %173

173:                                              ; preds = %170, %137
  br label %174

174:                                              ; preds = %173, %122, %116
  %175 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %176 = icmp ne %struct.ip_tunnel* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  store i32 0, i32* %7, align 4
  %178 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %179 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %180 = load %struct.net_device*, %struct.net_device** %4, align 8
  %181 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %182 = call i32 @ip_tunnel_update(%struct.ip_tunnel_net* %178, %struct.ip_tunnel* %179, %struct.net_device* %180, %struct.ip_tunnel_parm* %181, i32 1)
  br label %194

183:                                              ; preds = %174
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 131
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @ENOBUFS, align 4
  %188 = sub nsw i32 0, %187
  br label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @ENOENT, align 4
  %191 = sub nsw i32 0, %190
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i32 [ %188, %186 ], [ %191, %189 ]
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %177
  br label %242

195:                                              ; preds = %3
  %196 = load i32, i32* @EPERM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* @CAP_NET_ADMIN, align 4
  %199 = call i32 @capable(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  br label %243

202:                                              ; preds = %195
  %203 = load %struct.net_device*, %struct.net_device** %4, align 8
  %204 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %205 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %204, i32 0, i32 0
  %206 = load %struct.net_device*, %struct.net_device** %205, align 8
  %207 = icmp eq %struct.net_device* %203, %206
  br i1 %207, label %208, label %236

208:                                              ; preds = %202
  %209 = load i32, i32* @ENOENT, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  %211 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %212 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %213 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %214 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %213, i32 0, i32 0
  %215 = load %struct.net_device*, %struct.net_device** %214, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net* %211, %struct.ip_tunnel_parm* %212, i32 %217)
  store %struct.ip_tunnel* %218, %struct.ip_tunnel** %8, align 8
  %219 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %220 = icmp eq %struct.ip_tunnel* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %243

222:                                              ; preds = %208
  %223 = load i32, i32* @EPERM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %7, align 4
  %225 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %226 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %11, align 8
  %227 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %226, i32 0, i32 0
  %228 = load %struct.net_device*, %struct.net_device** %227, align 8
  %229 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %228)
  %230 = icmp eq %struct.ip_tunnel* %225, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  br label %243

232:                                              ; preds = %222
  %233 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %234 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %233, i32 0, i32 0
  %235 = load %struct.net_device*, %struct.net_device** %234, align 8
  store %struct.net_device* %235, %struct.net_device** %4, align 8
  br label %236

236:                                              ; preds = %232, %202
  %237 = load %struct.net_device*, %struct.net_device** %4, align 8
  %238 = call i32 @unregister_netdevice(%struct.net_device* %237)
  store i32 0, i32* %7, align 4
  br label %242

239:                                              ; preds = %3
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %239, %236, %194, %167, %134, %51
  br label %243

243:                                              ; preds = %242, %231, %221, %201, %62
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i32 @memcpy(%struct.ip_tunnel_parm*, i32*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_create(%struct.net*, %struct.ip_tunnel_net*, %struct.ip_tunnel_parm*) #1

declare dso_local i32 @ipv4_is_multicast(i32) #1

declare dso_local i32 @ip_tunnel_update(%struct.ip_tunnel_net*, %struct.ip_tunnel*, %struct.net_device*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
