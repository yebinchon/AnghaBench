; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_tx_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_tx_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, i32, i32, %struct.wireless_dev** }
%struct.wireless_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_ATTR_DONT_WAIT_FOR_ACK = common dso_local global i64 0, align 8
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_DURATION = common dso_local global i64 0, align 8
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@NL80211_MIN_REMAIN_ON_CHANNEL_TIME = common dso_local global i32 0, align 4
@NL80211_ATTR_OFFCHANNEL_TX_OK = common dso_local global i64 0, align 8
@NL80211_ATTR_TX_NO_CCK_RATE = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tx_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tx_mgmt(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 3
  %19 = load %struct.wireless_dev**, %struct.wireless_dev*** %18, align 8
  %20 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %19, i64 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  %22 = bitcast %struct.wireless_dev* %21 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %6, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 3
  %25 = load %struct.wireless_dev**, %struct.wireless_dev*** %24, align 8
  %26 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %25, i64 1
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %7, align 8
  store i8* null, i8** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NL80211_ATTR_DONT_WAIT_FOR_ACK, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %221

44:                                               ; preds = %2
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %221

54:                                               ; preds = %44
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %59 [
    i32 128, label %58
    i32 135, label %58
    i32 131, label %58
    i32 134, label %58
    i32 133, label %58
    i32 132, label %58
    i32 129, label %58
    i32 130, label %58
  ]

58:                                               ; preds = %54, %54, %54, %54, %54, %54, %54, %54
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %221

62:                                               ; preds = %58
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %62
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %72 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %221

81:                                               ; preds = %70
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @nla_get_u32(i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @NL80211_MIN_REMAIN_ON_CHANNEL_TIME, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %95 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %93, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92, %81
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %221

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %62
  %104 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %105 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @NL80211_ATTR_OFFCHANNEL_TX_OK, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %114 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %221

123:                                              ; preds = %112, %103
  %124 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %125 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @NL80211_ATTR_TX_NO_CCK_RATE, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nla_get_flag(i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %132 = bitcast %struct.cfg80211_registered_device* %131 to %struct.wireless_dev*
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = call i32 @nl80211_parse_chandef(%struct.wireless_dev* %132, %struct.genl_info* %133, %struct.cfg80211_chan_def* %8)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %221

139:                                              ; preds = %123
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call %struct.sk_buff* @nlmsg_new(i32 %143, i32 %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %12, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %221

151:                                              ; preds = %142
  %152 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %153 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %154 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %157 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NL80211_CMD_FRAME, align 4
  %160 = call i8* @nl80211hdr_put(%struct.sk_buff* %152, i32 %155, i32 %158, i32 0, i32 %159)
  store i8* %160, i8** %10, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = call i64 @IS_ERR(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @PTR_ERR(i8* %165)
  store i32 %166, i32* %9, align 4
  br label %217

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %139
  %169 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %170 = bitcast %struct.cfg80211_registered_device* %169 to %struct.wireless_dev*
  %171 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %172 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %177 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @nla_data(i32 %181)
  %183 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %184 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @nla_len(i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @cfg80211_mlme_mgmt_tx(%struct.wireless_dev* %170, %struct.wireless_dev* %171, i32 %173, i32 %174, i32 %175, i32 %182, i32 %189, i32 %190, i32 %191, i32* %11)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %168
  br label %217

196:                                              ; preds = %168
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %199, label %213

199:                                              ; preds = %196
  %200 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %201 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i64 @nla_put_u64(%struct.sk_buff* %200, i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %214

206:                                              ; preds = %199
  %207 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @genlmsg_end(%struct.sk_buff* %207, i8* %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %211 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %212 = call i32 @genlmsg_reply(%struct.sk_buff* %210, %struct.genl_info* %211)
  store i32 %212, i32* %3, align 4
  br label %221

213:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %221

214:                                              ; preds = %205
  %215 = load i32, i32* @ENOBUFS, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %214, %195, %164
  %218 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %219 = call i32 @nlmsg_free(%struct.sk_buff* %218)
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %217, %213, %206, %148, %137, %120, %99, %78, %59, %51, %41
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @nla_get_flag(i32) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.wireless_dev*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @cfg80211_mlme_mgmt_tx(%struct.wireless_dev*, %struct.wireless_dev*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nla_data(i32) #1

declare dso_local i32 @nla_len(i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
