; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_wx.c_r8192_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_wx.c_r8192_wx_set_enc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32, i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
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
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %29 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %30 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %28, %struct.iw_request_info* %29, %union.iwreq_data* %30, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([6 x i32]* @__const.r8192_wx_set_enc_ext.broadcast_addr to i8*), i64 24, i1 false)
  %34 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 24, i1 false)
  %35 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false)
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %37, %struct.iw_encode_ext** %15, align 8
  %38 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.iw_point*
  store %struct.iw_point* %39, %struct.iw_point** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %40 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %41 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %4
  %47 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %48 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46, %4
  %53 = load i32, i32* @KEY_TYPE_NA, align 4
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @CamResetAllEntry(%struct.net_device* %58)
  br label %195

60:                                               ; preds = %46
  %61 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %62 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @KEY_TYPE_CCMP, align 4
  %68 = sext i32 %67 to i64
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %71 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i64 [ %68, %66 ], [ %72, %69 ]
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %83, %73
  %87 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %88 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i64, i64* @IW_MODE_ADHOC, align 8
  %96 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100, %94, %86
  %105 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %106 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @KEY_TYPE_WEP104, align 4
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %113, %109, %104
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %118 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %115, %100
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %123 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %124 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i32* %122, i32 %125, i32 16)
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %121
  %132 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %133 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %138 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 13
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @KEY_TYPE_WEP104, align 4
  store i32 %142, i32* %18, align 4
  %143 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %144 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  %146 = load %struct.net_device*, %struct.net_device** %5, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %152 = call i32 @setKey(%struct.net_device* %146, i32 %147, i32 %148, i32 %149, i32* %150, i32 0, i32* %151)
  br label %194

153:                                              ; preds = %131, %121
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i32, i32* %18, align 4
  %158 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %159 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %18, align 4
  %164 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %166 = call i32 @setKey(%struct.net_device* %160, i32 %161, i32 %162, i32 %163, i32* %164, i32 0, i32* %165)
  br label %193

167:                                              ; preds = %153
  %168 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %169 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @KEY_TYPE_CCMP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %175 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %174, i32 0, i32 5
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.net_device*, %struct.net_device** %5, align 8
  %182 = call i32 @write_nic_byte(%struct.net_device* %181, i32 371, i32 1)
  br label %183

183:                                              ; preds = %180, %173, %167
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %188 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i32*
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %192 = call i32 @setKey(%struct.net_device* %184, i32 4, i32 %185, i32 %186, i32* %190, i32 0, i32* %191)
  br label %193

193:                                              ; preds = %183, %156
  br label %194

194:                                              ; preds = %193, %145
  br label %195

195:                                              ; preds = %194, %52
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 0
  %198 = call i32 @up(i32* %197)
  %199 = load i32, i32* %9, align 4
  ret i32 %199
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

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
