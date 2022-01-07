; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.zsHpPriv = type { i32*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@zgHpPriv = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_HP_CAP_11N = common dso_local global i32 0, align 4
@zcDKFwImage = common dso_local global i64 0, align 8
@zcDKFwImageSize = common dso_local global i64 0, align 8
@ZM_FIRMWARE_WLAN_ADDR = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4
@zcFwImage = common dso_local global i64 0, align 8
@zcFwImageSize = common dso_local global i64 0, align 8
@zcFwBufImage = common dso_local global i64 0, align 8
@zcFwBufImageSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpInit(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32* @zgHpPriv, i32** %9, align 8
  %10 = load i32, i32* @ZM_HP_CAP_11N, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.zsHpPriv*
  %15 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %14, i32 0, i32 20
  store i32 %10, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.zsHpPriv*
  %20 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %19, i32 0, i32 19
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.zsHpPriv*
  %25 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %24, i32 0, i32 18
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to %struct.zsHpPriv*
  %30 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %29, i32 0, i32 17
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.zsHpPriv*
  %35 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %34, i32 0, i32 16
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.zsHpPriv*
  %40 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to %struct.zsHpPriv*
  %47 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.zsHpPriv*
  %54 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %53, i32 0, i32 15
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to %struct.zsHpPriv*
  %59 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %58, i32 0, i32 14
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.zsHpPriv*
  %64 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.zsHpPriv*
  %69 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %68, i32 0, i32 2
  store i32 1048586, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to %struct.zsHpPriv*
  %74 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = bitcast i32* %77 to %struct.zsHpPriv*
  %79 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %78, i32 0, i32 12
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to %struct.zsHpPriv*
  %84 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %83, i32 0, i32 3
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to %struct.zsHpPriv*
  %89 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.zsHpPriv*
  %94 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %93, i32 0, i32 6
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = bitcast i32* %97 to %struct.zsHpPriv*
  %99 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @zfInitCmdQueue(i32* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @zfUsbInit(i32* %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %2
  %109 = load i32*, i32** %3, align 8
  %110 = load i64, i64* @zcDKFwImage, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i64, i64* @zcDKFwImageSize, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @ZM_FIRMWARE_WLAN_ADDR, align 4
  %115 = call i32 @zfFirmwareDownload(i32* %109, i32* %111, i32 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @ZM_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %108
  br label %132

120:                                              ; preds = %2
  %121 = load i32*, i32** %3, align 8
  %122 = load i64, i64* @zcFwImage, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i64, i64* @zcFwImageSize, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @ZM_FIRMWARE_WLAN_ADDR, align 4
  %127 = call i32 @zfFirmwareDownload(i32* %121, i32* %123, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @ZM_SUCCESS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %120
  br label %132

132:                                              ; preds = %131, %119
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @zfInitMac(i32* %138)
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @zfInitPhy(i32* %140, i32 %141, i32 0)
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @zfInitRf(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %137, %132
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @zfHpEchoCommand(i32* %147, i32 -1430532899)
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfInitCmdQueue(i32*) #1

declare dso_local i32 @zfUsbInit(i32*) #1

declare dso_local i32 @zfFirmwareDownload(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfInitMac(i32*) #1

declare dso_local i32 @zfInitPhy(i32*, i32, i32) #1

declare dso_local i32 @zfInitRf(i32*, i32) #1

declare dso_local i32 @zfHpEchoCommand(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
