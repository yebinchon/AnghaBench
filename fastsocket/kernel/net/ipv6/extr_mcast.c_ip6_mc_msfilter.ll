; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_msfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_msfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.group_filter = type { i64, i32, i32, i32*, i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_mc_socklist = type { i32, i32, %struct.ip6_sf_socklist*, i32, i32, %struct.ipv6_mc_socklist* }
%struct.ip6_sf_socklist = type { i32, i32, %struct.in6_addr* }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32, %struct.net_device* }
%struct.ipv6_pinfo = type { %struct.ipv6_mc_socklist* }
%struct.net = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@EINVAL = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ipv6_sk_mc_lock = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_mc_msfilter(%struct.sock* %0, %struct.group_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.group_filter*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ipv6_mc_socklist*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.ipv6_pinfo*, align 8
  %11 = alloca %struct.ip6_sf_socklist*, align 8
  %12 = alloca %struct.ip6_sf_socklist*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.group_filter* %1, %struct.group_filter** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %18)
  store %struct.ipv6_pinfo* %19, %struct.ipv6_pinfo** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.net* @sock_net(%struct.sock* %20)
  store %struct.net* %21, %struct.net** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %23 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %22, i32 0, i32 4
  %24 = bitcast i32* %23 to %struct.sockaddr_in6*
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  store %struct.in6_addr* %25, %struct.in6_addr** %6, align 8
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %263

32:                                               ; preds = %2
  %33 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %34 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MCAST_INCLUDE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %40 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MCAST_EXCLUDE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %263

47:                                               ; preds = %38, %32
  %48 = load %struct.net*, %struct.net** %13, align 8
  %49 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %50 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %51 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.inet6_dev* @ip6_mc_find_dev(%struct.net* %48, %struct.in6_addr* %49, i32 %52)
  store %struct.inet6_dev* %53, %struct.inet6_dev** %9, align 8
  %54 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %55 = icmp ne %struct.inet6_dev* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %263

59:                                               ; preds = %47
  %60 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %61 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %60, i32 0, i32 1
  %62 = load %struct.net_device*, %struct.net_device** %61, align 8
  store %struct.net_device* %62, %struct.net_device** %8, align 8
  store i32 0, i32* %16, align 4
  %63 = call i32 @read_lock_bh(i32* @ipv6_sk_mc_lock)
  %64 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %65 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MCAST_INCLUDE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %71 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %14, align 4
  br label %243

75:                                               ; preds = %69, %59
  %76 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %77 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %76, i32 0, i32 0
  %78 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %77, align 8
  store %struct.ipv6_mc_socklist* %78, %struct.ipv6_mc_socklist** %7, align 8
  br label %79

79:                                               ; preds = %99, %75
  %80 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %81 = icmp ne %struct.ipv6_mc_socklist* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %84 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %87 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %99

91:                                               ; preds = %82
  %92 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %93 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %92, i32 0, i32 3
  %94 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %95 = call i64 @ipv6_addr_equal(i32* %93, %struct.in6_addr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %101 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %100, i32 0, i32 5
  %102 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %101, align 8
  store %struct.ipv6_mc_socklist* %102, %struct.ipv6_mc_socklist** %7, align 8
  br label %79

103:                                              ; preds = %97, %79
  %104 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %105 = icmp ne %struct.ipv6_mc_socklist* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %16, align 4
  br label %243

109:                                              ; preds = %103
  %110 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %111 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %188

114:                                              ; preds = %109
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %117 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @IP6_SFLSIZE(i32 %119)
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = call %struct.ip6_sf_socklist* @sock_kmalloc(%struct.sock* %115, i32 %120, i32 %121)
  store %struct.ip6_sf_socklist* %122, %struct.ip6_sf_socklist** %11, align 8
  %123 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %124 = icmp ne %struct.ip6_sf_socklist* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @ENOBUFS, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %16, align 4
  br label %243

128:                                              ; preds = %114
  %129 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %130 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %134 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %136 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %161, %128
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %140 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %164

143:                                              ; preds = %137
  %144 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %145 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = bitcast i32* %149 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %150, %struct.sockaddr_in6** %17, align 8
  %151 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %152 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %151, i32 0, i32 2
  %153 = load %struct.in6_addr*, %struct.in6_addr** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %153, i64 %155
  %157 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %158 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %157, i32 0, i32 0
  %159 = bitcast %struct.in6_addr* %156 to i8*
  %160 = bitcast %struct.in6_addr* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 4, i1 false)
  br label %161

