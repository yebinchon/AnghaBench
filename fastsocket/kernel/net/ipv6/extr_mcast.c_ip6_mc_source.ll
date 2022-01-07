; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.group_source_req = type { i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_mc_socklist = type { i32, i32, %struct.ip6_sf_socklist*, i32, i32, %struct.ipv6_mc_socklist* }
%struct.ip6_sf_socklist = type { i32, i32, %struct.in6_addr* }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32, %struct.net_device* }
%struct.ipv6_pinfo = type { %struct.ipv6_mc_socklist* }
%struct.net = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ipv6_sk_mc_lock = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i32 0, align 4
@sysctl_mld_max_msf = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IP6_SFBLOCK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_mc_source(i32 %0, i32 %1, %struct.sock* %2, %struct.group_source_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.group_source_req*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.ipv6_mc_socklist*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.inet6_dev*, align 8
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.ip6_sf_socklist*, align 8
  %17 = alloca %struct.net*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ip6_sf_socklist*, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.sock* %2, %struct.sock** %8, align 8
  store %struct.group_source_req* %3, %struct.group_source_req** %9, align 8
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %26)
  store %struct.ipv6_pinfo* %27, %struct.ipv6_pinfo** %15, align 8
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = call %struct.net* @sock_net(%struct.sock* %28)
  store %struct.net* %29, %struct.net** %17, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %30 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %31 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  store %struct.in6_addr* %33, %struct.in6_addr** %10, align 8
  %34 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %35 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to %struct.sockaddr_in6*
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  store %struct.in6_addr* %37, %struct.in6_addr** %11, align 8
  %38 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %39 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %418

44:                                               ; preds = %4
  %45 = load %struct.net*, %struct.net** %17, align 8
  %46 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %47 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %48 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.inet6_dev* @ip6_mc_find_dev(%struct.net* %45, %struct.in6_addr* %46, i32 %49)
  store %struct.inet6_dev* %50, %struct.inet6_dev** %14, align 8
  %51 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %52 = icmp ne %struct.inet6_dev* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %418

56:                                               ; preds = %44
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %58 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %57, i32 0, i32 1
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  store %struct.net_device* %59, %struct.net_device** %13, align 8
  %60 = load i32, i32* @EADDRNOTAVAIL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %23, align 4
  %62 = call i32 @read_lock_bh(i32* @ipv6_sk_mc_lock)
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 0
  %65 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %64, align 8
  store %struct.ipv6_mc_socklist* %65, %struct.ipv6_mc_socklist** %12, align 8
  br label %66

66:                                               ; preds = %91, %56
  %67 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %68 = icmp ne %struct.ipv6_mc_socklist* %67, null
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %71 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %76 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %79 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %91

83:                                               ; preds = %74, %69
  %84 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %85 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %84, i32 0, i32 3
  %86 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %87 = call i64 @ipv6_addr_equal(i32* %85, %struct.in6_addr* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %95

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %82
  %92 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %93 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %92, i32 0, i32 5
  %94 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %93, align 8
  store %struct.ipv6_mc_socklist* %94, %struct.ipv6_mc_socklist** %12, align 8
  br label %66

95:                                               ; preds = %89, %66
  %96 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %97 = icmp ne %struct.ipv6_mc_socklist* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %23, align 4
  br label %391

101:                                              ; preds = %95
  %102 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %103 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %102, i32 0, i32 2
  %104 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %103, align 8
  %105 = icmp ne %struct.ip6_sf_socklist* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %108 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %23, align 4
  br label %391

115:                                              ; preds = %106
  br label %137

116:                                              ; preds = %101
  %117 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %118 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %124 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %123, %struct.in6_addr* %124, i32 %125, i32 0, %struct.in6_addr* null, i32 0)
  %127 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %128 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %129 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %130 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %127, %struct.in6_addr* %128, i32 %131, i32 0, %struct.in6_addr* null, i32 0)
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %135 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %122, %116
  br label %137

137:                                              ; preds = %136, %115
  %138 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %139 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %138, i32 0, i32 1
  %140 = call i32 @write_lock_bh(i32* %139)
  store i32 1, i32* %22, align 4
  %141 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %142 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %141, i32 0, i32 2
  %143 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %142, align 8
  store %struct.ip6_sf_socklist* %143, %struct.ip6_sf_socklist** %16, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %225, label %146

146:                                              ; preds = %137
  %147 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %148 = icmp ne %struct.ip6_sf_socklist* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %391

150:                                              ; preds = %146
  store i32 1, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %170, %150
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %154 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %151
  %158 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %159 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %158, i32 0, i32 2
  %160 = load %struct.in6_addr*, %struct.in6_addr** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %160, i64 %162
  %164 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %165 = call i32 @memcmp(%struct.in6_addr* %163, %struct.in6_addr* %164, i32 4)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %173

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %151

