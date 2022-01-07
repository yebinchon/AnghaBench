; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_wx.c_r8192_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_wx.c_r8192_wx_set_enc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32, i32, i64, i32, i64 }
%struct.iw_encode_ext = type { i64, i32, i32, i32 }

@__const.r8192_wx_set_enc_ext.broadcast_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@KEY_TYPE_NA = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@KEY_TYPE_CCMP = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@KEY_TYPE_WEP40 = common dso_local global i32 0, align 4
@KEY_TYPE_WEP104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8192_wx_set_enc_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8192_wx_set_enc_ext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_device*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca [6 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.iw_encode_ext*, align 8
  %16 = alloca %struct.iw_point*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %20)
  store %struct.r8192_priv* %21, %struct.r8192_priv** %10, align 8
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 1
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %23, align 8
  store %struct.ieee80211_device* %24, %struct.ieee80211_device** %11, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = call i32 @down(i32* %26)
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %29, align 8
  %31 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %32 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %30, %struct.iw_request_info* %31, %union.iwreq_data* %32, i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([6 x i32]* @__const.r8192_wx_set_enc_ext.broadcast_addr to i8*), i64 24, i1 false)
  %36 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 24, i1 false)
  %37 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 16, i1 false)
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %39, %struct.iw_encode_ext** %15, align 8
  %40 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %41 = bitcast %union.iwreq_data* %40 to %struct.iw_point*
  store %struct.iw_point* %41, %struct.iw_point** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %42 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %43 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %4
  %49 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %50 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %4
  %55 = load i32, i32* @KEY_TYPE_NA, align 4
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @CamResetAllEntry(%struct.net_device* %60)
  br label %172

62:                                               ; preds = %48
  %63 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %64 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @KEY_TYPE_CCMP, align 4
  %70 = sext i32 %69 to i64
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %73 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i64 [ %70, %68 ], [ %74, %71 ]
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %79 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %90 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load i64, i64* @IW_MODE_ADHOC, align 8
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102, %96, %88
  %107 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %108 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @KEY_TYPE_WEP104, align 4
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %115, %111, %106
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %120 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %121)
  br label %123

123:                                              ; preds = %117, %102
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %125 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %126 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i32* %124, i32 %127, i32 16)
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %123
  %134 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %135 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %145 = call i32 @setKey(%struct.net_device* %139, i32 %140, i32 %141, i32 %142, i32* %143, i32 0, i32* %144)
  br label %171

146:                                              ; preds = %133, %123
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %152 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %159 = call i32 @setKey(%struct.net_device* %153, i32 %154, i32 %155, i32 %156, i32* %157, i32 0, i32* %158)
  br label %170

160:                                              ; preds = %146
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %165 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %169 = call i32 @setKey(%struct.net_device* %161, i32 4, i32 %162, i32 %163, i32* %167, i32 0, i32* %168)
  br label %170

170:                                              ; preds = %160, %149
  br label %171

171:                                              ; preds = %170, %138
  br label %172

172:                                              ; preds = %171, %54
  %173 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %174 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %173, i32 0, i32 0
  %175 = call i32 @up(i32* %174)
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CamResetAllEntry(%struct.net_device*) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
