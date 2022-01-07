; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_set_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_set_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i64* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"set_encode_ext flags[%d] alg[%d] keylen[%d]\0A\00", align 1
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@NUM_WEPKEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setting default key (%d)\0A\00", align 1
@DIDmib_dot11smt_dot11PrivacyTable_dot11WEPDefaultKeyID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"asked to set a non wep key :(\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Set WEP key (%d)\0A\00", align 1
@DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey0 = common dso_local global i32 0, align 4
@DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey1 = common dso_local global i32 0, align 4
@DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey2 = common dso_local global i32 0, align 4
@DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey3 = common dso_local global i32 0, align 4
@DIDmsg_dot11req_mibset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"result (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @p80211wext_set_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_set_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iw_point*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %21, %struct.iw_encode_ext** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.iw_point*
  store %struct.iw_point* %23, %struct.iw_point** %15, align 8
  %24 = load %struct.iw_point*, %struct.iw_point** %15, align 8
  %25 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %30 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %33 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %37 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39)
  %41 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %42 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @NUM_WEPKEYS, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %186

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %16, align 4
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = load i32, i32* @DIDmib_dot11smt_dot11PrivacyTable_dot11WEPDefaultKeyID, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @p80211wext_dorequest(%struct.TYPE_11__* %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %186

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %4
  %78 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %79 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %184

84:                                               ; preds = %77
  %85 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %86 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %186

94:                                               ; preds = %84
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @NUM_WEPKEYS, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %97
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %186

107:                                              ; preds = %100
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %94
  %112 = load i32, i32* %16, align 4
  %113 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %115 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 %116, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %131 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %134 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @memcpy(i32 %129, i32 %132, i64 %135)
  %137 = call i32 @memset(%struct.TYPE_12__* %12, i32 0, i32 8)
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = bitcast i32* %139 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %13, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %146 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %149 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @memcpy(i32 %144, i32 %147, i64 %150)
  %152 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %153 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load i32, i32* %16, align 4
  switch i32 %158, label %175 [
    i32 0, label %159
    i32 1, label %163
    i32 2, label %167
    i32 3, label %171
  ]

159:                                              ; preds = %111
  %160 = load i32, i32* @DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey0, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %176

163:                                              ; preds = %111
  %164 = load i32, i32* @DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey1, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %176

167:                                              ; preds = %111
  %168 = load i32, i32* @DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey2, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %176

171:                                              ; preds = %111
  %172 = load i32, i32* @DIDmib_dot11smt_dot11WEPDefaultKeysTable_dot11WEPDefaultKey3, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %176

175:                                              ; preds = %111
  br label %176

176:                                              ; preds = %175, %171, %167, %163, %159
  %177 = load i32, i32* @DIDmsg_dot11req_mibset, align 4
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %177, i32* %178, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %180 = bitcast %struct.TYPE_12__* %12 to i32*
  %181 = call i32 @p80211req_dorequest(%struct.TYPE_11__* %179, i32* %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %176, %77
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %104, %90, %73, %57
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @p80211wext_dorequest(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @p80211req_dorequest(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
