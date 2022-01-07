; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64, i64, i8*, i32 }

@ENVIRON_ANY = common dso_local global i32 0, align 4
@reg_mutex = common dso_local global i32 0, align 4
@IEEE80211_COUNTRY_IE_MIN_LEN = common dso_local global i32 0, align 4
@ENVIRON_INDOOR = common dso_local global i32 0, align 4
@ENVIRON_OUTDOOR = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulatory_hint_11d(%struct.wiphy* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulatory_request*, align 8
  %12 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ENVIRON_ANY, align 4
  store i32 %13, i32* %10, align 4
  %14 = call i32 @mutex_lock(i32* @reg_mutex)
  %15 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %15, %struct.regulatory_request** %12, align 8
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %17 = icmp ne %struct.regulatory_request* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %102

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %102

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IEEE80211_COUNTRY_IE_MIN_LEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %102

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %37, i8* %38, align 1
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 73
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @ENVIRON_INDOOR, align 4
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %33
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 79
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ENVIRON_OUTDOOR, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %60 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %66 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %102

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.regulatory_request* @kzalloc(i32 32, i32 %72)
  store %struct.regulatory_request* %73, %struct.regulatory_request** %11, align 8
  %74 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %75 = icmp ne %struct.regulatory_request* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %102

77:                                               ; preds = %71
  %78 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %79 = call i64 @get_wiphy_idx(%struct.wiphy* %78)
  %80 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %81 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %85 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %83, i8* %87, align 1
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %91 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %89, i8* %93, align 1
  %94 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %95 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %96 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %99 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %101 = call i32 @queue_regulatory_request(%struct.regulatory_request* %100)
  br label %102

102:                                              ; preds = %77, %76, %70, %32, %27, %22
  %103 = call i32 @mutex_unlock(i32* @reg_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i64 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
