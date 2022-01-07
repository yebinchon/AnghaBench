; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ip_mreq_source = type { i64, i32, i32 }
%struct.ip_mreqn = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ip_mc_socklist = type { i32, %struct.ip_sf_socklist*, %struct.TYPE_8__, %struct.ip_mc_socklist* }
%struct.ip_sf_socklist = type { i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.in_device = type { i32 }
%struct.inet_sock = type { %struct.ip_mc_socklist* }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i32 0, align 4
@sysctl_igmp_max_msf = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IP_SFBLOCK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ip_sf_socklist_reclaim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_source(i32 %0, i32 %1, %struct.sock* %2, %struct.ip_mreq_source* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.ip_mreq_source*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_mreqn, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ip_mc_socklist*, align 8
  %16 = alloca %struct.in_device*, align 8
  %17 = alloca %struct.inet_sock*, align 8
  %18 = alloca %struct.ip_sf_socklist*, align 8
  %19 = alloca %struct.net*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ip_sf_socklist*, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sock* %2, %struct.sock** %9, align 8
  store %struct.ip_mreq_source* %3, %struct.ip_mreq_source** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %27 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  store %struct.in_device* null, %struct.in_device** %16, align 8
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = call %struct.inet_sock* @inet_sk(%struct.sock* %29)
  store %struct.inet_sock* %30, %struct.inet_sock** %17, align 8
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = call %struct.net* @sock_net(%struct.sock* %31)
  store %struct.net* %32, %struct.net** %19, align 8
  store i32 0, i32* %20, align 4
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @ipv4_is_multicast(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %407

39:                                               ; preds = %5
  %40 = call i32 (...) @rtnl_lock()
  %41 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %42 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %13, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %47 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %13, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.net*, %struct.net** %19, align 8
  %54 = call %struct.in_device* @ip_mc_find_dev(%struct.net* %53, %struct.ip_mreqn* %13)
  store %struct.in_device* %54, %struct.in_device** %16, align 8
  %55 = load %struct.in_device*, %struct.in_device** %16, align 8
  %56 = icmp ne %struct.in_device* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %398

60:                                               ; preds = %39
  %61 = load i32, i32* @EADDRNOTAVAIL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.inet_sock*, %struct.inet_sock** %17, align 8
  %64 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %63, i32 0, i32 0
  %65 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %64, align 8
  store %struct.ip_mc_socklist* %65, %struct.ip_mc_socklist** %15, align 8
  br label %66

66:                                               ; preds = %89, %60
  %67 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %68 = icmp ne %struct.ip_mc_socklist* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %71 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %13, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %81 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %93

88:                                               ; preds = %79, %69
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %91 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %90, i32 0, i32 3
  %92 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %91, align 8
  store %struct.ip_mc_socklist* %92, %struct.ip_mc_socklist** %15, align 8
  br label %66

93:                                               ; preds = %87, %66
  %94 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %95 = icmp ne %struct.ip_mc_socklist* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %398

99:                                               ; preds = %93
  %100 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %101 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %100, i32 0, i32 1
  %102 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %101, align 8
  %103 = icmp ne %struct.ip_sf_socklist* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %106 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %398

113:                                              ; preds = %104
  br label %137

114:                                              ; preds = %99
  %115 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %116 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load %struct.in_device*, %struct.in_device** %16, align 8
  %122 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %123 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %122, i32 0, i32 0
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @ip_mc_add_src(%struct.in_device* %121, i64* %123, i32 %124, i32 0, i32* null, i32 0)
  %126 = load %struct.in_device*, %struct.in_device** %16, align 8
  %127 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %128 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %127, i32 0, i32 0
  %129 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %130 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ip_mc_del_src(%struct.in_device* %126, i64* %128, i32 %131, i32 0, i32* null, i32 0)
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %135 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %120, %114
  br label %137

137:                                              ; preds = %136, %113
  %138 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %139 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %138, i32 0, i32 1
  %140 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %139, align 8
  store %struct.ip_sf_socklist* %140, %struct.ip_sf_socklist** %18, align 8
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %224, label %143

143:                                              ; preds = %137
  %144 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %145 = icmp ne %struct.ip_sf_socklist* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %398

147:                                              ; preds = %143
  store i32 1, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %148

148:                                              ; preds = %168, %147
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %151 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %156 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %162 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %161, i32 0, i32 1
  %163 = call i32 @memcmp(i32* %160, i32* %162, i32 8)
  store i32 %163, i32* %23, align 4
  %164 = load i32, i32* %23, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %171

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %21, align 4
  br label %148

171:                                              ; preds = %166, %148
  %172 = load i32, i32* %23, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %398

175:                                              ; preds = %171
  %176 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %177 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @MCAST_INCLUDE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 1, i32* %20, align 4
  br label %398

185:                                              ; preds = %180, %175
  %186 = load %struct.in_device*, %struct.in_device** %16, align 8
  %187 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %188 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %187, i32 0, i32 0
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %191 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %190, i32 0, i32 1
  %192 = call i32 @ip_mc_del_src(%struct.in_device* %186, i64* %188, i32 %189, i32 1, i32* %191, i32 1)
  %193 = load i32, i32* %21, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %22, align 4
  br label %195

195:                                              ; preds = %216, %185
  %196 = load i32, i32* %22, align 4
  %197 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %198 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %195
  %202 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %203 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %210 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %22, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %208, i32* %215, align 4
  br label %216

216:                                              ; preds = %201
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %22, align 4
  br label %195

219:                                              ; preds = %195
  %220 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %221 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %221, align 8
  store i32 0, i32* %12, align 4
  br label %398

224:                                              ; preds = %137
  %225 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %226 = icmp ne %struct.ip_sf_socklist* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %229 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @sysctl_igmp_max_msf, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i32, i32* @ENOBUFS, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %12, align 4
  br label %398

236:                                              ; preds = %227, %224
  %237 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %238 = icmp ne %struct.ip_sf_socklist* %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %241 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %244 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %247, label %322

247:                                              ; preds = %239, %236
  %248 = load i32, i32* @IP_SFBLOCK, align 4
  store i32 %248, i32* %25, align 4
  %249 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %250 = icmp ne %struct.ip_sf_socklist* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  %252 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %253 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %25, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %25, align 4
  br label %257

257:                                              ; preds = %251, %247
  %258 = load %struct.sock*, %struct.sock** %9, align 8
  %259 = load i32, i32* %25, align 4
  %260 = call i32 @IP_SFLSIZE(i32 %259)
  %261 = load i32, i32* @GFP_KERNEL, align 4
  %262 = call %struct.ip_sf_socklist* @sock_kmalloc(%struct.sock* %258, i32 %260, i32 %261)
  store %struct.ip_sf_socklist* %262, %struct.ip_sf_socklist** %24, align 8
  %263 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  %264 = icmp ne %struct.ip_sf_socklist* %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %257
  %266 = load i32, i32* @ENOBUFS, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %12, align 4
  br label %398

268:                                              ; preds = %257
  %269 = load i32, i32* %25, align 4
  %270 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  %271 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %25, align 4
  %273 = load i32, i32* @IP_SFBLOCK, align 4
  %274 = sub nsw i32 %272, %273
  %275 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  %276 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %278 = icmp ne %struct.ip_sf_socklist* %277, null
  br i1 %278, label %279, label %315

279:                                              ; preds = %268
  store i32 0, i32* %21, align 4
  br label %280

280:                                              ; preds = %300, %279
  %281 = load i32, i32* %21, align 4
  %282 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %283 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %303

286:                                              ; preds = %280
  %287 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %288 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  %295 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %21, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32 %293, i32* %299, align 4
  br label %300

300:                                              ; preds = %286
  %301 = load i32, i32* %21, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %21, align 4
  br label %280

303:                                              ; preds = %280
  %304 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %305 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @IP_SFLSIZE(i32 %306)
  %308 = load %struct.sock*, %struct.sock** %9, align 8
  %309 = getelementptr inbounds %struct.sock, %struct.sock* %308, i32 0, i32 0
  %310 = call i32 @atomic_sub(i32 %307, i32* %309)
  %311 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %312 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %311, i32 0, i32 3
  %313 = load i32, i32* @ip_sf_socklist_reclaim, align 4
  %314 = call i32 @call_rcu(i32* %312, i32 %313)
  br label %315

315:                                              ; preds = %303, %268
  %316 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %15, align 8
  %317 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %316, i32 0, i32 1
  %318 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %317, align 8
  %319 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  %320 = call i32 @rcu_assign_pointer(%struct.ip_sf_socklist* %318, %struct.ip_sf_socklist* %319)
  %321 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %24, align 8
  store %struct.ip_sf_socklist* %321, %struct.ip_sf_socklist** %18, align 8
  br label %322

322:                                              ; preds = %315, %239
  store i32 1, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %323

323:                                              ; preds = %343, %322
  %324 = load i32, i32* %21, align 4
  %325 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %326 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %346

329:                                              ; preds = %323
  %330 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %331 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %21, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %337 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %336, i32 0, i32 1
  %338 = call i32 @memcmp(i32* %335, i32* %337, i32 8)
  store i32 %338, i32* %23, align 4
  %339 = load i32, i32* %23, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %329
  br label %346

342:                                              ; preds = %329
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %21, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %21, align 4
  br label %323

346:                                              ; preds = %341, %323
  %347 = load i32, i32* %23, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %398

350:                                              ; preds = %346
  %351 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %352 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sub nsw i32 %353, 1
  store i32 %354, i32* %22, align 4
  br label %355

355:                                              ; preds = %374, %350
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* %21, align 4
  %358 = icmp sge i32 %356, %357
  br i1 %358, label %359, label %377

359:                                              ; preds = %355
  %360 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %361 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %368 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %22, align 4
  %371 = add nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %366, i32* %373, align 4
  br label %374

374:                                              ; preds = %359
  %375 = load i32, i32* %22, align 4
  %376 = add nsw i32 %375, -1
  store i32 %376, i32* %22, align 4
  br label %355

377:                                              ; preds = %355
  %378 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %379 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %382 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %381, i32 0, i32 2
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %21, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 %380, i32* %386, align 4
  %387 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %18, align 8
  %388 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  store i32 0, i32* %12, align 4
  %391 = load %struct.in_device*, %struct.in_device** %16, align 8
  %392 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %393 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %392, i32 0, i32 0
  %394 = load i32, i32* %8, align 4
  %395 = load %struct.ip_mreq_source*, %struct.ip_mreq_source** %10, align 8
  %396 = getelementptr inbounds %struct.ip_mreq_source, %struct.ip_mreq_source* %395, i32 0, i32 1
  %397 = call i32 @ip_mc_add_src(%struct.in_device* %391, i64* %393, i32 %394, i32 1, i32* %396, i32 1)
  br label %398

398:                                              ; preds = %377, %349, %265, %233, %219, %184, %174, %146, %110, %96, %57
  %399 = call i32 (...) @rtnl_unlock()
  %400 = load i32, i32* %20, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = load %struct.sock*, %struct.sock** %9, align 8
  %404 = call i32 @ip_mc_leave_group(%struct.sock* %403, %struct.ip_mreqn* %13)
  store i32 %404, i32* %6, align 4
  br label %407

405:                                              ; preds = %398
  %406 = load i32, i32* %12, align 4
  store i32 %406, i32* %6, align 4
  br label %407

407:                                              ; preds = %405, %402, %36
  %408 = load i32, i32* %6, align 4
  ret i32 %408
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv4_is_multicast(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.in_device* @ip_mc_find_dev(%struct.net*, %struct.ip_mreqn*) #1

declare dso_local i32 @ip_mc_add_src(%struct.in_device*, i64*, i32, i32, i32*, i32) #1

declare dso_local i32 @ip_mc_del_src(%struct.in_device*, i64*, i32, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.ip_sf_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @IP_SFLSIZE(i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ip_sf_socklist*, %struct.ip_sf_socklist*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ip_mc_leave_group(%struct.sock*, %struct.ip_mreqn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