173:                                              ; preds = %168, %151
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %391

177:                                              ; preds = %173
  %178 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %179 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @MCAST_INCLUDE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 1, i32* %21, align 4
  br label %391

187:                                              ; preds = %182, %177
  %188 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %189 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %192 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %188, %struct.in6_addr* %189, i32 %190, i32 1, %struct.in6_addr* %191, i32 1)
  %193 = load i32, i32* %18, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %19, align 4
  br label %195

195:                                              ; preds = %217, %187
  %196 = load i32, i32* %19, align 4
  %197 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %198 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %195
  %202 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %203 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %202, i32 0, i32 2
  %204 = load %struct.in6_addr*, %struct.in6_addr** %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %204, i64 %207
  %209 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %210 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %209, i32 0, i32 2
  %211 = load %struct.in6_addr*, %struct.in6_addr** %210, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %211, i64 %213
  %215 = bitcast %struct.in6_addr* %208 to i8*
  %216 = bitcast %struct.in6_addr* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 4, i1 false)
  br label %217

217:                                              ; preds = %201
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %195

220:                                              ; preds = %195
  %221 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %222 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %222, align 8
  store i32 0, i32* %23, align 4
  br label %391

225:                                              ; preds = %137
  %226 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %227 = icmp ne %struct.ip6_sf_socklist* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %230 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @sysctl_mld_max_msf, align 4
  %233 = icmp sge i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* @ENOBUFS, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %23, align 4
  br label %391

237:                                              ; preds = %228, %225
  %238 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %239 = icmp ne %struct.ip6_sf_socklist* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %242 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %245 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %317

248:                                              ; preds = %240, %237
  %249 = load i32, i32* @IP6_SFBLOCK, align 4
  store i32 %249, i32* %25, align 4
  %250 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %251 = icmp ne %struct.ip6_sf_socklist* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %254 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %25, align 4
  br label %258

258:                                              ; preds = %252, %248
  %259 = load %struct.sock*, %struct.sock** %8, align 8
  %260 = load i32, i32* %25, align 4
  %261 = call i32 @IP6_SFLSIZE(i32 %260)
  %262 = load i32, i32* @GFP_ATOMIC, align 4
  %263 = call %struct.ip6_sf_socklist* @sock_kmalloc(%struct.sock* %259, i32 %261, i32 %262)
  store %struct.ip6_sf_socklist* %263, %struct.ip6_sf_socklist** %24, align 8
  %264 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %24, align 8
  %265 = icmp ne %struct.ip6_sf_socklist* %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %258
  %267 = load i32, i32* @ENOBUFS, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %23, align 4
  br label %391

269:                                              ; preds = %258
  %270 = load i32, i32* %25, align 4
  %271 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %24, align 8
  %272 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %25, align 4
  %274 = load i32, i32* @IP6_SFBLOCK, align 4
  %275 = sub nsw i32 %273, %274
  %276 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %24, align 8
  %277 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %279 = icmp ne %struct.ip6_sf_socklist* %278, null
  br i1 %279, label %280, label %313

280:                                              ; preds = %269
  store i32 0, i32* %18, align 4
  br label %281

281:                                              ; preds = %302, %280
  %282 = load i32, i32* %18, align 4
  %283 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %284 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %305

287:                                              ; preds = %281
  %288 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %24, align 8
  %289 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %288, i32 0, i32 2
  %290 = load %struct.in6_addr*, %struct.in6_addr** %289, align 8
  %291 = load i32, i32* %18, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %290, i64 %292
  %294 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %295 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %294, i32 0, i32 2
  %296 = load %struct.in6_addr*, %struct.in6_addr** %295, align 8
  %297 = load i32, i32* %18, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %296, i64 %298
  %300 = bitcast %struct.in6_addr* %293 to i8*
  %301 = bitcast %struct.in6_addr* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 4 %301, i64 4, i1 false)
  br label %302

302:                                              ; preds = %287
  %303 = load i32, i32* %18, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %18, align 4
  br label %281

305:                                              ; preds = %281
  %306 = load %struct.sock*, %struct.sock** %8, align 8
  %307 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %308 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %309 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @IP6_SFLSIZE(i32 %310)
  %312 = call i32 @sock_kfree_s(%struct.sock* %306, %struct.ip6_sf_socklist* %307, i32 %311)
  br label %313

