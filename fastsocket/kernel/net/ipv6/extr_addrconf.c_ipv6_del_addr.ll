; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_del_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, i64, %struct.inet6_dev*, i32, i32, %struct.inet6_ifaddr*, i32, i32, %struct.inet6_ifaddr*, %struct.inet6_ifaddr*, %struct.inet6_ifaddr* }
%struct.inet6_dev = type { %struct.TYPE_10__*, i32, %struct.inet6_ifaddr*, %struct.inet6_ifaddr* }
%struct.TYPE_10__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.rt6_info = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rt6_info* }
%struct.flowi = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.in6_addr }

@jiffies = common dso_local global i64 0, align 8
@ifa_state_lock = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_DEAD = common dso_local global i32 0, align 4
@addrconf_hash_lock = common dso_local global i32 0, align 4
@inet6_addr_lst = common dso_local global %struct.inet6_ifaddr** null, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@RTM_DELADDR = common dso_local global i32 0, align 4
@inet6addr_chain = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @ipv6_del_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_del_addr(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca %struct.inet6_ifaddr**, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.flowi, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %16 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %17 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %16, i32 0, i32 3
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  store %struct.inet6_dev* %18, %struct.inet6_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* @jiffies, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %21 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %20, i32 0, i32 5
  %22 = call i32 @ipv6_addr_hash(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = call i32 @spin_lock_bh(i32* @ifa_state_lock)
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %25 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %29 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 @spin_unlock_bh(i32* @ifa_state_lock)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %261

35:                                               ; preds = %1
  %36 = call i32 @write_lock_bh(i32* @addrconf_hash_lock)
  %37 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** @inet6_addr_lst, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %37, i64 %39
  store %struct.inet6_ifaddr** %40, %struct.inet6_ifaddr*** %4, align 8
  br label %41

41:                                               ; preds = %59, %35
  %42 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %4, align 8
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %42, align 8
  store %struct.inet6_ifaddr* %43, %struct.inet6_ifaddr** %3, align 8
  %44 = icmp ne %struct.inet6_ifaddr* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %48 = icmp eq %struct.inet6_ifaddr* %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 11
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %51, align 8
  %53 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %4, align 8
  store %struct.inet6_ifaddr* %52, %struct.inet6_ifaddr** %53, align 8
  %54 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %55 = call i32 @__in6_ifa_put(%struct.inet6_ifaddr* %54)
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 11
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %57, align 8
  br label %62

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %61 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %60, i32 0, i32 11
  store %struct.inet6_ifaddr** %61, %struct.inet6_ifaddr*** %4, align 8
  br label %41

62:                                               ; preds = %49, %41
  %63 = call i32 @write_unlock_bh(i32* @addrconf_hash_lock)
  %64 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %65 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %64, i32 0, i32 1
  %66 = call i32 @write_lock_bh(i32* %65)
  %67 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %68 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %67, i32 0, i32 2
  store %struct.inet6_ifaddr** %68, %struct.inet6_ifaddr*** %4, align 8
  br label %69

69:                                               ; preds = %164, %96, %62
  %70 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %4, align 8
  %71 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %70, align 8
  store %struct.inet6_ifaddr* %71, %struct.inet6_ifaddr** %3, align 8
  %72 = icmp ne %struct.inet6_ifaddr* %71, null
  br i1 %72, label %73, label %167

73:                                               ; preds = %69
  %74 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %75 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %76 = icmp eq %struct.inet6_ifaddr* %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %79 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %78, i32 0, i32 6
  %80 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %79, align 8
  %81 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %4, align 8
  store %struct.inet6_ifaddr* %80, %struct.inet6_ifaddr** %81, align 8
  %82 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %83 = call i32 @__in6_ifa_put(%struct.inet6_ifaddr* %82)
  %84 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %85 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %84, i32 0, i32 6
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %85, align 8
  %86 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %87 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IFA_F_PERMANENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92, %77
  br label %167

96:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  br label %69

97:                                               ; preds = %73
  %98 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %99 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFA_F_PERMANENT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %97
  %105 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %106 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %105, i32 0, i32 5
  %107 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %108 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %107, i32 0, i32 5
  %109 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %110 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ipv6_prefix_equal(i32* %106, i32* %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %162

114:                                              ; preds = %104
  %115 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %116 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IFA_F_PERMANENT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  store i32 1, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %167

125:                                              ; preds = %121
  br label %161

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 -1, i32* %9, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %132 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %131, i32 0, i32 7
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %135 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @HZ, align 8
  %138 = call i64 @addrconf_timeout_fixup(i32 %136, i64 %137)
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %141 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* @HZ, align 8
  %145 = mul i64 %143, %144
  %146 = add i64 %142, %145
  %147 = call i64 @time_before(i64 %139, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %130
  %150 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %151 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* @HZ, align 8
  %155 = mul i64 %153, %154
  %156 = add i64 %152, %155
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %149, %130
  %158 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %159 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %158, i32 0, i32 7
  %160 = call i32 @spin_unlock(i32* %159)
  br label %161

161:                                              ; preds = %157, %125
  br label %162

162:                                              ; preds = %161, %104
  br label %163

163:                                              ; preds = %162, %97
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %166 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %165, i32 0, i32 6
  store %struct.inet6_ifaddr** %166, %struct.inet6_ifaddr*** %4, align 8
  br label %69

167:                                              ; preds = %124, %95, %69
  %168 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %169 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %168, i32 0, i32 1
  %170 = call i32 @write_unlock_bh(i32* %169)
  %171 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %172 = call i32 @addrconf_del_timer(%struct.inet6_ifaddr* %171)
  %173 = load i32, i32* @RTM_DELADDR, align 4
  %174 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %175 = call i32 @ipv6_ifa_notify(i32 %173, %struct.inet6_ifaddr* %174)
  %176 = load i32, i32* @NETDEV_DOWN, align 4
  %177 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %178 = call i32 @atomic_notifier_call_chain(i32* @inet6addr_chain, i32 %176, %struct.inet6_ifaddr* %177)
  %179 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %180 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IFA_F_PERMANENT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %258

185:                                              ; preds = %167
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %188, label %258

188:                                              ; preds = %185
  %189 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %190 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %189, i32 0, i32 3
  %191 = load %struct.inet6_dev*, %struct.inet6_dev** %190, align 8
  %192 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %191, i32 0, i32 0
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = call %struct.net* @dev_net(%struct.TYPE_10__* %193)
  store %struct.net* %194, %struct.net** %14, align 8
  %195 = bitcast %struct.flowi* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %195, i8 0, i64 8, i1 false)
  %196 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %197 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %196, i32 0, i32 5
  %198 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %199 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ipv6_addr_prefix(%struct.in6_addr* %12, i32* %197, i32 %200)
  %202 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %203 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %202, i32 0, i32 3
  %204 = load %struct.inet6_dev*, %struct.inet6_dev** %203, align 8
  %205 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = bitcast %struct.in6_addr* %212 to i8*
  %214 = bitcast %struct.in6_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %213, i8* align 4 %214, i64 4, i1 false)
  %215 = load %struct.net*, %struct.net** %14, align 8
  %216 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %217 = call i64 @ip6_route_lookup(%struct.net* %215, %struct.flowi* %15, i32 %216)
  %218 = inttoptr i64 %217 to %struct.rt6_info*
  store %struct.rt6_info* %218, %struct.rt6_info** %13, align 8
  %219 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %220 = load %struct.net*, %struct.net** %14, align 8
  %221 = getelementptr inbounds %struct.net, %struct.net* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load %struct.rt6_info*, %struct.rt6_info** %222, align 8
  %224 = icmp ne %struct.rt6_info* %219, %223
  br i1 %224, label %225, label %253

225:                                              ; preds = %188
  %226 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %227 = call i64 @addrconf_is_prefix_route(%struct.rt6_info* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %225
  %230 = load i32, i32* %9, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %234 = call i32 @ip6_del_rt(%struct.rt6_info* %233)
  store %struct.rt6_info* null, %struct.rt6_info** %13, align 8
  br label %252

235:                                              ; preds = %229
  %236 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %237 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @RTF_EXPIRES, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %235
  %243 = load i64, i64* %10, align 8
  %244 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %245 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* @RTF_EXPIRES, align 4
  %247 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %248 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %242, %235
  br label %252

252:                                              ; preds = %251, %232
  br label %253

253:                                              ; preds = %252, %225, %188
  %254 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %255 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = call i32 @dst_release(i32* %256)
  br label %258

258:                                              ; preds = %253, %185, %167
  %259 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %260 = call i32 @rt6_remove_prefsrc(%struct.inet6_ifaddr* %259)
  br label %261

261:                                              ; preds = %258, %34
  %262 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %263 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %262)
  ret void
}

declare dso_local i32 @ipv6_addr_hash(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @ipv6_prefix_equal(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @addrconf_timeout_fixup(i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @addrconf_del_timer(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.inet6_ifaddr*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ipv6_addr_prefix(%struct.in6_addr*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ip6_route_lookup(%struct.net*, %struct.flowi*, i32) #1

declare dso_local i64 @addrconf_is_prefix_route(%struct.rt6_info*) #1

declare dso_local i32 @ip6_del_rt(%struct.rt6_info*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @rt6_remove_prefsrc(%struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
