; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_get_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.get_key_cookie = type { i32, i64, %struct.sk_buff* }

@NL80211_ATTR_KEY_IDX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_TYPE = common dso_local global i64 0, align 8
@NUM_NL80211_KEYTYPES = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_GROUP = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_KEY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@get_key_callback = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.get_key_cookie, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 3
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = bitcast %struct.net_device* %20 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 3
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %27 = bitcast %struct.get_key_cookie* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @nla_get_u8(i64 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %2
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 5
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %221

49:                                               ; preds = %43
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32* @nla_data(i64 %63)
  store i32* %64, i32** %10, align 8
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %72 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %65
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_get_u32(i64 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* @NUM_NL80211_KEYTYPES, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %221

92:                                               ; preds = %78
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* @NL80211_KEYTYPE_GROUP, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @NL80211_KEYTYPE_PAIRWISE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %221

103:                                              ; preds = %96, %92
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @NL80211_KEYTYPE_PAIRWISE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %103, %65
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %221

118:                                              ; preds = %108
  %119 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.sk_buff* @nlmsg_new(i32 %119, i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %14, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %221

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %129 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %130 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %133 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @NL80211_CMD_NEW_KEY, align 4
  %136 = call i8* @nl80211hdr_put(%struct.sk_buff* %128, i32 %131, i32 %134, i32 0, i32 %135)
  store i8* %136, i8** %13, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %3, align 4
  br label %221

143:                                              ; preds = %127
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 2
  store %struct.sk_buff* %144, %struct.sk_buff** %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 0
  store i32 %146, i32* %147, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %149 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %150 = load %struct.net_device*, %struct.net_device** %8, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @nla_put_u32(%struct.sk_buff* %148, i32 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %143
  %156 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %157 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @nla_put_u8(%struct.sk_buff* %156, i64 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155, %143
  br label %214

162:                                              ; preds = %155
  %163 = load i32*, i32** %10, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %167 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %168 = load i32, i32* @ETH_ALEN, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = call i64 @nla_put(%struct.sk_buff* %166, i64 %167, i32 %168, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %214

173:                                              ; preds = %165, %162
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %181 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = load i32, i32* @ENOENT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %221

190:                                              ; preds = %179, %176, %173
  %191 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %192 = bitcast %struct.cfg80211_registered_device* %191 to %struct.net_device*
  %193 = load %struct.net_device*, %struct.net_device** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* @get_key_callback, align 4
  %198 = call i32 @rdev_get_key(%struct.net_device* %192, %struct.net_device* %193, i32 %194, i32 %195, i32* %196, %struct.get_key_cookie* %12, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  br label %217

202:                                              ; preds = %190
  %203 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %214

207:                                              ; preds = %202
  %208 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 @genlmsg_end(%struct.sk_buff* %208, i8* %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %212 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %213 = call i32 @genlmsg_reply(%struct.sk_buff* %211, %struct.genl_info* %212)
  store i32 %213, i32* %3, align 4
  br label %221

214:                                              ; preds = %206, %172, %161
  %215 = load i32, i32* @ENOBUFS, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %201
  %218 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %219 = call i32 @nlmsg_free(%struct.sk_buff* %218)
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %217, %207, %187, %140, %124, %115, %100, %89, %46
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nla_get_u8(i64) #2

declare dso_local i32* @nla_data(i64) #2

declare dso_local i64 @nla_get_u32(i64) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i64, i32) #2

declare dso_local i64 @nla_put(%struct.sk_buff*, i64, i32, i32*) #2

declare dso_local i32 @rdev_get_key(%struct.net_device*, %struct.net_device*, i32, i32, i32*, %struct.get_key_cookie*, i32) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
