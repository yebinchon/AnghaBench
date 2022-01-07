; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_Dot11d_UpdateCountryIe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_Dot11d_UpdateCountryIe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Channel List:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DOT11D_STATE_LEARNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dot11d_UpdateCountryIe(%struct.ieee80211_device* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @memset(i32* %25, i32 255, i32 %27)
  store i64 0, i64* %13, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 3
  %31 = sdiv i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = bitcast i64* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %14, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %105, %4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %108

40:                                               ; preds = %36
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %147

48:                                               ; preds = %40
  %49 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add i64 %53, %57
  %59 = icmp ult i64 %50, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %147

62:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %63

63:                                               ; preds = %97, %62
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %63
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32 1, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32 %82, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %70
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %63

100:                                              ; preds = %63
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %102 = bitcast %struct.TYPE_5__* %101 to i64*
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = bitcast i64* %103 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %14, align 8
  br label %105

105:                                              ; preds = %100
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %36

108:                                              ; preds = %36
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 1, i64* %10, align 8
  br label %110

110:                                              ; preds = %127, %108
  %111 = load i64, i64* %10, align 8
  %112 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ule i64 %111, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i64, i64* %10, align 8
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %123, %115
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %110

130:                                              ; preds = %110
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = call i32 @UPDATE_CIE_SRC(%struct.ieee80211_device* %132, i64* %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i64*, i64** %8, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @memcpy(i32 %140, i64* %141, i32 %142)
  %144 = load i32, i32* @DOT11D_STATE_LEARNED, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %130, %60, %46
  ret void
}

declare dso_local %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @UPDATE_CIE_SRC(%struct.ieee80211_device*, i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
