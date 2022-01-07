; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfGetMaxEdgePower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfGetMaxEdgePower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.ar5416Eeprom = type { i32 }

@wd = common dso_local global %struct.TYPE_5__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8
@AR5416_MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR5416_NUM_BAND_EDGES = common dso_local global i64 0, align 8
@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfGetMaxEdgePower(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zsHpPriv*, align 8
  %11 = alloca %struct.ar5416Eeprom*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.zsHpPriv*, %struct.zsHpPriv** %15, align 8
  store %struct.zsHpPriv* %16, %struct.zsHpPriv** %10, align 8
  %17 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %18 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 384
  %21 = bitcast i32* %20 to %struct.ar5416Eeprom*
  store %struct.ar5416Eeprom* %21, %struct.ar5416Eeprom** %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @ZM_CH_G_14, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %27

26:                                               ; preds = %3
  store i64 1, i64* %9, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i64, i64* @AR5416_MAX_RATE_POWER, align 8
  store i64 %28, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %101, %27
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @AR5416_NUM_BAND_EDGES, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %104

43:                                               ; preds = %41
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @fbin2freq(i64 %49, i64 %50)
  %52 = icmp eq i64 %44, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  br label %104

59:                                               ; preds = %43
  %60 = load i64, i64* %7, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %59
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @fbin2freq(i64 %68, i64 %69)
  %71 = icmp slt i64 %63, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %62
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = load i64, i64* %7, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @fbin2freq(i64 %78, i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %72
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %91, %83, %72
  br label %104

99:                                               ; preds = %62, %59
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %7, align 8
  br label %29

104:                                              ; preds = %98, %53, %41
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @AR5416_NUM_BAND_EDGES, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @fbin2freq(i64 %115, i64 %116)
  %118 = icmp sgt i64 %109, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %108
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = load i64, i64* %7, align 8
  %130 = sub i64 %129, 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %127, %119, %108
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i64, i64* %8, align 8
  %137 = icmp ugt i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @zm_assert(i32 %138)
  %140 = load i64, i64* %8, align 8
  ret i64 %140
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @fbin2freq(i64, i64) #1

declare dso_local i32 @zm_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
