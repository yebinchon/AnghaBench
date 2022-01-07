; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_netdev_notifier_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_netdev_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { %struct.TYPE_9__, i32*, i32, %struct.wireless_dev* }
%struct.TYPE_9__ = type { i32 }
%struct.wireless_dev = type { i64, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, %struct.net_device*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@wiphy_type = common dso_local global i32 0, align 4
@wdev_cleanup_work = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"phy80211\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to add phy80211 symlink to netdev!\0A\00", align 1
@CFG80211_SME_IDLE = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@cfg80211_ethtool_ops = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@IFF_DONT_BRIDGE = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i32 0, align 4
@default_mesh_config = common dso_local global i32 0, align 4
@default_mesh_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cfg80211_netdev_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_netdev_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 3
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %9, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %18 = icmp ne %struct.wireless_dev* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %340

21:                                               ; preds = %3
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_15__* %24)
  store %struct.cfg80211_registered_device* %25, %struct.cfg80211_registered_device** %10, align 8
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i64, i64* %6, align 8
  switch i64 %33, label %338 [
    i64 135, label %34
    i64 133, label %37
    i64 136, label %155
    i64 137, label %159
    i64 131, label %172
    i64 132, label %260
    i64 134, label %292
  ]

34:                                               ; preds = %21
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %35, i32* @wiphy_type)
  br label %338

37:                                               ; preds = %21
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 17
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 8
  %43 = load i32, i32* @wdev_cleanup_work, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 16
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 15
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 14
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 13
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 4
  %68 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %69 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %68, i32 0, i32 7
  %70 = call i32 @list_add_rcu(i32* %67, i32* %69)
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %72 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.net_device*, %struct.net_device** %8, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %84 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i32 @sysfs_create_link(i32* %82, i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %37
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %37
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %94 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %93, i32 0, i32 11
  store %struct.net_device* %92, %struct.net_device** %94, align 8
  %95 = load i32, i32* @CFG80211_SME_IDLE, align 4
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 4
  %98 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %99 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %102 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %101, i32 0, i32 3
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %91
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  br label %115

112:                                              ; preds = %91
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %114 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %113, i32 0, i32 1
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 2
  store i32 -1, i32* %117, align 4
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = load %struct.net_device*, %struct.net_device** %8, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  store i32* @cfg80211_ethtool_ops, i32** %124, align 8
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %127 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 128
  br i1 %129, label %142, label %130

130:                                              ; preds = %125
  %131 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %132 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %139 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 130
  br i1 %141, label %142, label %154

142:                                              ; preds = %137, %130, %125
  %143 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %144 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %149 = load %struct.net_device*, %struct.net_device** %8, align 8
  %150 = call %struct.TYPE_16__* @netdev_extended(%struct.net_device* %149)
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %142, %137
  br label %338

155:                                              ; preds = %21
  %156 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %157 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %158 = call i32 @cfg80211_leave(%struct.cfg80211_registered_device* %156, %struct.wireless_dev* %157)
  br label %338

159:                                              ; preds = %21
  %160 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %161 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %162 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %160, i32 %164, i32 -1)
  %166 = load %struct.net_device*, %struct.net_device** %8, align 8
  %167 = call i32 @dev_hold(%struct.net_device* %166)
  %168 = load i32, i32* @cfg80211_wq, align 4
  %169 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %170 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %169, i32 0, i32 8
  %171 = call i32 @queue_work(i32 %168, i32* %170)
  br label %338

172:                                              ; preds = %21
  %173 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %174 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %173, i32 0, i32 8
  %175 = call i32 @cancel_work_sync(i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %179 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %178, i32 0, i32 0
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %182 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %186 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load %struct.net_device*, %struct.net_device** %8, align 8
  %189 = call i32 @dev_put(%struct.net_device* %188)
  br label %190

190:                                              ; preds = %177, %172
  %191 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %192 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %193 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %191, i32 %195, i32 1)
  %197 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %198 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %197)
  %199 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %200 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %199, i32 0, i32 0
  %201 = call i32 @mutex_lock(i32* %200)
  %202 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %203 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %202, i32 0, i32 5
  %204 = call i32 @mutex_lock(i32* %203)
  %205 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %206 = call i32 @wdev_lock(%struct.wireless_dev* %205)
  %207 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %208 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  switch i64 %209, label %210 [
  ]

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %213 = call i32 @wdev_unlock(%struct.wireless_dev* %212)
  %214 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %215 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %214, i32 0, i32 5
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %218 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %222 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %221, i32 0, i32 0
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %225 = call i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device* %224)
  %226 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %227 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 128
  br i1 %229, label %237, label %230

