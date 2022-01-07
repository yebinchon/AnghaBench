; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlTxFailEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlTxFailEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i64*, i64, i64 }
%struct.zsRcCell = type { i64, i64, i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MIN_RATE_FAIL_COUNT = common dso_local global i64 0, align 8
@PERThreshold = common dso_local global i64* null, align 8
@ZM_RC_TRAINED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfRateCtrlTxFailEvent(i32* %0, %struct.zsRcCell* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsRcCell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %17 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %21
  store i32 %28, i32* %26, align 4
  br label %201

29:                                               ; preds = %14, %4
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @zfRateCtrlRateDiff(%struct.zsRcCell* %33, i64 %35)
  %37 = add nsw i32 %36, 1
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %40 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %41, 12
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %51 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %59 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %54
  store i32 %63, i32* %61, align 4
  %64 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %65 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ZM_MIN_RATE_FAIL_COUNT, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %200

69:                                               ; preds = %47
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %74 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %69
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %84 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 100
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %93 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %88, %96
  %98 = call i64 @zm_agg_min(i32 100, i32 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %103 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  store i64 %98, i64* %105, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %110 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %79
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %120 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %115, %79
  br label %126

126:                                              ; preds = %125, %69
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %131 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** @PERThreshold, align 8
  %136 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %137 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %134, %140
  br i1 %141, label %142, label %199

142:                                              ; preds = %126
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %145 = call i32 @zfRateCtrlNextLowerRate(i32* %143, %struct.zsRcCell* %144)
  %146 = load i32, i32* @ZM_RC_TRAINED_BIT, align 4
  %147 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %148 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %152 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 15
  br i1 %154, label %155, label %162

155:                                              ; preds = %142
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @zmw_leave_critical_section(i32* %156)
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @zfHpSetAggPktNum(i32* %158, i32 8)
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @zmw_enter_critical_section(i32* %160)
  br label %162

162:                                              ; preds = %155, %142
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %167 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %176 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %171, i32* %178, align 4
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %183 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.zsRcCell*, %struct.zsRcCell** %6, align 8
  %192 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %187, i32* %194, align 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %162, %126
  br label %200

200:                                              ; preds = %199, %47
  br label %201

201:                                              ; preds = %200, %20
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfRateCtrlRateDiff(%struct.zsRcCell*, i64) #1

declare dso_local i64 @zm_agg_min(i32, i32) #1

declare dso_local i32 @zfRateCtrlNextLowerRate(i32*, %struct.zsRcCell*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfHpSetAggPktNum(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
