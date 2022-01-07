; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtable = type { i32, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@RTA_TABLE = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTPROT_UNSPEC = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_PREFSRC = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i32 0, align 4
@MC_FORWARDING = common dso_local global i32 0, align 4
@RTA_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32, i32, i32, i32)* @rt_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_fill_info(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.rtmsg*, align 8
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %24)
  store %struct.rtable* %25, %struct.rtable** %16, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %26, i32 %27, i32 %28, i32 %29, i32 40, i32 %30)
  store %struct.nlmsghdr* %31, %struct.nlmsghdr** %18, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %33 = icmp eq %struct.nlmsghdr* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %276

37:                                               ; preds = %7
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %39 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.rtmsg* %39, %struct.rtmsg** %17, align 8
  %40 = load i32, i32* @AF_INET, align 4
  %41 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %42 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %44 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %43, i32 0, i32 0
  store i32 32, i32* %44, align 8
  %45 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.rtable*, %struct.rtable** %16, align 8
  %48 = getelementptr inbounds %struct.rtable, %struct.rtable* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %52 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* @RT_TABLE_MAIN, align 8
  %54 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 6
  store i64 %53, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i32, i32* @RTA_TABLE, align 4
  %58 = load i64, i64* @RT_TABLE_MAIN, align 8
  %59 = call i32 @NLA_PUT_U32(%struct.sk_buff* %56, i32 %57, i64 %58)
  %60 = load %struct.rtable*, %struct.rtable** %16, align 8
  %61 = getelementptr inbounds %struct.rtable, %struct.rtable* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %64 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %66 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %67 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @RTPROT_UNSPEC, align 4
  %69 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %70 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtable*, %struct.rtable** %16, align 8
  %72 = getelementptr inbounds %struct.rtable, %struct.rtable* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, -65536
  %75 = load i32, i32* @RTM_F_CLONED, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %78 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rtable*, %struct.rtable** %16, align 8
  %80 = getelementptr inbounds %struct.rtable, %struct.rtable* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RTCF_NOTIFY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %37
  %86 = load i32, i32* @RTM_F_NOTIFY, align 4
  %87 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %88 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %37
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load i32, i32* @RTA_DST, align 4
  %94 = load %struct.rtable*, %struct.rtable** %16, align 8
  %95 = getelementptr inbounds %struct.rtable, %struct.rtable* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %92, i32 %93, i64 %96)
  %98 = load %struct.rtable*, %struct.rtable** %16, align 8
  %99 = getelementptr inbounds %struct.rtable, %struct.rtable* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %105 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %104, i32 0, i32 1
  store i32 32, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load i32, i32* @RTA_SRC, align 4
  %108 = load %struct.rtable*, %struct.rtable** %16, align 8
  %109 = getelementptr inbounds %struct.rtable, %struct.rtable* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %106, i32 %107, i64 %111)
  br label %113

113:                                              ; preds = %103, %91
  %114 = load %struct.rtable*, %struct.rtable** %16, align 8
  %115 = getelementptr inbounds %struct.rtable, %struct.rtable* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = load i32, i32* @RTA_OIF, align 4
  %123 = load %struct.rtable*, %struct.rtable** %16, align 8
  %124 = getelementptr inbounds %struct.rtable, %struct.rtable* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @NLA_PUT_U32(%struct.sk_buff* %121, i32 %122, i64 %129)
  br label %131

131:                                              ; preds = %120, %113
  %132 = load %struct.rtable*, %struct.rtable** %16, align 8
  %133 = getelementptr inbounds %struct.rtable, %struct.rtable* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = load i32, i32* @RTA_PREFSRC, align 4
  %140 = load %struct.rtable*, %struct.rtable** %16, align 8
  %141 = getelementptr inbounds %struct.rtable, %struct.rtable* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %138, i32 %139, i64 %142)
  br label %161

144:                                              ; preds = %131
  %145 = load %struct.rtable*, %struct.rtable** %16, align 8
  %146 = getelementptr inbounds %struct.rtable, %struct.rtable* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.rtable*, %struct.rtable** %16, align 8
  %149 = getelementptr inbounds %struct.rtable, %struct.rtable* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %147, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = load i32, i32* @RTA_PREFSRC, align 4
  %156 = load %struct.rtable*, %struct.rtable** %16, align 8
  %157 = getelementptr inbounds %struct.rtable, %struct.rtable* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %154, i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %153, %144
  br label %161

