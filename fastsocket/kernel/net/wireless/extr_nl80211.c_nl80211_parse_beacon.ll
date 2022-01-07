; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.cfg80211_beacon_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@NL80211_ATTR_BEACON_TAIL = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_IE_PROBE_RESP = common dso_local global i64 0, align 8
@NL80211_ATTR_IE_ASSOC_RESP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_BEACON_HEAD = common dso_local global i64 0, align 8
@NL80211_ATTR_PROBE_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.cfg80211_beacon_data*)* @nl80211_parse_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_beacon(%struct.genl_info* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.cfg80211_beacon_data*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @is_valid_ie_attr(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @NL80211_ATTR_IE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @is_valid_ie_attr(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @is_valid_ie_attr(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @is_valid_ie_attr(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33, %24, %15, %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %224

45:                                               ; preds = %33
  %46 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %47 = call i32 @memset(%struct.cfg80211_beacon_data* %46, i32 0, i32 96)
  %48 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %45
  %56 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @nla_data(i64 %61)
  %63 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %64 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %63, i32 0, i32 11
  store i8* %62, i8** %64, align 8
  %65 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @nla_len(i64 %70)
  %72 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %73 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %72, i32 0, i32 10
  store i8* %71, i8** %73, align 8
  %74 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %74, i32 0, i32 10
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %55
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %224

81:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %45
  %83 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %84 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %82
  %91 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %92 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @nla_data(i64 %96)
  %98 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %99 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %98, i32 0, i32 9
  store i8* %97, i8** %99, align 8
  %100 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @nla_len(i64 %105)
  %107 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %108 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %90, %82
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %224

115:                                              ; preds = %109
  %116 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %117 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @NL80211_ATTR_IE, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %115
  %124 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %125 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @NL80211_ATTR_IE, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @nla_data(i64 %129)
  %131 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %132 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %131, i32 0, i32 7
  store i8* %130, i8** %132, align 8
  %133 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %134 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @NL80211_ATTR_IE, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @nla_len(i64 %138)
  %140 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %141 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %123, %115
  %143 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %144 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %152 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @nla_data(i64 %156)
  %158 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  %160 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %161 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @nla_len(i64 %165)
  %167 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %168 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %150, %142
  %170 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %171 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %169
  %178 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %179 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @nla_data(i64 %183)
  %185 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %186 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %188 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @nla_len(i64 %192)
  %194 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %195 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %177, %169
  %197 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %198 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %196
  %205 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %206 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @nla_data(i64 %210)
  %212 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %213 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %215 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i8* @nla_len(i64 %219)
  %221 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %222 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %204, %196
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %112, %78, %42
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @is_valid_ie_attr(i64) #1

declare dso_local i32 @memset(%struct.cfg80211_beacon_data*, i32, i32) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
