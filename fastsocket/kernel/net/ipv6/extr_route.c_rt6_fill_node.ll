; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_fill_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rt6_info = type { i32, i32, i64, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.in6_addr }
%struct.TYPE_10__ = type { i32, %struct.in6_addr }
%struct.TYPE_9__ = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i8*, i64, i32 }
%struct.nlmsghdr = type { i32 }

@RTF_PREFIX_RT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@RT6_TABLE_UNSPEC = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTN_UNREACHABLE = common dso_local global i8* null, align 8
@RTF_LOCAL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i8* null, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i8* null, align 8
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTPROT_REDIRECT = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTPROT_KERNEL = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@RTPROT_RA = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_IIF = common dso_local global i32 0, align 4
@RTA_PREFSRC = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_PRIORITY = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTA_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.rt6_info*, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32, i32, i32, i32)* @rt6_fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_fill_node(%struct.net* %0, %struct.sk_buff* %1, %struct.rt6_info* %2, %struct.in6_addr* %3, %struct.in6_addr* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.rt6_info*, align 8
  %17 = alloca %struct.in6_addr*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.rtmsg*, align 8
  %27 = alloca %struct.nlmsghdr*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.in6_addr, align 4
  %31 = alloca %struct.in6_addr, align 4
  store %struct.net* %0, %struct.net** %14, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %15, align 8
  store %struct.rt6_info* %2, %struct.rt6_info** %16, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %17, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %32 = load i32, i32* %23, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %12
  %35 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %36 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RTF_PREFIX_RT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  br label %346

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %12
  %44 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %25, align 4
  %49 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %44, i32 %45, i32 %46, i32 %47, i32 48, i32 %48)
  store %struct.nlmsghdr* %49, %struct.nlmsghdr** %27, align 8
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %51 = icmp eq %struct.nlmsghdr* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %346

55:                                               ; preds = %43
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %57 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %56)
  store %struct.rtmsg* %57, %struct.rtmsg** %26, align 8
  %58 = load i32, i32* @AF_INET6, align 4
  %59 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %60 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %62 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %66 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %72 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %74 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %73, i32 0, i32 7
  store i64 0, i64* %74, align 8
  %75 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %76 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %75, i32 0, i32 9
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %55
  %80 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %81 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %80, i32 0, i32 9
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %29, align 4
  br label %87

85:                                               ; preds = %55
  %86 = load i32, i32* @RT6_TABLE_UNSPEC, align 4
  store i32 %86, i32* %29, align 4
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i32, i32* %29, align 4
  %89 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %90 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %92 = load i32, i32* @RTA_TABLE, align 4
  %93 = load i32, i32* %29, align 4
  %94 = call i32 @NLA_PUT_U32(%struct.sk_buff* %91, i32 %92, i32 %93)
  %95 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %96 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RTF_REJECT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i8*, i8** @RTN_UNREACHABLE, align 8
  %103 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %104 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  br label %140

105:                                              ; preds = %87
  %106 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %107 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RTF_LOCAL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i8*, i8** @RTN_LOCAL, align 8
  %114 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %115 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  br label %139

116:                                              ; preds = %105
  %117 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %118 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %117, i32 0, i32 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = icmp ne %struct.TYPE_14__* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %123 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %122, i32 0, i32 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IFF_LOOPBACK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i8*, i8** @RTN_LOCAL, align 8
  %132 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %133 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  br label %138

134:                                              ; preds = %121, %116
  %135 = load i8*, i8** @RTN_UNICAST, align 8
  %136 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %137 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %112
  br label %140

140:                                              ; preds = %139, %101
  %141 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %142 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %141, i32 0, i32 3
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %144 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %145 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %147 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %150 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %152 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @RTF_DYNAMIC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %140
  %158 = load i32, i32* @RTPROT_REDIRECT, align 4
  %159 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %160 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  br label %185

161:                                              ; preds = %140
  %162 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %163 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @RTF_ADDRCONF, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* @RTPROT_KERNEL, align 4
  %170 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %171 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  br label %184

172:                                              ; preds = %161
  %173 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %174 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @RTF_DEFAULT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* @RTPROT_RA, align 4
  %181 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %182 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %172
  br label %184

184:                                              ; preds = %183, %168
  br label %185

185:                                              ; preds = %184, %157
  %186 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %187 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @RTF_CACHE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load i32, i32* @RTM_F_CLONED, align 4
  %194 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %195 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %185
  %199 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %200 = icmp ne %struct.in6_addr* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %203 = load i32, i32* @RTA_DST, align 4
  %204 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %205 = call i32 @NLA_PUT(%struct.sk_buff* %202, i32 %203, i32 16, %struct.in6_addr* %204)
  %206 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %207 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %206, i32 0, i32 0
  store i32 128, i32* %207, align 8
  br label %221

