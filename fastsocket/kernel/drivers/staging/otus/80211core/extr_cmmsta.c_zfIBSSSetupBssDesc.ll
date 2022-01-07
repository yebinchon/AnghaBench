; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfIBSSSetupBssDesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfIBSSSetupBssDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i64, i32*, i64, %struct.zsBssInfo }
%struct.zsBssInfo = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i64, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@ZM_AUTH_MODE_WPA2PSK = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_AES = common dso_local global i64 0, align 8
@ZM_WLAN_EID_RSN_IE = common dso_local global i32 0, align 4
@zgWpa2AesOui = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfIBSSSetupBssDesc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsBssInfo*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store %struct.zsBssInfo* %9, %struct.zsBssInfo** %3, align 8
  %10 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %11 = bitcast %struct.zsBssInfo* %10 to i32*
  %12 = call i32 @zfZeroMemory(i32* %11, i32 80)
  %13 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %14 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %13, i32 0, i32 0
  store i32 100, i32* %14, align 8
  %15 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %16 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @zfMemoryCopy(i32* %18, i32* %22, i32 6)
  %24 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %25 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @zfMemoryCopy(i32* %27, i32* %32, i32 6)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %38 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 8
  %45 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %46 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %56 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %66 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %70 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %71 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %79 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %83 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @zfMemoryCopy(i32* %85, i32* %90, i32 %94)
  %96 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %97 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %4, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %102 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 2
  %109 = call i32 @zfMemoryCopy(i32* %100, i32* %103, i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %4, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %4, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @zfChFreqToNum(i32 %120, i32* null)
  %122 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %123 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %128 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %134 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfZeroMemory(i32*, i32) #1

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zfChFreqToNum(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