161:                                              ; preds = %143
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %137

164:                                              ; preds = %137
  %165 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %166 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %167 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %168 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %171 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %174 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %173, i32 0, i32 2
  %175 = load %struct.in6_addr*, %struct.in6_addr** %174, align 8
  %176 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %165, %struct.in6_addr* %166, i32 %169, i32 %172, %struct.in6_addr* %175, i32 0)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %164
  %180 = load %struct.sock*, %struct.sock** %4, align 8
  %181 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %182 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %183 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @IP6_SFLSIZE(i32 %184)
  %186 = call i32 @sock_kfree_s(%struct.sock* %180, %struct.ip6_sf_socklist* %181, i32 %185)
  br label %243

187:                                              ; preds = %164
  br label %195

188:                                              ; preds = %109
  store %struct.ip6_sf_socklist* null, %struct.ip6_sf_socklist** %11, align 8
  %189 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %190 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %191 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %192 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %189, %struct.in6_addr* %190, i32 %193, i32 0, %struct.in6_addr* null, i32 0)
  br label %195

195:                                              ; preds = %188, %187
  %196 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %197 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %196, i32 0, i32 0
  %198 = call i32 @write_lock_bh(i32* %197)
  %199 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %200 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %199, i32 0, i32 2
  %201 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %200, align 8
  store %struct.ip6_sf_socklist* %201, %struct.ip6_sf_socklist** %12, align 8
  %202 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %12, align 8
  %203 = icmp ne %struct.ip6_sf_socklist* %202, null
  br i1 %203, label %204, label %224

204:                                              ; preds = %195
  %205 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %206 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %207 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %208 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %12, align 8
  %211 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %12, align 8
  %214 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %213, i32 0, i32 2
  %215 = load %struct.in6_addr*, %struct.in6_addr** %214, align 8
  %216 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %205, %struct.in6_addr* %206, i32 %209, i32 %212, %struct.in6_addr* %215, i32 0)
  %217 = load %struct.sock*, %struct.sock** %4, align 8
  %218 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %12, align 8
  %219 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %12, align 8
  %220 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @IP6_SFLSIZE(i32 %221)
  %223 = call i32 @sock_kfree_s(%struct.sock* %217, %struct.ip6_sf_socklist* %218, i32 %222)
  br label %231

224:                                              ; preds = %195
  %225 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %226 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %227 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %228 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %225, %struct.in6_addr* %226, i32 %229, i32 0, %struct.in6_addr* null, i32 0)
  br label %231

231:                                              ; preds = %224, %204
  %232 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %11, align 8
  %233 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %234 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %233, i32 0, i32 2
  store %struct.ip6_sf_socklist* %232, %struct.ip6_sf_socklist** %234, align 8
  %235 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %236 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %239 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %7, align 8
  %241 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %240, i32 0, i32 0
  %242 = call i32 @write_unlock_bh(i32* %241)
  store i32 0, i32* %16, align 4
  br label %243

243:                                              ; preds = %231, %179, %125, %106, %74
  %244 = call i32 @read_unlock_bh(i32* @ipv6_sk_mc_lock)
  %245 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %246 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %245, i32 0, i32 0
  %247 = call i32 @read_unlock_bh(i32* %246)
  %248 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %249 = call i32 @in6_dev_put(%struct.inet6_dev* %248)
  %250 = load %struct.net_device*, %struct.net_device** %8, align 8
  %251 = call i32 @dev_put(%struct.net_device* %250)
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %243
  %255 = load %struct.sock*, %struct.sock** %4, align 8
  %256 = load %struct.group_filter*, %struct.group_filter** %5, align 8
  %257 = getelementptr inbounds %struct.group_filter, %struct.group_filter* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %260 = call i32 @ipv6_sock_mc_drop(%struct.sock* %255, i32 %258, %struct.in6_addr* %259)
  store i32 %260, i32* %16, align 4
  br label %261

261:                                              ; preds = %254, %243
  %262 = load i32, i32* %16, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %56, %44, %29
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.inet6_dev* @ip6_mc_find_dev(%struct.net*, %struct.in6_addr*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local %struct.ip6_sf_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @IP6_SFLSIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ip6_mc_add_src(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ip6_sf_socklist*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ip6_mc_del_src(%struct.inet6_dev*, %struct.in6_addr*, i32, i32, %struct.in6_addr*, i32) #1

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