208:                                              ; preds = %198
  %209 = load %struct.rtmsg*, %struct.rtmsg** %26, align 8
  %210 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %215 = load i32, i32* @RTA_DST, align 4
  %216 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %217 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = call i32 @NLA_PUT(%struct.sk_buff* %214, i32 %215, i32 16, %struct.in6_addr* %218)
  br label %220

220:                                              ; preds = %213, %208
  br label %221

221:                                              ; preds = %220, %201
  %222 = load i32, i32* %19, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %226 = load i32, i32* @RTA_IIF, align 4
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @NLA_PUT_U32(%struct.sk_buff* %225, i32 %226, i32 %227)
  br label %244

229:                                              ; preds = %221
  %230 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %231 = icmp ne %struct.in6_addr* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load %struct.net*, %struct.net** %14, align 8
  %234 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %235 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %236 = call i64 @ip6_route_get_saddr(%struct.net* %233, %struct.rt6_info* %234, %struct.in6_addr* %235, i32 0, %struct.in6_addr* %30)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %240 = load i32, i32* @RTA_PREFSRC, align 4
  %241 = call i32 @NLA_PUT(%struct.sk_buff* %239, i32 %240, i32 16, %struct.in6_addr* %30)
  br label %242

242:                                              ; preds = %238, %232
  br label %243

243:                                              ; preds = %242, %229
  br label %244

244:                                              ; preds = %243, %224
  %245 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %246 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %244
  %251 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %252 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = call i32 @ipv6_addr_copy(%struct.in6_addr* %31, i32* %253)
  %255 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %256 = load i32, i32* @RTA_PREFSRC, align 4
  %257 = call i32 @NLA_PUT(%struct.sk_buff* %255, i32 %256, i32 16, %struct.in6_addr* %31)
  br label %258

258:                                              ; preds = %250, %244
  %259 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %260 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %261 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @rtnetlink_put_metrics(%struct.sk_buff* %259, i32 %264)
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  br label %340

268:                                              ; preds = %258
  %269 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %270 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = icmp ne %struct.TYPE_13__* %273, null
  br i1 %274, label %275, label %285

275:                                              ; preds = %268
  %276 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %277 = load i32, i32* @RTA_GATEWAY, align 4
  %278 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %279 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = call i32 @NLA_PUT(%struct.sk_buff* %276, i32 %277, i32 16, %struct.in6_addr* %283)
  br label %285

285:                                              ; preds = %275, %268
  %286 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %287 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %285
  %293 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %294 = load i32, i32* @RTA_OIF, align 4
  %295 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %296 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %295, i32 0, i32 4
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @NLA_PUT_U32(%struct.sk_buff* %293, i32 %294, i32 %299)
  br label %301

301:                                              ; preds = %292, %285
  %302 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %303 = load i32, i32* @RTA_PRIORITY, align 4
  %304 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %305 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @NLA_PUT_U32(%struct.sk_buff* %302, i32 %303, i32 %306)
  %308 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %309 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @RTF_EXPIRES, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %301
  %315 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %316 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @jiffies, align 8
  %319 = sub nsw i64 %317, %318
  br label %321

320:                                              ; preds = %301
  br label %321

321:                                              ; preds = %320, %314
  %322 = phi i64 [ %319, %314 ], [ 0, %320 ]
  store i64 %322, i64* %28, align 8
  %323 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %324 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %325 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = load i64, i64* %28, align 8
  %328 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %329 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i64 @rtnl_put_cacheinfo(%struct.sk_buff* %323, %struct.TYPE_16__* %326, i32 0, i32 0, i32 0, i64 %327, i32 %332)
  %334 = icmp slt i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %321
  br label %340

336:                                              ; preds = %321
  %337 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %338 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %339 = call i32 @nlmsg_end(%struct.sk_buff* %337, %struct.nlmsghdr* %338)
  store i32 %339, i32* %13, align 4
  br label %346

340:                                              ; preds = %335, %267
  %341 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %342 = load %struct.nlmsghdr*, %struct.nlmsghdr** %27, align 8
  %343 = call i32 @nlmsg_cancel(%struct.sk_buff* %341, %struct.nlmsghdr* %342)
  %344 = load i32, i32* @EMSGSIZE, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %340, %336, %52, %41
  %347 = load i32, i32* %13, align 4
  ret i32 %347
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.in6_addr*) #1

declare dso_local i64 @ip6_route_get_saddr(%struct.net*, %struct.rt6_info*, %struct.in6_addr*, i32, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, i32*) #1

declare dso_local i64 @rtnetlink_put_metrics(%struct.sk_buff*, i32) #1

declare dso_local i64 @rtnl_put_cacheinfo(%struct.sk_buff*, %struct.TYPE_16__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
