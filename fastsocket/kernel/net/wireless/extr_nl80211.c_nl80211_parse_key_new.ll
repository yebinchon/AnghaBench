; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_key_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_key_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.key_parse = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@NL80211_KEY_MAX = common dso_local global i32 0, align 4
@nl80211_key_policy = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_MGMT = common dso_local global i64 0, align 8
@NL80211_KEY_IDX = common dso_local global i64 0, align 8
@NL80211_KEY_DATA = common dso_local global i64 0, align 8
@NL80211_KEY_SEQ = common dso_local global i64 0, align 8
@NL80211_KEY_CIPHER = common dso_local global i64 0, align 8
@NL80211_KEY_TYPE = common dso_local global i64 0, align 8
@NUM_NL80211_KEYTYPES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT_TYPES = common dso_local global i64 0, align 8
@NUM_NL80211_KEY_DEFAULT_TYPES = common dso_local global i32 0, align 4
@nl80211_key_default_policy = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT_TYPE_UNICAST = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_TYPE_MULTICAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.key_parse*)* @nl80211_parse_key_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_key_new(%struct.nlattr* %0, %struct.key_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.key_parse*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.key_parse* %1, %struct.key_parse** %5, align 8
  %12 = load i32, i32* @NL80211_KEY_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @NL80211_KEY_MAX, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %19 = load i32, i32* @nl80211_key_policy, align 4
  %20 = call i32 @nla_parse_nested(%struct.nlattr** %16, i32 %17, %struct.nlattr* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %192

25:                                               ; preds = %2
  %26 = load i64, i64* @NL80211_KEY_DEFAULT, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %34 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @NL80211_KEY_DEFAULT_MGMT, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %43 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %45 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %25
  %49 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %50 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %52 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %25
  %54 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %55 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %60 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i64, i64* @NL80211_KEY_IDX, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, i64* @NL80211_KEY_IDX, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_u8(%struct.nlattr* %69)
  %71 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %72 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i64, i64* @NL80211_KEY_DATA, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i64, i64* @NL80211_KEY_DATA, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_data(%struct.nlattr* %81)
  %83 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %84 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load i64, i64* @NL80211_KEY_DATA, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_len(%struct.nlattr* %88)
  %90 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %91 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %78, %73
  %94 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i8* @nla_data(%struct.nlattr* %101)
  %103 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %104 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  %106 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i8* @nla_len(%struct.nlattr* %108)
  %110 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %111 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %98, %93
  %114 = load i64, i64* @NL80211_KEY_CIPHER, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i64, i64* @NL80211_KEY_CIPHER, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i8* @nla_get_u32(%struct.nlattr* %121)
  %123 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %124 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load i64, i64* @NL80211_KEY_TYPE, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i64, i64* @NL80211_KEY_TYPE, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i8* @nla_get_u32(%struct.nlattr* %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %138 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %140 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %131
  %144 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %145 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @NUM_NL80211_KEYTYPES, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143, %131
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %192

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i64, i64* @NL80211_KEY_DEFAULT_TYPES, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %191

158:                                              ; preds = %153
  %159 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %160 = zext i32 %159 to i64
  %161 = call i8* @llvm.stacksave()
  store i8* %161, i8** %10, align 8
  %162 = alloca %struct.nlattr*, i64 %160, align 16
  store i64 %160, i64* %11, align 8
  %163 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load i64, i64* @NL80211_KEY_DEFAULT_TYPES, align 8
  %166 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %165
  %167 = load %struct.nlattr*, %struct.nlattr** %166, align 8
  %168 = load i32, i32* @nl80211_key_default_policy, align 4
  %169 = call i32 @nla_parse_nested(%struct.nlattr** %162, i32 %164, %struct.nlattr* %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %187

174:                                              ; preds = %158
  %175 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_UNICAST, align 8
  %176 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %162, i64 %175
  %177 = load %struct.nlattr*, %struct.nlattr** %176, align 8
  %178 = ptrtoint %struct.nlattr* %177 to i32
  %179 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %180 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_MULTICAST, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %162, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = ptrtoint %struct.nlattr* %183 to i32
  %185 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %186 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %174, %172
  %188 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %9, align 4
  switch i32 %189, label %192 [
    i32 0, label %190
  ]

190:                                              ; preds = %187
  br label %191

191:                                              ; preds = %190, %153
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %192

192:                                              ; preds = %191, %187, %149, %23
  %193 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i8* @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