161:                                              ; preds = %160, %137
  %162 = load %struct.rtable*, %struct.rtable** %16, align 8
  %163 = getelementptr inbounds %struct.rtable, %struct.rtable* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.rtable*, %struct.rtable** %16, align 8
  %166 = getelementptr inbounds %struct.rtable, %struct.rtable* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %171 = load i32, i32* @RTA_GATEWAY, align 4
  %172 = load %struct.rtable*, %struct.rtable** %16, align 8
  %173 = getelementptr inbounds %struct.rtable, %struct.rtable* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %170, i32 %171, i64 %174)
  br label %176

176:                                              ; preds = %169, %161
  %177 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %178 = load %struct.rtable*, %struct.rtable** %16, align 8
  %179 = getelementptr inbounds %struct.rtable, %struct.rtable* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @rtnetlink_put_metrics(%struct.sk_buff* %177, i32 %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %270

186:                                              ; preds = %176
  %187 = load %struct.rtable*, %struct.rtable** %16, align 8
  %188 = getelementptr inbounds %struct.rtable, %struct.rtable* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %23, align 4
  %192 = load %struct.rtable*, %struct.rtable** %16, align 8
  %193 = getelementptr inbounds %struct.rtable, %struct.rtable* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %186
  %199 = load %struct.rtable*, %struct.rtable** %16, align 8
  %200 = getelementptr inbounds %struct.rtable, %struct.rtable* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @jiffies, align 8
  %205 = sub nsw i64 %203, %204
  br label %207

206:                                              ; preds = %186
  br label %207

207:                                              ; preds = %206, %198
  %208 = phi i64 [ %205, %198 ], [ 0, %206 ]
  store i64 %208, i64* %19, align 8
  %209 = load %struct.rtable*, %struct.rtable** %16, align 8
  %210 = getelementptr inbounds %struct.rtable, %struct.rtable* %209, i32 0, i32 7
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = icmp ne %struct.TYPE_7__* %211, null
  br i1 %212, label %213, label %239

213:                                              ; preds = %207
  %214 = load %struct.rtable*, %struct.rtable** %16, align 8
  %215 = getelementptr inbounds %struct.rtable, %struct.rtable* %214, i32 0, i32 7
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %20, align 4
  %219 = load %struct.rtable*, %struct.rtable** %16, align 8
  %220 = getelementptr inbounds %struct.rtable, %struct.rtable* %219, i32 0, i32 7
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %213
  %226 = load %struct.rtable*, %struct.rtable** %16, align 8
  %227 = getelementptr inbounds %struct.rtable, %struct.rtable* %226, i32 0, i32 7
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %21, align 4
  %231 = call i32 (...) @get_seconds()
  %232 = load %struct.rtable*, %struct.rtable** %16, align 8
  %233 = getelementptr inbounds %struct.rtable, %struct.rtable* %232, i32 0, i32 7
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %231, %236
  store i32 %237, i32* %22, align 4
  br label %238

238:                                              ; preds = %225, %213
  br label %239

239:                                              ; preds = %238, %207
  %240 = load %struct.rtable*, %struct.rtable** %16, align 8
  %241 = getelementptr inbounds %struct.rtable, %struct.rtable* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %247 = load i32, i32* @RTA_IIF, align 4
  %248 = load %struct.rtable*, %struct.rtable** %16, align 8
  %249 = getelementptr inbounds %struct.rtable, %struct.rtable* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @NLA_PUT_U32(%struct.sk_buff* %246, i32 %247, i64 %251)
  br label %253

253:                                              ; preds = %245, %239
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = load %struct.rtable*, %struct.rtable** %16, align 8
  %256 = getelementptr inbounds %struct.rtable, %struct.rtable* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32, i32* %20, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %22, align 4
  %261 = load i64, i64* %19, align 8
  %262 = load i32, i32* %23, align 4
  %263 = call i64 @rtnl_put_cacheinfo(%struct.sk_buff* %254, %struct.TYPE_10__* %257, i32 %258, i32 %259, i32 %260, i64 %261, i32 %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %253
  br label %270

266:                                              ; preds = %253
  %267 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %268 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %269 = call i32 @nlmsg_end(%struct.sk_buff* %267, %struct.nlmsghdr* %268)
  store i32 %269, i32* %8, align 4
  br label %276

270:                                              ; preds = %265, %185
  %271 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %272 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %273 = call i32 @nlmsg_cancel(%struct.sk_buff* %271, %struct.nlmsghdr* %272)
  %274 = load i32, i32* @EMSGSIZE, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %270, %266, %34
  %277 = load i32, i32* %8, align 4
  ret i32 %277
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @NLA_PUT_BE32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @rtnetlink_put_metrics(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i64 @rtnl_put_cacheinfo(%struct.sk_buff*, %struct.TYPE_10__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
