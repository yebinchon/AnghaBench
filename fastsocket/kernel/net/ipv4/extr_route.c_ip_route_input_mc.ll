; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_input_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_route_input_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtable = type { %struct.TYPE_7__, i32, i32, i32, i8*, i8*, %struct.TYPE_5__, i8*, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.net_device*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i8*, i32, i32, i8* }
%struct.in_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@ipv4_dst_ops = common dso_local global i32 0, align 4
@ip_rt_bug = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@NOPOLICY = common dso_local global i32 0, align 4
@DST_NOPOLICY = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@ip_local_deliver = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@in_slow_mc = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ip_mr_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i8*, i32, %struct.net_device*, i32)* @ip_route_input_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_route_input_mc(%struct.sk_buff* %0, i8* %1, i8* %2, i32 %3, %struct.net_device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.in_device*, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.net_device*, %struct.net_device** %12, align 8
  %20 = call i8* @in_dev_get(%struct.net_device* %19)
  %21 = bitcast i8* %20 to %struct.in_device*
  store %struct.in_device* %21, %struct.in_device** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.in_device*, %struct.in_device** %17, align 8
  %23 = icmp eq %struct.in_device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %228

27:                                               ; preds = %6
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @ipv4_is_multicast(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @ipv4_is_lbcast(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ETH_P_IP, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %31, %27
  br label %223

43:                                               ; preds = %35
  %44 = load %struct.in_device*, %struct.in_device** %17, align 8
  %45 = call i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @ipv4_is_loopback(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %223

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @ipv4_is_zeronet(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @ipv4_is_local_multicast(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %223

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %12, align 8
  %68 = load i32, i32* @RT_SCOPE_LINK, align 4
  %69 = call i8* @inet_select_addr(%struct.net_device* %67, i32 0, i32 %68)
  store i8* %69, i8** %16, align 8
  br label %78

70:                                               ; preds = %57
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.net_device*, %struct.net_device** %12, align 8
  %74 = call i64 @fib_validate_source(i8* %71, i32 0, i32 %72, i32 0, %struct.net_device* %73, i8** %16, i32* %18, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %223

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %66
  %79 = call %struct.rtable* @dst_alloc(i32* @ipv4_dst_ops)
  store %struct.rtable* %79, %struct.rtable** %15, align 8
  %80 = load %struct.rtable*, %struct.rtable** %15, align 8
  %81 = icmp ne %struct.rtable* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %218

83:                                               ; preds = %78
  %84 = load i32, i32* @ip_rt_bug, align 4
  %85 = load %struct.rtable*, %struct.rtable** %15, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  store i32 %84, i32* %88, align 4
  %89 = load %struct.rtable*, %struct.rtable** %15, align 8
  %90 = getelementptr inbounds %struct.rtable, %struct.rtable* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 8
  %93 = load %struct.rtable*, %struct.rtable** %15, align 8
  %94 = getelementptr inbounds %struct.rtable, %struct.rtable* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = call i32 @atomic_set(i32* %96, i32 1)
  %98 = load i32, i32* @DST_HOST, align 4
  %99 = load %struct.rtable*, %struct.rtable** %15, align 8
  %100 = getelementptr inbounds %struct.rtable, %struct.rtable* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 4
  %103 = load %struct.in_device*, %struct.in_device** %17, align 8
  %104 = load i32, i32* @NOPOLICY, align 4
  %105 = call i64 @IN_DEV_CONF_GET(%struct.in_device* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %83
  %108 = load i32, i32* @DST_NOPOLICY, align 4
  %109 = load %struct.rtable*, %struct.rtable** %15, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %107, %83
  %116 = load i8*, i8** %9, align 8
  %117 = load %struct.rtable*, %struct.rtable** %15, align 8
  %118 = getelementptr inbounds %struct.rtable, %struct.rtable* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load %struct.rtable*, %struct.rtable** %15, align 8
  %122 = getelementptr inbounds %struct.rtable, %struct.rtable* %121, i32 0, i32 10
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.rtable*, %struct.rtable** %15, align 8
  %125 = getelementptr inbounds %struct.rtable, %struct.rtable* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rtable*, %struct.rtable** %15, align 8
  %131 = getelementptr inbounds %struct.rtable, %struct.rtable* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.rtable*, %struct.rtable** %15, align 8
  %135 = getelementptr inbounds %struct.rtable, %struct.rtable* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i8* %133, i8** %136, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.rtable*, %struct.rtable** %15, align 8
  %139 = getelementptr inbounds %struct.rtable, %struct.rtable* %138, i32 0, i32 9
  store i8* %137, i8** %139, align 8
  %140 = load %struct.net_device*, %struct.net_device** %12, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rtable*, %struct.rtable** %15, align 8
  %144 = getelementptr inbounds %struct.rtable, %struct.rtable* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.rtable*, %struct.rtable** %15, align 8
  %147 = getelementptr inbounds %struct.rtable, %struct.rtable* %146, i32 0, i32 8
  store i32 %142, i32* %147, align 8
  %148 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @init_net, i32 0, i32 0), align 8
  %149 = load %struct.rtable*, %struct.rtable** %15, align 8
  %150 = getelementptr inbounds %struct.rtable, %struct.rtable* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store %struct.net_device* %148, %struct.net_device** %152, align 8
  %153 = load %struct.rtable*, %struct.rtable** %15, align 8
  %154 = getelementptr inbounds %struct.rtable, %struct.rtable* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load %struct.net_device*, %struct.net_device** %156, align 8
  %158 = call i32 @dev_hold(%struct.net_device* %157)
  %159 = load %struct.rtable*, %struct.rtable** %15, align 8
  %160 = getelementptr inbounds %struct.rtable, %struct.rtable* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load %struct.net_device*, %struct.net_device** %162, align 8
  %164 = call i8* @in_dev_get(%struct.net_device* %163)
  %165 = load %struct.rtable*, %struct.rtable** %15, align 8
  %166 = getelementptr inbounds %struct.rtable, %struct.rtable* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load %struct.rtable*, %struct.rtable** %15, align 8
  %168 = getelementptr inbounds %struct.rtable, %struct.rtable* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.rtable*, %struct.rtable** %15, align 8
  %172 = getelementptr inbounds %struct.rtable, %struct.rtable* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = load %struct.rtable*, %struct.rtable** %15, align 8
  %175 = getelementptr inbounds %struct.rtable, %struct.rtable* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load %struct.net_device*, %struct.net_device** %12, align 8
  %177 = call i32 @dev_net(%struct.net_device* %176)
  %178 = call i32 @rt_genid(i32 %177)
  %179 = load %struct.rtable*, %struct.rtable** %15, align 8
  %180 = getelementptr inbounds %struct.rtable, %struct.rtable* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @RTCF_MULTICAST, align 4
  %182 = load %struct.rtable*, %struct.rtable** %15, align 8
  %183 = getelementptr inbounds %struct.rtable, %struct.rtable* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @RTN_MULTICAST, align 4
  %185 = load %struct.rtable*, %struct.rtable** %15, align 8
  %186 = getelementptr inbounds %struct.rtable, %struct.rtable* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %115
  %190 = load i32, i32* @ip_local_deliver, align 4
  %191 = load %struct.rtable*, %struct.rtable** %15, align 8
  %192 = getelementptr inbounds %struct.rtable, %struct.rtable* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* @RTCF_LOCAL, align 4
  %196 = load %struct.rtable*, %struct.rtable** %15, align 8
  %197 = getelementptr inbounds %struct.rtable, %struct.rtable* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %189, %115
  %201 = load i32, i32* @in_slow_mc, align 4
  %202 = call i32 @RT_CACHE_STAT_INC(i32 %201)
  %203 = load %struct.in_device*, %struct.in_device** %17, align 8
  %204 = call i32 @in_dev_put(%struct.in_device* %203)
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.net_device*, %struct.net_device** %12, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.net_device*, %struct.net_device** %12, align 8
  %211 = call i32 @dev_net(%struct.net_device* %210)
  %212 = call i32 @rt_genid(i32 %211)
  %213 = call i32 @rt_hash(i8* %205, i8* %206, i32 %209, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.rtable*, %struct.rtable** %15, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %217 = call i32 @rt_intern_hash(i32 %214, %struct.rtable* %215, i32* null, %struct.sk_buff* %216)
  store i32 %217, i32* %7, align 4
  br label %228

218:                                              ; preds = %82
  %219 = load %struct.in_device*, %struct.in_device** %17, align 8
  %220 = call i32 @in_dev_put(%struct.in_device* %219)
  %221 = load i32, i32* @ENOBUFS, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  br label %228

223:                                              ; preds = %76, %65, %55, %42
  %224 = load %struct.in_device*, %struct.in_device** %17, align 8
  %225 = call i32 @in_dev_put(%struct.in_device* %224)
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %223, %218, %200, %24
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local i8* @in_dev_get(%struct.net_device*) #1

declare dso_local i64 @ipv4_is_multicast(i8*) #1

declare dso_local i64 @ipv4_is_lbcast(i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IN_DEV_ROUTE_LOCALNET(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_loopback(i8*) #1

declare dso_local i64 @ipv4_is_zeronet(i8*) #1

declare dso_local i32 @ipv4_is_local_multicast(i8*) #1

declare dso_local i8* @inet_select_addr(%struct.net_device*, i32, i32) #1

declare dso_local i64 @fib_validate_source(i8*, i32, i32, i32, %struct.net_device*, i8**, i32*, i32) #1

declare dso_local %struct.rtable* @dst_alloc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @IN_DEV_CONF_GET(%struct.in_device*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rt_genid(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local i32 @rt_hash(i8*, i8*, i32, i32) #1

declare dso_local i32 @rt_intern_hash(i32, %struct.rtable*, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
