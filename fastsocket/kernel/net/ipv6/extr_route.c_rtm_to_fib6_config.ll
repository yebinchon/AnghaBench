; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rtm_to_fib6_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rtm_to_fib6_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.fib6_config = type { i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.nlmsghdr*, i32 }
%struct.rtmsg = type { i32, i32, i64, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@rtm_ipv6_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTN_UNREACHABLE = common dso_local global i64 0, align 8
@RTF_REJECT = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@RTF_LOCAL = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i64 0, align 8
@RTA_SRC = common dso_local global i64 0, align 8
@RTA_PREFSRC = common dso_local global i64 0, align 8
@RTA_OIF = common dso_local global i64 0, align 8
@RTA_PRIORITY = common dso_local global i64 0, align 8
@RTA_METRICS = common dso_local global i64 0, align 8
@RTA_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.fib6_config*)* @rtm_to_fib6_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_to_fib6_config(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.fib6_config* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.fib6_config*, align 8
  %7 = alloca %struct.rtmsg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.fib6_config* %2, %struct.fib6_config** %6, align 8
  %14 = load i32, i32* @RTA_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %20 = load i32, i32* @RTA_MAX, align 4
  %21 = load i32, i32* @rtm_ipv6_policy, align 4
  %22 = call i32 @nlmsg_parse(%struct.nlmsghdr* %19, i32 32, %struct.nlattr** %18, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %234

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %30 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %29)
  store %struct.rtmsg* %30, %struct.rtmsg** %7, align 8
  %31 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %32 = call i32 @memset(%struct.fib6_config* %31, i32 0, i32 104)
  %33 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %34 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %37 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %39 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %42 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %44 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %47 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @RTF_UP, align 4
  %49 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %50 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %52 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %55 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %57 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RTN_UNREACHABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %26
  %62 = load i32, i32* @RTF_REJECT, align 4
  %63 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %64 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %26
  %68 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %69 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RTN_LOCAL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @RTF_LOCAL, align 4
  %75 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %76 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @NETLINK_CB(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %86 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %89 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %90 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %89, i32 0, i32 12
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store %struct.nlmsghdr* %88, %struct.nlmsghdr** %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sock_net(i32 %94)
  %96 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %97 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %96, i32 0, i32 12
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i64, i64* @RTA_GATEWAY, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %79
  %104 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %105 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %104, i32 0, i32 11
  %106 = load i64, i64* @RTA_GATEWAY, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i32 @nla_memcpy(i32* %105, %struct.nlattr* %108, i32 16)
  %110 = load i32, i32* @RTF_GATEWAY, align 4
  %111 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %112 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %103, %79
  %116 = load i64, i64* @RTA_DST, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %120, label %141

120:                                              ; preds = %115
  %121 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %122 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 7
  %125 = ashr i32 %124, 3
  store i32 %125, i32* %12, align 4
  %126 = load i64, i64* @RTA_DST, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = call i32 @nla_len(%struct.nlattr* %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %234

133:                                              ; preds = %120
  %134 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %135 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %134, i32 0, i32 9
  %136 = load i64, i64* @RTA_DST, align 8
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @nla_memcpy(i32* %135, %struct.nlattr* %138, i32 %139)
  br label %141

141:                                              ; preds = %133, %115
  %142 = load i64, i64* @RTA_SRC, align 8
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = icmp ne %struct.nlattr* %144, null
  br i1 %145, label %146, label %167

146:                                              ; preds = %141
  %147 = load %struct.rtmsg*, %struct.rtmsg** %7, align 8
  %148 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 7
  %151 = ashr i32 %150, 3
  store i32 %151, i32* %13, align 4
  %152 = load i64, i64* @RTA_SRC, align 8
  %153 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %152
  %154 = load %struct.nlattr*, %struct.nlattr** %153, align 8
  %155 = call i32 @nla_len(%struct.nlattr* %154)
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %234

159:                                              ; preds = %146
  %160 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %161 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %160, i32 0, i32 8
  %162 = load i64, i64* @RTA_SRC, align 8
  %163 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %162
  %164 = load %struct.nlattr*, %struct.nlattr** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @nla_memcpy(i32* %161, %struct.nlattr* %164, i32 %165)
  br label %167

167:                                              ; preds = %159, %141
  %168 = load i64, i64* @RTA_PREFSRC, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = icmp ne %struct.nlattr* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %174 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %173, i32 0, i32 7
  %175 = load i64, i64* @RTA_PREFSRC, align 8
  %176 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %175
  %177 = load %struct.nlattr*, %struct.nlattr** %176, align 8
  %178 = call i32 @nla_memcpy(i32* %174, %struct.nlattr* %177, i32 16)
  br label %179

179:                                              ; preds = %172, %167
  %180 = load i64, i64* @RTA_OIF, align 8
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = icmp ne %struct.nlattr* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load i64, i64* @RTA_OIF, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = call i8* @nla_get_u32(%struct.nlattr* %187)
  %189 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %190 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %189, i32 0, i32 6
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %184, %179
  %192 = load i64, i64* @RTA_PRIORITY, align 8
  %193 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %192
  %194 = load %struct.nlattr*, %struct.nlattr** %193, align 8
  %195 = icmp ne %struct.nlattr* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load i64, i64* @RTA_PRIORITY, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = call i8* @nla_get_u32(%struct.nlattr* %199)
  %201 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %202 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %201, i32 0, i32 5
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %196, %191
  %204 = load i64, i64* @RTA_METRICS, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = icmp ne %struct.nlattr* %206, null
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  %209 = load i64, i64* @RTA_METRICS, align 8
  %210 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %209
  %211 = load %struct.nlattr*, %struct.nlattr** %210, align 8
  %212 = call i32 @nla_data(%struct.nlattr* %211)
  %213 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %214 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load i64, i64* @RTA_METRICS, align 8
  %216 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %215
  %217 = load %struct.nlattr*, %struct.nlattr** %216, align 8
  %218 = call i32 @nla_len(%struct.nlattr* %217)
  %219 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %220 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %208, %203
  %222 = load i64, i64* @RTA_TABLE, align 8
  %223 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %222
  %224 = load %struct.nlattr*, %struct.nlattr** %223, align 8
  %225 = icmp ne %struct.nlattr* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load i64, i64* @RTA_TABLE, align 8
  %228 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %227
  %229 = load %struct.nlattr*, %struct.nlattr** %228, align 8
  %230 = call i8* @nla_get_u32(%struct.nlattr* %229)
  %231 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %232 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %231, i32 0, i32 3
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %226, %221
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %233, %158, %132, %25
  %235 = load i32, i32* %10, align 4
  %236 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %236)
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #2

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @memset(%struct.fib6_config*, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @nla_memcpy(i32*, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
