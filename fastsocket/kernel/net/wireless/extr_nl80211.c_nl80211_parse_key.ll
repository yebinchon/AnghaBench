; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_parse_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.key_parse = type { i32, i32, i64, i64, i32, i64 }

@NL80211_ATTR_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.key_parse*)* @nl80211_parse_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_key(%struct.genl_info* %0, %struct.key_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.key_parse*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.key_parse* %1, %struct.key_parse** %5, align 8
  %7 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %8 = call i32 @memset(%struct.key_parse* %7, i32 0, i32 40)
  %9 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %10 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %12 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %11, i32 0, i32 1
  store i32 -1, i32* %12, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NL80211_ATTR_KEY, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_KEY, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %28 = call i32 @nl80211_parse_key_new(i64 %26, %struct.key_parse* %27)
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %31 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %32 = call i32 @nl80211_parse_key_old(%struct.genl_info* %30, %struct.key_parse* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %20
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %130

38:                                               ; preds = %33
  %39 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %40 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %45 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %130

51:                                               ; preds = %43, %38
  %52 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %53 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %58 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %63 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %72 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  %76 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %77 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %82 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %87 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 5
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %80
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %130

93:                                               ; preds = %85
  br label %128

94:                                               ; preds = %75
  %95 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %96 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %101 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %106 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %112

109:                                              ; preds = %104, %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %130

112:                                              ; preds = %104
  br label %127

113:                                              ; preds = %94
  %114 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %115 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %120 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 5
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %113
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %130

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %93
  br label %129

129:                                              ; preds = %128, %70
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %123, %109, %90, %66, %48, %36
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.key_parse*, i32, i32) #1

declare dso_local i32 @nl80211_parse_key_new(i64, %struct.key_parse*) #1

declare dso_local i32 @nl80211_parse_key_old(%struct.genl_info*, %struct.key_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
