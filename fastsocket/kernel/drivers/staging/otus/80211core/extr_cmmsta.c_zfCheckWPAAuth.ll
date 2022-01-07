; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfCheckWPAAuth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfCheckWPAAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.zsBssInfo = type { i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_ENCRYPTION_TKIP = common dso_local global i64 0, align 8
@ZM_TKIP = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_AES = common dso_local global i64 0, align 8
@ZM_AES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfCheckWPAAuth(i32* %0, %struct.zsBssInfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.zsBssInfo* %1, %struct.zsBssInfo** %4, align 8
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZM_ENCRYPTION_TKIP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ZM_TKIP, align 4
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ZM_AES, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %20
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %113 [
    i32 131, label %35
    i32 128, label %35
    i32 130, label %74
    i32 129, label %74
  ]

35:                                               ; preds = %30, %30
  %36 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %37 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %113

44:                                               ; preds = %35
  %45 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %46 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 12
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %69, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %56 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 4, %58
  %60 = add nsw i32 17, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %5, align 4
  br label %114

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %5, align 4
  br label %113

74:                                               ; preds = %30, %30
  %75 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %76 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %5, align 4
  br label %113

83:                                               ; preds = %74
  %84 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %85 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %108, %83
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %95 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 4, %97
  %99 = add nsw i32 13, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %5, align 4
  br label %114

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %89

111:                                              ; preds = %89
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %30, %111, %81, %72, %42
  br label %114

114:                                              ; preds = %113, %105, %66
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
