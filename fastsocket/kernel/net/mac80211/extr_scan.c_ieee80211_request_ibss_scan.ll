; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_request_ibss_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_request_ibss_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.ieee80211_channel** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_request_ibss_scan(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %9, align 8
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %184

29:                                               ; preds = %4
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %31 = icmp ne %struct.ieee80211_channel* %30, null
  br i1 %31, label %124, label %32

32:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %108, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %111

37:                                               ; preds = %33
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %108

50:                                               ; preds = %37
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %104, %50
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %63
  %68 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i64 %81
  store %struct.ieee80211_channel* %82, %struct.ieee80211_channel** %15, align 8
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %84 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %87 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %67
  br label %104

92:                                               ; preds = %67
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %98, i64 %100
  store %struct.ieee80211_channel* %93, %struct.ieee80211_channel** %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %92, %91
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %63

107:                                              ; preds = %63
  br label %108

108:                                              ; preds = %107, %49
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %33

111:                                              ; preds = %33
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i64 @WARN_ON_ONCE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %184

118:                                              ; preds = %111
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  br label %147

124:                                              ; preds = %29
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %129 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = call i64 @WARN_ON_ONCE(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %184

135:                                              ; preds = %124
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %137 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %138 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %140, align 8
  %142 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %141, i64 0
  store %struct.ieee80211_channel* %136, %struct.ieee80211_channel** %142, align 8
  %143 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %135, %118
  %148 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %148, i32 0, i32 2
  %150 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %151 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %153, align 8
  %154 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %155 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %159 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %168 = call i32 @memcpy(i32 %165, i32* %166, i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %171 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 %169, i32* %176, align 4
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %179 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %178, i32 0, i32 0
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %179, align 8
  %181 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = call i32 @__ieee80211_start_scan(%struct.ieee80211_sub_if_data* %177, %struct.TYPE_10__* %182)
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %147, %134, %117, %28
  %185 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %186 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__ieee80211_start_scan(%struct.ieee80211_sub_if_data*, %struct.TYPE_10__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
