; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ULOG.c_ipt_ulog_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_ULOG.c_ipt_ulog_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.nlmsghdr*, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.nlmsghdr = type { i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.net_device = type { i64, i8* }
%struct.ipt_ulog_info = type { i64, i32, i8*, i32 }
%struct.TYPE_8__ = type { i64, i32, i8*, i64, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@ulog_buffers = common dso_local global %struct.TYPE_9__* null, align 8
@ulog_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ipt_ULOG: qlen %d, qthreshold %Zu\0A\00", align 1
@ULOG_NL_EVENT = common dso_local global i32 0, align 4
@ULOG_MAC_LEN = common dso_local global i64 0, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@flushtimeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NLMSG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ipt_ULOG: error during NLMSG_PUT\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ipt_ULOG: Error building netlink message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.ipt_ulog_info*, i8*)* @ipt_ulog_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipt_ulog_packet(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, %struct.ipt_ulog_info* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ipt_ulog_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca %struct.timeval, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.timeval, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.ipt_ulog_info* %4, %struct.ipt_ulog_info** %11, align 8
  store i8* %5, i8** %12, align 8
  %21 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %22 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ffs(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %19, align 4
  %26 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %27 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %6
  %31 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %32 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %6
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %44 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %16, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %16, align 8
  %48 = add i64 72, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @NLMSG_SPACE(i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ulog_buffers, align 8
  %52 = load i32, i32* %19, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %13, align 8
  %55 = call i32 @spin_lock_bh(i32* @ulog_lock)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %46
  %61 = load i64, i64* %15, align 8
  %62 = call i8* @ulog_alloc_skb(i64 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = icmp ne i8* %62, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %328

67:                                               ; preds = %60
  br label %94

68:                                               ; preds = %46
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %73 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @skb_tailroom(i8* %80)
  %82 = icmp ugt i64 %77, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %76, %68
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @ulog_send(i32 %84)
  %86 = load i64, i64* %15, align 8
  %87 = call i8* @ulog_alloc_skb(i64 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = icmp ne i8* %87, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %328

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %99 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ULOG_NL_EVENT, align 4
  %109 = load i64, i64* %16, align 8
  %110 = add i64 72, %109
  %111 = trunc i64 %110 to i32
  %112 = call %struct.nlmsghdr* @NLMSG_PUT(i8* %104, i32 0, i32 %107, i32 %108, i32 %111)
  store %struct.nlmsghdr* %112, %struct.nlmsghdr** %17, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %118 = call %struct.TYPE_8__* @NLMSG_DATA(%struct.nlmsghdr* %117)
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %14, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %94
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = call i32 @__net_timestamp(%struct.sk_buff* %125)
  br label %127

127:                                              ; preds = %124, %94
  %128 = load i64, i64* %16, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @ktime_to_timeval(i64 %134)
  %136 = bitcast %struct.timeval* %20 to i64*
  store i64 %135, i64* %136, align 4
  %137 = bitcast %struct.timeval* %18 to i8*
  %138 = bitcast %struct.timeval* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 8, i1 false)
  %139 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 10
  %143 = call i32 @put_unaligned(i32 %140, i32* %142)
  %144 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 9
  %148 = call i32 @put_unaligned(i32 %145, i32* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 8
  %154 = call i32 @put_unaligned(i32 %151, i32* %153)
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %127
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = call i32 @strncpy(i8* %163, i8* %164, i32 8)
  br label %187

166:                                              ; preds = %127
  %167 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %168 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %179 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strncpy(i8* %177, i8* %180, i32 8)
  br label %186

182:                                              ; preds = %166
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  store i8 0, i8* %185, align 1
  br label %186

186:                                              ; preds = %182, %174
  br label %187

187:                                              ; preds = %186, %160
  %188 = load %struct.net_device*, %struct.net_device** %9, align 8
  %189 = icmp ne %struct.net_device* %188, null
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load %struct.net_device*, %struct.net_device** %9, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %224

195:                                              ; preds = %190
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %195
  %204 = load %struct.net_device*, %struct.net_device** %9, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ULOG_MAC_LEN, align 8
  %208 = icmp sle i64 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %203
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %214 = call i32 @skb_mac_header(%struct.sk_buff* %213)
  %215 = load %struct.net_device*, %struct.net_device** %9, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @memcpy(i32 %212, i32 %214, i64 %217)
  %219 = load %struct.net_device*, %struct.net_device** %9, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  store i64 %221, i64* %223, align 8
  br label %227

224:                                              ; preds = %203, %195, %190, %187
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %209
  %228 = load %struct.net_device*, %struct.net_device** %9, align 8
  %229 = icmp ne %struct.net_device* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.net_device*, %struct.net_device** %9, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @strncpy(i8* %233, i8* %236, i32 8)
  br label %243

238:                                              ; preds = %227
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 0, i8* %242, align 1
  br label %243

243:                                              ; preds = %238, %230
  %244 = load %struct.net_device*, %struct.net_device** %10, align 8
  %245 = icmp ne %struct.net_device* %244, null
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 5
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.net_device*, %struct.net_device** %10, align 8
  %251 = getelementptr inbounds %struct.net_device, %struct.net_device* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @strncpy(i8* %249, i8* %252, i32 8)
  br label %259

254:                                              ; preds = %243
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 5
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  store i8 0, i8* %258, align 1
  br label %259

259:                                              ; preds = %254, %246
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* %16, align 8
  %265 = call i64 @skb_copy_bits(%struct.sk_buff* %260, i32 0, i32 %263, i64 %264)
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = call i32 (...) @BUG()
  br label %269

269:                                              ; preds = %267, %259
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %272, 1
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load i32, i32* @NLM_F_MULTI, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 2
  %278 = load %struct.nlmsghdr*, %struct.nlmsghdr** %277, align 8
  %279 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %275
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %274, %269
  %283 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 2
  store %struct.nlmsghdr* %283, %struct.nlmsghdr** %285, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = call i32 @timer_pending(%struct.TYPE_10__* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %304, label %290

290:                                              ; preds = %282
  %291 = load i64, i64* @jiffies, align 8
  %292 = load i32, i32* @flushtimeout, align 4
  %293 = load i32, i32* @HZ, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sdiv i32 %294, 100
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %291, %296
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  store i64 %297, i64* %300, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = call i32 @add_timer(%struct.TYPE_10__* %302)
  br label %304

304:                                              ; preds = %290, %282
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %309 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = icmp sge i32 %307, %310
  br i1 %311, label %312, label %324

312:                                              ; preds = %304
  %313 = load %struct.ipt_ulog_info*, %struct.ipt_ulog_info** %11, align 8
  %314 = getelementptr inbounds %struct.ipt_ulog_info, %struct.ipt_ulog_info* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 1
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = load i32, i32* @NLMSG_DONE, align 4
  %319 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %320 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %312
  %322 = load i32, i32* %19, align 4
  %323 = call i32 @ulog_send(i32 %322)
  br label %324

324:                                              ; preds = %321, %304
  %325 = call i32 @spin_unlock_bh(i32* @ulog_lock)
  br label %331

326:                                              ; No predecessors!
  %327 = call i32 @PRINTR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %91, %66
  %329 = call i32 @PRINTR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %330 = call i32 @spin_unlock_bh(i32* @ulog_lock)
  br label %331

331:                                              ; preds = %328, %324
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @NLMSG_SPACE(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @ulog_alloc_skb(i64) #1

declare dso_local i64 @skb_tailroom(i8*) #1

declare dso_local i32 @ulog_send(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.nlmsghdr* @NLMSG_PUT(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @ktime_to_timeval(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @timer_pending(%struct.TYPE_10__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @PRINTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
