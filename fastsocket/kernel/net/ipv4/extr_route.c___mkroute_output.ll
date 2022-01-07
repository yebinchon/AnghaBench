; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c___mkroute_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c___mkroute_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i64, i64, i64, i64, i32, %struct.TYPE_6__, i32, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i32 }
%struct.fib_result = type { i64, i32, i32* }
%struct.flowi = type { i64, i64, i64, i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.in_device = type { i32 }

@RTN_BROADCAST = common dso_local global i64 0, align 8
@RTN_MULTICAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@ipv4_dst_ops = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@NOXFRM = common dso_local global i32 0, align 4
@DST_NOXFRM = common dso_local global i32 0, align 4
@NOPOLICY = common dso_local global i32 0, align 4
@DST_NOPOLICY = common dso_local global i32 0, align 4
@ip_output = common dso_local global i8* null, align 8
@out_slow_tot = common dso_local global i32 0, align 4
@ip_local_deliver = common dso_local global i32 0, align 4
@ip_mc_output = common dso_local global i8* null, align 8
@out_slow_mc = common dso_local global i32 0, align 4
@ip_mr_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtable**, %struct.fib_result*, %struct.flowi*, %struct.flowi*, %struct.net_device*, i32)* @__mkroute_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mkroute_output(%struct.rtable** %0, %struct.fib_result* %1, %struct.flowi* %2, %struct.flowi* %3, %struct.net_device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtable**, align 8
  %9 = alloca %struct.fib_result*, align 8
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca %struct.flowi*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.in_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rtable** %0, %struct.rtable*** %8, align 8
  store %struct.fib_result* %1, %struct.fib_result** %9, align 8
  store %struct.flowi* %2, %struct.flowi** %10, align 8
  store %struct.flowi* %3, %struct.flowi** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.flowi*, %struct.flowi** %11, align 8
  %19 = call i32 @RT_FL_TOS(%struct.flowi* %18)
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.flowi*, %struct.flowi** %10, align 8
  %21 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @htonl(i32 -1)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i64, i64* @RTN_BROADCAST, align 8
  %27 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %28 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %56

29:                                               ; preds = %6
  %30 = load %struct.flowi*, %struct.flowi** %10, align 8
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @ipv4_is_multicast(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @RTN_MULTICAST, align 8
  %37 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %38 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %55

39:                                               ; preds = %29
  %40 = load %struct.flowi*, %struct.flowi** %10, align 8
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ipv4_is_lbcast(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.flowi*, %struct.flowi** %10, align 8
  %47 = getelementptr inbounds %struct.flowi, %struct.flowi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @ipv4_is_zeronet(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %368

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.net_device*, %struct.net_device** %12, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFF_LOOPBACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @RTCF_LOCAL, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.net_device*, %struct.net_device** %12, align 8
  %69 = call i8* @in_dev_get(%struct.net_device* %68)
  %70 = bitcast i8* %69 to %struct.in_device*
  store %struct.in_device* %70, %struct.in_device** %15, align 8
  %71 = load %struct.in_device*, %struct.in_device** %15, align 8
  %72 = icmp ne %struct.in_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %368

76:                                               ; preds = %67
  %77 = load %struct.in_device*, %struct.in_device** %15, align 8
  %78 = call i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load %struct.flowi*, %struct.flowi** %10, align 8
  %86 = getelementptr inbounds %struct.flowi, %struct.flowi* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @ipv4_is_loopback(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.net_device*, %struct.net_device** %12, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFF_LOOPBACK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %17, align 4
  br label %364

100:                                              ; preds = %90, %84
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %103 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RTN_BROADCAST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load i32, i32* @RTCF_BROADCAST, align 4
  %109 = load i32, i32* @RTCF_LOCAL, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %114 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %119 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @fib_info_put(i32* %120)
  %122 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %123 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %122, i32 0, i32 2
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %117, %107
  br label %173

125:                                              ; preds = %101
  %126 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %127 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RTN_MULTICAST, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %172

131:                                              ; preds = %125
  %132 = load i32, i32* @RTCF_MULTICAST, align 4
  %133 = load i32, i32* @RTCF_LOCAL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load %struct.in_device*, %struct.in_device** %15, align 8
  %138 = load %struct.flowi*, %struct.flowi** %11, align 8
  %139 = getelementptr inbounds %struct.flowi, %struct.flowi* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.flowi*, %struct.flowi** %11, align 8
  %142 = getelementptr inbounds %struct.flowi, %struct.flowi* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.flowi*, %struct.flowi** %11, align 8
  %145 = getelementptr inbounds %struct.flowi, %struct.flowi* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ip_check_mc(%struct.in_device* %137, i64 %140, i64 %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %131
  %150 = load i32, i32* @RTCF_LOCAL, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %13, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %149, %131
  %155 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %156 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %161 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %166 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @fib_info_put(i32* %167)
  %169 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %170 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %169, i32 0, i32 2
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %164, %159, %154
  br label %172

172:                                              ; preds = %171, %125
  br label %173

173:                                              ; preds = %172, %124
  %174 = call %struct.rtable* @dst_alloc(i32* @ipv4_dst_ops)
  store %struct.rtable* %174, %struct.rtable** %14, align 8
  %175 = load %struct.rtable*, %struct.rtable** %14, align 8
  %176 = icmp ne %struct.rtable* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @ENOBUFS, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %17, align 4
  br label %364

180:                                              ; preds = %173
  %181 = load %struct.rtable*, %struct.rtable** %14, align 8
  %182 = getelementptr inbounds %struct.rtable, %struct.rtable* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 5
  %185 = call i32 @atomic_set(i32* %184, i32 1)
  %186 = load i32, i32* @DST_HOST, align 4
  %187 = load %struct.rtable*, %struct.rtable** %14, align 8
  %188 = getelementptr inbounds %struct.rtable, %struct.rtable* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  store i32 %186, i32* %190, align 8
  %191 = load %struct.in_device*, %struct.in_device** %15, align 8
  %192 = load i32, i32* @NOXFRM, align 4
  %193 = call i64 @IN_DEV_CONF_GET(%struct.in_device* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %180
  %196 = load i32, i32* @DST_NOXFRM, align 4
  %197 = load %struct.rtable*, %struct.rtable** %14, align 8
  %198 = getelementptr inbounds %struct.rtable, %struct.rtable* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %195, %180
  %204 = load %struct.in_device*, %struct.in_device** %15, align 8
  %205 = load i32, i32* @NOPOLICY, align 4
  %206 = call i64 @IN_DEV_CONF_GET(%struct.in_device* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load i32, i32* @DST_NOPOLICY, align 4
  %210 = load %struct.rtable*, %struct.rtable** %14, align 8
  %211 = getelementptr inbounds %struct.rtable, %struct.rtable* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %209
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %208, %203
  %217 = load %struct.flowi*, %struct.flowi** %11, align 8
  %218 = getelementptr inbounds %struct.flowi, %struct.flowi* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.rtable*, %struct.rtable** %14, align 8
  %221 = getelementptr inbounds %struct.rtable, %struct.rtable* %220, i32 0, i32 9
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.rtable*, %struct.rtable** %14, align 8
  %225 = getelementptr inbounds %struct.rtable, %struct.rtable* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  store i32 %223, i32* %226, align 8
  %227 = load %struct.flowi*, %struct.flowi** %11, align 8
  %228 = getelementptr inbounds %struct.flowi, %struct.flowi* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.rtable*, %struct.rtable** %14, align 8
  %231 = getelementptr inbounds %struct.rtable, %struct.rtable* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  store i64 %229, i64* %232, align 8
  %233 = load %struct.flowi*, %struct.flowi** %11, align 8
  %234 = getelementptr inbounds %struct.flowi, %struct.flowi* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.rtable*, %struct.rtable** %14, align 8
  %237 = getelementptr inbounds %struct.rtable, %struct.rtable* %236, i32 0, i32 9
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 3
  store i64 %235, i64* %238, align 8
  %239 = load %struct.flowi*, %struct.flowi** %11, align 8
  %240 = getelementptr inbounds %struct.flowi, %struct.flowi* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.rtable*, %struct.rtable** %14, align 8
  %243 = getelementptr inbounds %struct.rtable, %struct.rtable* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load %struct.flowi*, %struct.flowi** %10, align 8
  %246 = getelementptr inbounds %struct.flowi, %struct.flowi* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.rtable*, %struct.rtable** %14, align 8
  %249 = getelementptr inbounds %struct.rtable, %struct.rtable* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load %struct.flowi*, %struct.flowi** %10, align 8
  %251 = getelementptr inbounds %struct.flowi, %struct.flowi* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.rtable*, %struct.rtable** %14, align 8
  %254 = getelementptr inbounds %struct.rtable, %struct.rtable* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = load %struct.flowi*, %struct.flowi** %11, align 8
  %256 = getelementptr inbounds %struct.flowi, %struct.flowi* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %216
  br label %265

260:                                              ; preds = %216
  %261 = load %struct.net_device*, %struct.net_device** %12, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  br label %265

265:                                              ; preds = %260, %259
  %266 = phi i64 [ %257, %259 ], [ %264, %260 ]
  %267 = trunc i64 %266 to i32
  %268 = load %struct.rtable*, %struct.rtable** %14, align 8
  %269 = getelementptr inbounds %struct.rtable, %struct.rtable* %268, i32 0, i32 8
  store i32 %267, i32* %269, align 8
  %270 = load %struct.net_device*, %struct.net_device** %12, align 8
  %271 = load %struct.rtable*, %struct.rtable** %14, align 8
  %272 = getelementptr inbounds %struct.rtable, %struct.rtable* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  store %struct.net_device* %270, %struct.net_device** %274, align 8
  %275 = load %struct.net_device*, %struct.net_device** %12, align 8
  %276 = call i32 @dev_hold(%struct.net_device* %275)
  %277 = load %struct.net_device*, %struct.net_device** %12, align 8
  %278 = call i8* @in_dev_get(%struct.net_device* %277)
  %279 = load %struct.rtable*, %struct.rtable** %14, align 8
  %280 = getelementptr inbounds %struct.rtable, %struct.rtable* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  %281 = load %struct.flowi*, %struct.flowi** %10, align 8
  %282 = getelementptr inbounds %struct.flowi, %struct.flowi* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.rtable*, %struct.rtable** %14, align 8
  %285 = getelementptr inbounds %struct.rtable, %struct.rtable* %284, i32 0, i32 2
  store i64 %283, i64* %285, align 8
  %286 = load %struct.flowi*, %struct.flowi** %10, align 8
  %287 = getelementptr inbounds %struct.flowi, %struct.flowi* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.rtable*, %struct.rtable** %14, align 8
  %290 = getelementptr inbounds %struct.rtable, %struct.rtable* %289, i32 0, i32 3
  store i64 %288, i64* %290, align 8
  %291 = load i8*, i8** @ip_output, align 8
  %292 = load %struct.rtable*, %struct.rtable** %14, align 8
  %293 = getelementptr inbounds %struct.rtable, %struct.rtable* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  store i8* %291, i8** %295, align 8
  %296 = load %struct.rtable*, %struct.rtable** %14, align 8
  %297 = getelementptr inbounds %struct.rtable, %struct.rtable* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  store i32 -1, i32* %299, align 8
  %300 = load %struct.net_device*, %struct.net_device** %12, align 8
  %301 = call i32 @dev_net(%struct.net_device* %300)
  %302 = call i32 @rt_genid(i32 %301)
  %303 = load %struct.rtable*, %struct.rtable** %14, align 8
  %304 = getelementptr inbounds %struct.rtable, %struct.rtable* %303, i32 0, i32 6
  store i32 %302, i32* %304, align 8
  %305 = load i32, i32* @out_slow_tot, align 4
  %306 = call i32 @RT_CACHE_STAT_INC(i32 %305)
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* @RTCF_LOCAL, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %265
  %312 = load i32, i32* @ip_local_deliver, align 4
  %313 = load %struct.rtable*, %struct.rtable** %14, align 8
  %314 = getelementptr inbounds %struct.rtable, %struct.rtable* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 2
  store i32 %312, i32* %316, align 8
  %317 = load %struct.flowi*, %struct.flowi** %10, align 8
  %318 = getelementptr inbounds %struct.flowi, %struct.flowi* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.rtable*, %struct.rtable** %14, align 8
  %321 = getelementptr inbounds %struct.rtable, %struct.rtable* %320, i32 0, i32 3
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %311, %265
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* @RTCF_BROADCAST, align 4
  %325 = load i32, i32* @RTCF_MULTICAST, align 4
  %326 = or i32 %324, %325
  %327 = and i32 %323, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %355

329:                                              ; preds = %322
  %330 = load %struct.flowi*, %struct.flowi** %10, align 8
  %331 = getelementptr inbounds %struct.flowi, %struct.flowi* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.rtable*, %struct.rtable** %14, align 8
  %334 = getelementptr inbounds %struct.rtable, %struct.rtable* %333, i32 0, i32 3
  store i64 %332, i64* %334, align 8
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* @RTCF_LOCAL, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %354

339:                                              ; preds = %329
  %340 = load %struct.net_device*, %struct.net_device** %12, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @IFF_LOOPBACK, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %339
  %347 = load i8*, i8** @ip_mc_output, align 8
  %348 = load %struct.rtable*, %struct.rtable** %14, align 8
  %349 = getelementptr inbounds %struct.rtable, %struct.rtable* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 1
  store i8* %347, i8** %351, align 8
  %352 = load i32, i32* @out_slow_mc, align 4
  %353 = call i32 @RT_CACHE_STAT_INC(i32 %352)
  br label %354

354:                                              ; preds = %346, %339, %329
  br label %355

355:                                              ; preds = %354, %322
  %356 = load %struct.rtable*, %struct.rtable** %14, align 8
  %357 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %358 = call i32 @rt_set_nexthop(%struct.rtable* %356, %struct.fib_result* %357, i32 0)
  %359 = load i32, i32* %13, align 4
  %360 = load %struct.rtable*, %struct.rtable** %14, align 8
  %361 = getelementptr inbounds %struct.rtable, %struct.rtable* %360, i32 0, i32 4
  store i32 %359, i32* %361, align 8
  %362 = load %struct.rtable*, %struct.rtable** %14, align 8
  %363 = load %struct.rtable**, %struct.rtable*** %8, align 8
  store %struct.rtable* %362, %struct.rtable** %363, align 8
  br label %364

364:                                              ; preds = %355, %177, %97
  %365 = load %struct.in_device*, %struct.in_device** %15, align 8
  %366 = call i32 @in_dev_put(%struct.in_device* %365)
  %367 = load i32, i32* %17, align 4
  store i32 %367, i32* %7, align 4
  br label %368

368:                                              ; preds = %364, %73, %51
  %369 = load i32, i32* %7, align 4
  ret i32 %369
}

declare dso_local i32 @RT_FL_TOS(%struct.flowi*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i64 @ipv4_is_lbcast(i64) #1

declare dso_local i64 @ipv4_is_zeronet(i64) #1

declare dso_local i8* @in_dev_get(%struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_loopback(i64) #1

declare dso_local i32 @fib_info_put(i32*) #1

declare dso_local i32 @ip_check_mc(%struct.in_device*, i64, i64, i32) #1

declare dso_local %struct.rtable* @dst_alloc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @IN_DEV_CONF_GET(%struct.in_device*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rt_genid(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @rt_set_nexthop(%struct.rtable*, %struct.fib_result*, i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
