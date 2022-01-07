; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ip_set*, %struct.sk_buff*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@IPSET_INVALID_ID = common dso_local global i8* null, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@DUMP_INIT = common dso_local global i64 0, align 8
@NLM_F_ACK = common dso_local global i32 0, align 4
@ip_set_max = common dso_local global i64 0, align 8
@DUMP_ONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"args[0]: %ld args[1]: %ld\0A\00", align 1
@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@DUMP_ALL = common dso_local global i64 0, align 8
@IPSET_DUMP_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"List set: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"reference set\0A\00", align 1
@IPSET_CMD_LIST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i32 0, align 4
@IPSET_ATTR_TYPENAME = common dso_local global i32 0, align 4
@IPSET_ATTR_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_REVISION = common dso_local global i32 0, align 4
@DUMP_LAST = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"release set %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"nlmsg_len: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ip_set_dump_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_dump_start(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ip_set*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %14 = load i8*, i8** @IPSET_INVALID_ID, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %6, align 8
  store %struct.ip_set* null, %struct.ip_set** %8, align 8
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %9, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @NETLINK_CB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NLM_F_MULTI, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %30 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DUMP_INIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %38 = call i32 @dump_init(%struct.netlink_callback* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %43 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.nlmsghdr* @nlmsg_hdr(i32 %44)
  store %struct.nlmsghdr* %45, %struct.nlmsghdr** %9, align 8
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %47 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NLM_F_ACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %54 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @netlink_ack(i32 %55, %struct.nlmsghdr* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %41
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  br label %372

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %64 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ip_set_max, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %348

71:                                               ; preds = %62
  %72 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %73 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DUMP_ONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %81 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  br label %88

86:                                               ; preds = %71
  %87 = load i64, i64* @ip_set_max, align 8
  br label %88

88:                                               ; preds = %86, %79
  %89 = phi i64 [ %85, %79 ], [ %87, %86 ]
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %313, %88
  %91 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %92 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %97 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %100)
  br label %102

102:                                              ; preds = %298, %90
  %103 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %104 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %305

110:                                              ; preds = %102
  %111 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %112 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %6, align 8
  %116 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %116, i64 %117
  %119 = load %struct.ip_set*, %struct.ip_set** %118, align 8
  store %struct.ip_set* %119, %struct.ip_set** %8, align 8
  %120 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %121 = icmp eq %struct.ip_set* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %110
  %123 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %124 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DUMP_ONE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @ENOENT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %12, align 4
  br label %348

133:                                              ; preds = %122
  br label %298

134:                                              ; preds = %110
  %135 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %136 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DUMP_ONE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %134
  %143 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %144 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DUMP_ALL, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %152 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IPSET_DUMP_LAST, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = icmp eq i32 %150, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %142
  br label %298

164:                                              ; preds = %142, %134
  %165 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %166 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %170 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %164
  %176 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @__ip_set_get(i64 %177)
  br label %179

179:                                              ; preds = %175, %164
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %182 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @NETLINK_CB(i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %189 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %188, i32 0, i32 1
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @IPSET_CMD_LIST, align 4
  %195 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %180, i64 %187, i32 %192, i32 %193, i32 %194)
  store %struct.nlmsghdr* %195, %struct.nlmsghdr** %9, align 8
  %196 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %197 = icmp ne %struct.nlmsghdr* %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %179
  %199 = load i32, i32* @EMSGSIZE, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %12, align 4
  br label %327

201:                                              ; preds = %179
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %204 = load i32, i32* @IPSET_PROTOCOL, align 4
  %205 = call i32 @NLA_PUT_U8(%struct.sk_buff* %202, i32 %203, i32 %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = load i32, i32* @IPSET_ATTR_SETNAME, align 4
  %208 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %209 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %206, i32 %207, i32 %210)
  %212 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %213 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  %216 = load i64, i64* %215, align 8
  switch i64 %216, label %252 [
    i64 0, label %217
  ]

217:                                              ; preds = %201
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = load i32, i32* @IPSET_ATTR_TYPENAME, align 4
  %220 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %221 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %220, i32 0, i32 3
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %218, i32 %219, i32 %224)
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = load i32, i32* @IPSET_ATTR_FAMILY, align 4
  %228 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %229 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @NLA_PUT_U8(%struct.sk_buff* %226, i32 %227, i32 %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = load i32, i32* @IPSET_ATTR_REVISION, align 4
  %234 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %235 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %234, i32 0, i32 3
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @NLA_PUT_U8(%struct.sk_buff* %232, i32 %233, i32 %238)
  %240 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %241 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %240, i32 0, i32 2
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32 (%struct.ip_set*, %struct.sk_buff*)*, i32 (%struct.ip_set*, %struct.sk_buff*)** %243, align 8
  %245 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %246 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %247 = call i32 %244(%struct.ip_set* %245, %struct.sk_buff* %246)
  store i32 %247, i32* %12, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %217
  br label %327

251:                                              ; preds = %217
  br label %252

252:                                              ; preds = %201, %251
  %253 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %254 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %253, i32 0, i32 1
  %255 = call i32 @read_lock_bh(i32* %254)
  %256 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %257 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %256, i32 0, i32 2
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)** %259, align 8
  %261 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %264 = call i32 %260(%struct.ip_set* %261, %struct.sk_buff* %262, %struct.netlink_callback* %263)
  store i32 %264, i32* %12, align 4
  %265 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %266 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %265, i32 0, i32 1
  %267 = call i32 @read_unlock_bh(i32* %266)
  %268 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %269 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %297, label %274

274:                                              ; preds = %252
  %275 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %276 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @DUMP_ONE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %274
  %283 = load i8*, i8** @IPSET_INVALID_ID, align 8
  %284 = ptrtoint i8* %283 to i64
  %285 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %286 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  store i64 %284, i64* %288, align 8
  br label %296

289:                                              ; preds = %274
  %290 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %291 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 1
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %293, align 8
  br label %296

296:                                              ; preds = %289, %282
  br label %297

297:                                              ; preds = %296, %252
  br label %327

298:                                              ; preds = %163, %133
  %299 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %300 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 1
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %302, align 8
  br label %102

305:                                              ; preds = %102
  %306 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %307 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @DUMP_ALL, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %323

313:                                              ; preds = %305
  %314 = load i64, i64* @DUMP_LAST, align 8
  %315 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %316 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 0
  store i64 %314, i64* %318, align 8
  %319 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %320 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 1
  store i64 0, i64* %322, align 8
  br label %90

323:                                              ; preds = %305
  br label %348

324:                                              ; No predecessors!
  %325 = load i32, i32* @EFAULT, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %12, align 4
  br label %327

327:                                              ; preds = %324, %297, %250, %198
  %328 = load i32, i32* %12, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %327
  %331 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %332 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 2
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %330, %327
  %338 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %339 = load i64, i64* %6, align 8
  %340 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %338, i64 %339
  %341 = load %struct.ip_set*, %struct.ip_set** %340, align 8
  %342 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %343)
  %345 = load i64, i64* %6, align 8
  %346 = call i32 @ip_set_put_byindex(i64 %345)
  br label %347

347:                                              ; preds = %337, %330
  br label %348

348:                                              ; preds = %347, %323, %130, %70
  %349 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %350 = icmp ne %struct.nlmsghdr* %349, null
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %353 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %354 = call i32 @nlmsg_end(%struct.sk_buff* %352, %struct.nlmsghdr* %353)
  %355 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %356 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %357)
  %359 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %360 = call i32 @dump_attrs(%struct.nlmsghdr* %359)
  br label %361

361:                                              ; preds = %351, %348
  %362 = load i32, i32* %12, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = load i32, i32* %12, align 4
  br label %370

366:                                              ; preds = %361
  %367 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %368 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  br label %370

370:                                              ; preds = %366, %364
  %371 = phi i32 [ %365, %364 ], [ %369, %366 ]
  store i32 %371, i32* %3, align 4
  br label %372

372:                                              ; preds = %370, %59
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i64 @NETLINK_CB(i32) #1

declare dso_local i32 @dump_init(%struct.netlink_callback*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(i32) #1

declare dso_local i32 @netlink_ack(i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @__ip_set_get(i64) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ip_set_put_byindex(i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @dump_attrs(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
