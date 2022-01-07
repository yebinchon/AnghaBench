; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.ieee80211_mgd_auth_data*, i32, i64, i64 }
%struct.ieee80211_mgd_auth_data = type { i64, i32, %struct.TYPE_7__*, i32, i32, i32*, i32, i32*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_auth_request = type { i32, i32, i32, i32, %struct.TYPE_7__*, i64, i32, i64, i64 }

@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_FT = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i32 0, align 4
@WLAN_AUTH_SAE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"authenticate with %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_auth(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_auth_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_auth_request*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.ieee80211_mgd_auth_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_auth_request* %1, %struct.cfg80211_auth_request** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %6, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.ieee80211_if_managed* %19, %struct.ieee80211_if_managed** %7, align 8
  %20 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %21 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %42 [
    i32 130, label %23
    i32 128, label %25
    i32 132, label %36
    i32 131, label %38
    i32 129, label %40
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  store i32 %24, i32* %9, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %291

34:                                               ; preds = %25
  %35 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %2
  %37 = load i32, i32* @WLAN_AUTH_FT, align 4
  store i32 %37, i32* %9, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load i32, i32* @WLAN_AUTH_LEAP, align 4
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* @WLAN_AUTH_SAE, align 4
  store i32 %41, i32* %9, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %291

45:                                               ; preds = %40, %38, %36, %34, %23
  %46 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 72, %49
  %51 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.ieee80211_mgd_auth_data* @kzalloc(i32 %56, i32 %57)
  store %struct.ieee80211_mgd_auth_data* %58, %struct.ieee80211_mgd_auth_data** %8, align 8
  %59 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %60 = icmp ne %struct.ieee80211_mgd_auth_data* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %45
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %291

64:                                               ; preds = %45
  %65 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %68, i32 0, i32 2
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %71 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 4
  br i1 %73, label %74, label %112

74:                                               ; preds = %64
  %75 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %95 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 4
  %98 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %99 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 4
  %102 = call i32 @memcpy(i32* %93, i64 %97, i32 %101)
  %103 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %104 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %74, %64
  %113 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %114 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %112
  %118 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %119 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %124 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %131 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %134 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @memcpy(i32* %129, i64 %132, i32 %135)
  %137 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %138 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %142 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %122, %117, %112
  %146 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %147 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %145
  %151 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %152 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %157 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %162 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %165 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %170 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %173 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @memcpy(i32* %168, i64 %171, i32 %174)
  br label %176

176:                                              ; preds = %155, %150, %145
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %179 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %180, i32 0, i32 0
  %182 = call i32 @mutex_lock(i32* %181)
  %183 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %184 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %183, i32 0, i32 1
  %185 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %184, align 8
  %186 = icmp ne %struct.ieee80211_mgd_auth_data* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %176
  %188 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %188, i32 0, i32 1
  %190 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %189, align 8
  %191 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187, %176
  %195 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %187
  %200 = load i32, i32* @EBUSY, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %10, align 4
  br label %283

202:                                              ; preds = %194
  %203 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %203, i32 0, i32 1
  %205 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %204, align 8
  %206 = icmp ne %struct.ieee80211_mgd_auth_data* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %209 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %208, i32 0)
  br label %210

210:                                              ; preds = %207, %202
  %211 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %212 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %213 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %212, i32 0, i32 1
  store %struct.ieee80211_mgd_auth_data* %211, %struct.ieee80211_mgd_auth_data** %213, align 8
  %214 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %210
  %219 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %220 = zext i32 %219 to i64
  %221 = call i8* @llvm.stacksave()
  store i8* %221, i8** %12, align 8
  %222 = alloca i32, i64 %220, align 16
  store i64 %220, i64* %13, align 8
  %223 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %224 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %225 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %226 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %223, i32 %224, i32 %225, i32 0, i32* %222)
  %227 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %228 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = mul nuw i64 4, %220
  %231 = trunc i64 %230 to i32
  %232 = call i32 @__cfg80211_send_deauth(i32 %229, i32* %222, i32 %231)
  %233 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %233)
  br label %234

234:                                              ; preds = %218, %210
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %236 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %237 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %236, i32 0, i32 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %240)
  %242 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %243 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %244 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %243, i32 0, i32 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = call i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data* %242, %struct.TYPE_7__* %245, i32 0)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %234
  br label %272

250:                                              ; preds = %234
  %251 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %252 = call i32 @ieee80211_probe_auth(%struct.ieee80211_sub_if_data* %251)
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %257 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %258 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %257, i32 0, i32 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data* %256, i32 %261)
  br label %272

263:                                              ; preds = %250
  %264 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %265 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %269 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %268, i32 0, i32 2
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = call i32 @cfg80211_ref_bss(i32 %267, %struct.TYPE_7__* %270)
  store i32 0, i32* %10, align 4
  br label %286

272:                                              ; preds = %255, %249
  %273 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %274 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @ETH_ALEN, align 4
  %277 = call i32 @memset(i32 %275, i32 0, i32 %276)
  %278 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %279 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %280 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %278, i32 %279)
  %281 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %282 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %281, i32 0, i32 1
  store %struct.ieee80211_mgd_auth_data* null, %struct.ieee80211_mgd_auth_data** %282, align 8
  br label %283

283:                                              ; preds = %272, %199
  %284 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %285 = call i32 @kfree(%struct.ieee80211_mgd_auth_data* %284)
  br label %286

286:                                              ; preds = %283, %263
  %287 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %288 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %287, i32 0, i32 0
  %289 = call i32 @mutex_unlock(i32* %288)
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %286, %61, %42, %31
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local %struct.ieee80211_mgd_auth_data* @kzalloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @__cfg80211_send_deauth(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ieee80211_probe_auth(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @cfg80211_ref_bss(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_mgd_auth_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
