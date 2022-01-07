; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_dot11d.c_Dot11d_UpdateCountryIe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_dot11d.c_Dot11d_UpdateCountryIe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\0A\00", align 1
@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
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
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 3
  %19 = srem i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %24 = call i32 @Dot11d_Reset(%struct.ieee80211_device* %23)
  br label %160

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @memset(i32* %28, i32 0, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @memset(i32* %34, i32 255, i32 %36)
  store i64 0, i64* %13, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 3
  %40 = sdiv i32 %39, 3
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %12, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = bitcast i64* %43 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %14, align 8
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %118, %25
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %58 = call i32 @Dot11d_Reset(%struct.ieee80211_device* %57)
  br label %160

59:                                               ; preds = %49
  %60 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %64, %68
  %70 = icmp ult i64 %61, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %74 = call i32 @Dot11d_Reset(%struct.ieee80211_device* %73)
  br label %160

75:                                               ; preds = %59
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %77, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %76
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %89, %90
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %101, %102
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32 %95, i32* %104, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %107, %108
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %83
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %76

113:                                              ; preds = %76
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %115 = bitcast %struct.TYPE_5__* %114 to i64*
  %116 = getelementptr inbounds i64, i64* %115, i64 3
  %117 = bitcast i64* %116 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %14, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %45

121:                                              ; preds = %45
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 1, i64* %10, align 8
  br label %123

123:                                              ; preds = %140, %121
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ule i64 %124, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i64, i64* %10, align 8
  %138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %136, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %123

143:                                              ; preds = %123
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %145 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %146 = load i64*, i64** %6, align 8
  %147 = call i32 @UPDATE_CIE_SRC(%struct.ieee80211_device* %145, i64* %146)
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i64*, i64** %8, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @memcpy(i32 %153, i64* %154, i32 %155)
  %157 = load i32, i32* @DOT11D_STATE_LEARNED, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %143, %71, %55, %21
  ret void
}

declare dso_local %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @Dot11d_Reset(%struct.ieee80211_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UPDATE_CIE_SRC(%struct.ieee80211_device*, i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