230:                                              ; preds = %211
  %231 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %232 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %235 = sext i32 %234 to i64
  %236 = icmp eq i64 %233, %235
  br i1 %236, label %237, label %259

237:                                              ; preds = %230, %211
  %238 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %239 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %238, i32 0, i32 3
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %259

244:                                              ; preds = %237
  %245 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %246 = load %struct.net_device*, %struct.net_device** %8, align 8
  %247 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %248 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %251 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @rdev_set_power_mgmt(%struct.cfg80211_registered_device* %245, %struct.net_device* %246, i32 %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %244
  %256 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %257 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %256, i32 0, i32 1
  store i32 0, i32* %257, align 8
  br label %258

258:                                              ; preds = %255, %244
  br label %259

259:                                              ; preds = %258, %237, %230
  br label %338

260:                                              ; preds = %21
  %261 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %262 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %261, i32 0, i32 0
  %263 = call i32 @mutex_lock(i32* %262)
  %264 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %265 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %264, i32 0, i32 4
  %266 = call i32 @list_empty(i32* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %260
  %269 = load %struct.net_device*, %struct.net_device** %8, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = call i32 @sysfs_remove_link(i32* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %273 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %274 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %273, i32 0, i32 4
  %275 = call i32 @list_del_rcu(i32* %274)
  %276 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %277 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 8
  %280 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %281 = call i32 @cfg80211_mlme_purge_registrations(%struct.wireless_dev* %280)
  br label %282

282:                                              ; preds = %268, %260
  %283 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %284 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %283, i32 0, i32 0
  %285 = call i32 @mutex_unlock(i32* %284)
  %286 = call i32 (...) @synchronize_rcu()
  %287 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %288 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %287, i32 0, i32 4
  %289 = call i32 @INIT_LIST_HEAD(i32* %288)
  %290 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %291 = call i32 @cfg80211_process_wdev_events(%struct.wireless_dev* %290)
  br label %338

292:                                              ; preds = %21
  %293 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %294 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %293, i32 0, i32 3
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %299 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = call i32 @BIT(i32 %301)
  %303 = and i32 %297, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %292
  %306 = load i32, i32* @EOPNOTSUPP, align 4
  %307 = sub nsw i32 0, %306
  %308 = call i32 @notifier_from_errno(i32 %307)
  store i32 %308, i32* %4, align 4
  br label %340

309:                                              ; preds = %292
  %310 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %311 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @rfkill_blocked(i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %309
  %316 = load i32, i32* @ERFKILL, align 4
  %317 = sub nsw i32 0, %316
  %318 = call i32 @notifier_from_errno(i32 %317)
  store i32 %318, i32* %4, align 4
  br label %340

319:                                              ; preds = %309
  %320 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %321 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %320, i32 0, i32 0
  %322 = call i32 @mutex_lock(i32* %321)
  %323 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %324 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %325 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = call i32 @cfg80211_can_add_interface(%struct.cfg80211_registered_device* %323, i32 %327)
  store i32 %328, i32* %11, align 4
  %329 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %330 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %329, i32 0, i32 0
  %331 = call i32 @mutex_unlock(i32* %330)
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %319
  %335 = load i32, i32* %11, align 4
  %336 = call i32 @notifier_from_errno(i32 %335)
  store i32 %336, i32* %4, align 4
  br label %340

337:                                              ; preds = %319
  br label %338

338:                                              ; preds = %21, %337, %282, %259, %159, %155, %154, %34
  %339 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %338, %334, %315, %305, %19
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_15__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_16__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @cfg80211_leave(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device*, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @rdev_set_power_mgmt(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @cfg80211_mlme_purge_registrations(%struct.wireless_dev*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @cfg80211_process_wdev_events(%struct.wireless_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @rfkill_blocked(i32) #1

declare dso_local i32 @cfg80211_can_add_interface(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