313:                                              ; preds = %305, %269
  %314 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %24, align 8
  store %struct.ip6_sf_socklist* %314, %struct.ip6_sf_socklist** %16, align 8
  %315 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %316 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %315, i32 0, i32 2
  store %struct.ip6_sf_socklist* %314, %struct.ip6_sf_socklist** %316, align 8
  br label %317

317:                                              ; preds = %313, %240
  store i32 1, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %318

318:                                              ; preds = %337, %317
  %319 = load i32, i32* %18, align 4
  %320 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %321 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %340

324:                                              ; preds = %318
  %325 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %326 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %325, i32 0, i32 2
  %327 = load %struct.in6_addr*, %struct.in6_addr** %326, align 8
  %328 = load i32, i32* %18, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %327, i64 %329
  %331 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %332 = call i32 @memcmp(%struct.in6_addr* %330, %struct.in6_addr* %331, i32 4)
  store i32 %332, i32* %20, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %324
  br label %340

336:                                              ; preds = %324
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %18, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %18, align 4
  br label %318

340:                                              ; preds = %335, %318
  %341 = load i32, i32* %20, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  br label %391

344:                                              ; preds = %340
  %345 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %346 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sub nsw i32 %347, 1
  store i32 %348, i32* %19, align 4
  br label %349

349:                                              ; preds = %369, %344
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %18, align 4
  %352 = icmp sge i32 %350, %351
  br i1 %352, label %353, label %372

353:                                              ; preds = %349
  %354 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %355 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %354, i32 0, i32 2
  %356 = load %struct.in6_addr*, %struct.in6_addr** %355, align 8
  %357 = load i32, i32* %19, align 4
  %358 = add nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %356, i64 %359
  %361 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %362 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %361, i32 0, i32 2
  %363 = load %struct.in6_addr*, %struct.in6_addr** %362, align 8
  %364 = load i32, i32* %19, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %363, i64 %365
  %367 = bitcast %struct.in6_addr* %360 to i8*
  %368 = bitcast %struct.in6_addr* %366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %367, i8* align 4 %368, i64 4, i1 false)
  br label %369

369:                                              ; preds = %353
  %370 = load i32, i32* %19, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %19, align 4
  br label %349

372:                                              ; preds = %349
  %373 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %374 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %373, i32 0, i32 2
  %375 = load %struct.in6_addr*, %struct.in6_addr** %374, align 8
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %375, i64 %377
  %379 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %380 = bitcast %struct.in6_addr* %378 to i8*
  %381 = bitcast %struct.in6_addr* %379 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %380, i8* align 4 %381, i64 4, i1 false)
  %382 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %16, align 8
  %383 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 8
  store i32 0, i32* %23, align 4
  %386 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %387 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %388 = load i32, i32* %7, align 4
  %389 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %390 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %386, %struct.in6_addr* %387, i32 %388, i32 1, %struct.in6_addr* %389, i32 1)
  br label %391

391:                                              ; preds = %372, %343, %266, %234, %220, %186, %176, %149, %112, %98
  %392 = load i32, i32* %22, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %12, align 8
  %396 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %395, i32 0, i32 1
  %397 = call i32 @write_unlock_bh(i32* %396)
  br label %398

398:                                              ; preds = %394, %391
  %399 = call i32 @read_unlock_bh(i32* @ipv6_sk_mc_lock)
  %400 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %401 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %400, i32 0, i32 0
  %402 = call i32 @read_unlock_bh(i32* %401)
  %403 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %404 = call i32 @in6_dev_put(%struct.inet6_dev* %403)
  %405 = load %struct.net_device*, %struct.net_device** %13, align 8
  %406 = call i32 @dev_put(%struct.net_device* %405)
  %407 = load i32, i32* %21, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %398
  %410 = load %struct.sock*, %struct.sock** %8, align 8
  %411 = load %struct.group_source_req*, %struct.group_source_req** %9, align 8
  %412 = getelementptr inbounds %struct.group_source_req, %struct.group_source_req* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %415 = call i32 @ipv6_sock_mc_drop(%struct.sock* %410, i32 %413, %struct.in6_addr* %414)
  store i32 %415, i32* %5, align 4
  br label %418

416:                                              ; preds = %398
  %417 = load i32, i32* %23, align 4
  store i32 %417, i32* %5, align 4
  br label %418

418:                                              ; preds = %416, %409, %53, %41
  %419 = load i32, i32* %5, align 4
  ret i32 %419
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.inet6_dev* @ip6_mc_find_dev(%struct.net*, %struct.in6_addr*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_mc_add_src(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @ip6_mc_del_src(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @memcmp(%struct.in6_addr*, %struct.in6_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ip6_sf_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @IP6_SFLSIZE(i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ip6_sf_socklist*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @ipv6_sock_mc_drop(%struct.sock*, i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
