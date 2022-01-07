; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_mesh_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_mesh_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mesh_setup = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_MESH_SETUP_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_SETUP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nl80211_mesh_setup_params_policy = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC = common dso_local global i64 0, align 8
@IEEE80211_SYNC_METHOD_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL = common dso_local global i64 0, align 8
@IEEE80211_PATH_PROTOCOL_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_PATH_PROTOCOL_HWMP = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC = common dso_local global i64 0, align 8
@IEEE80211_PATH_METRIC_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_PATH_METRIC_AIRTIME = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_IE = common dso_local global i64 0, align 8
@NL80211_MESH_SETUP_USERSPACE_MPM = common dso_local global i64 0, align 8
@NL80211_FEATURE_USERSPACE_MPM = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_USERSPACE_AUTH = common dso_local global i64 0, align 8
@NL80211_MESH_SETUP_USERSPACE_AMPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.mesh_setup*)* @nl80211_parse_mesh_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_mesh_setup(%struct.genl_info* %0, %struct.mesh_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.mesh_setup*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.mesh_setup* %1, %struct.mesh_setup** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %12, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, i64 0
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load i32, i32* @NL80211_MESH_SETUP_ATTR_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %170

31:                                               ; preds = %2
  %32 = load i32, i32* @NL80211_MESH_SETUP_ATTR_MAX, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @nl80211_mesh_setup_params_policy, align 4
  %40 = call i64 @nla_parse_nested(%struct.nlattr** %20, i32 %32, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %170

45:                                               ; preds = %31
  %46 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i64 @nla_get_u8(%struct.nlattr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @IEEE80211_SYNC_METHOD_VENDOR, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %63 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i64 @nla_get_u8(%struct.nlattr* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @IEEE80211_PATH_PROTOCOL_VENDOR, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @IEEE80211_PATH_PROTOCOL_HWMP, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %82 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %64
  %84 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i64 @nla_get_u8(%struct.nlattr* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @IEEE80211_PATH_METRIC_VENDOR, align 4
  br label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @IEEE80211_PATH_METRIC_AIRTIME, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %101 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %83
  %103 = load i64, i64* @NL80211_MESH_SETUP_IE, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load i64, i64* @NL80211_MESH_SETUP_IE, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  store %struct.nlattr* %110, %struct.nlattr** %10, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %112 = call i32 @is_valid_ie_attr(%struct.nlattr* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %170

117:                                              ; preds = %107
  %118 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %119 = call i32 @nla_data(%struct.nlattr* %118)
  %120 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %121 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %123 = call i32 @nla_len(%struct.nlattr* %122)
  %124 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %125 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %117, %102
  %127 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_MPM, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %133 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NL80211_FEATURE_USERSPACE_MPM, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %131
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %170

142:                                              ; preds = %131, %126
  %143 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_MPM, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = call i8* @nla_get_flag(%struct.nlattr* %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %149 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_AUTH, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = call i8* @nla_get_flag(%struct.nlattr* %152)
  %154 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %155 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_AMPE, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = call i8* @nla_get_flag(%struct.nlattr* %158)
  %160 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %161 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %163 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %142
  %167 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %168 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %170

170:                                              ; preds = %169, %139, %114, %42, %28
  %171 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, i32, i32) #2

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @is_valid_ie_attr(%struct.nlattr*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_get_flag(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
